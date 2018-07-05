import re
import argparse



class Inject:
	def __init__(self, location, text):
		self.location = location
		self.text = text
class Param:
	def __init__(self, name, value):
		self.name = name
		self.value = value

class Method:
	def __init__(self,start, end,linearray ):
		self.start = start
		self.end = end
		self.array = linearray

	def get_param(self, original_smali):
		param_array =[]
		ret_string = ''
		for element in self.array:
			if '.param p' in element:
				if 'java/lang/String' in element:
					start = element.find('.param')
					name = element[start + 7:element.find(',')]
					value = element[element.find(',')+1:element.find('#')].replace('\"','')
					param_array.append(Param(name,value))
			if '.prologue' in element:
				break
		method_name = self.array[0].replace('\"','').replace('\'','')
		method_name = method_name[method_name.rfind(' '):method_name.find('(')]
		class_name = original_smali[0][original_smali[0].rfind('/')+1:original_smali[0].find(';')]

		if not param_array:
			if '.locals 0' in self.array[1]:
				ret_string += '###.locals 0### not injected' #has .locals 0
			else:
				ret_string += self.get_inject_string(method_name,'v0',class_name)
		else:
			for i in param_array:
				ret_string+=self.get_inject_string(method_name+'<--'+i.value,i.name.replace(' ',''), class_name)
		return ret_string

	def get_name(self):
		self.get_param()
		return self.array[0][8:self.array[0].find('()')]

	def get_inject_string(self,method_name,parameter_name,class_name):
		method_name = method_name.replace(' ','')
		str = ""
		str += '#################INJECT_SMALI\n'
		str += 'const-string v0, "<class_name>.<method_name>"\n'
		str += 'invoke-static {v0, <parameter_name>}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n'
		str += '################END_INJECT\n'
		str = str.replace('<method_name>', method_name)
		str = str.replace('<parameter_name>',parameter_name)
		str = str.replace('<class_name>',class_name)
		return str


class Utilities:
	# Common seperator line for the application
	seperator_single_line = '------------------------------------------------------------'
	seperator_double_line = '============================================================'

	red_color = '\033[1;31m'
	blue_color = '\033[34m'
	green_color = '\033[1;32m'
	purple_color = '\033[35m'
	end_color = '\033[0m'

	def print_color(self,text,color):
		if color == 'red':
			print (self.red_color + text + self.end_color)
		if color == 'blue':
			print (self.blue_color + text + self.end_color)
		if color == 'purple':
			print (self.purple_color + text + self.end_color)
		if color == 'green':
			print (self.green_color + text + self.end_color)

	def read_file(self,file_name):
		return_file_content = ''
		try:
			file = open(file_name,'r')
			return_file_content = file.read()
			file.close()
		except Exception as e:
			self.print_color('[!] Error: Cannot open the file: ' +file_name ,'red')
			self.print_color(str(e),'red')
		return return_file_content
	def write_smali_file(self,file_name, original, insert_array):
		if file_name:
			self.print_color('[+] Writing file at location: ' +file_name ,'green')
		else:
			file_name = "./output.smali"
			self.print_color('[+] Writing file to default location: ' +file_name ,'green')
		orcounter = 0;
		with open(file_name,"w") as file:
			for line in original:
				for insert in insert_array:
					if orcounter == insert.location:
						file.write(insert.text + '\n')
				file.write(line + "\n")
				orcounter +=1
			file.close()


	def __init__(self):
		self.name = 'static class'

class Core:
	ip_address = ''
	current_test = ''
	url = ''


class Main:
	def __init__(self,utilities):
		global args
		print 'Start'
		parser = argparse.ArgumentParser('File Reader')
		parser.add_argument("-if","--file",type=str,help="File path to SMALI file")
		parser.add_argument("-of","--output_file",type=str,help="Output file of injected SMALI file")
		parser.add_argument("-cs","--compile_sign",type=str,help="Compile/Sign the target SMALI source")
		args = parser.parse_args()


	def _process_smali_file(self):
		smali_content = utilities.read_file(args.file)
		original = smali_content.split('\n');
		splitdoc = smali_content.split('\n');
		method = ""
		insert_array = []
		counter = 0
		for line in splitdoc:
			if ".method" in line:
				method +=  str(counter) + '-'
			if ".end method" in line:
				method += str(counter) + ','
			counter += 1

		method_list = []
		for m in method.split(','):
			if m:
				loc= m.split("-")
				st = int(loc[0])
				en = int(loc[1])
				method_list.append( Method(st,en, splitdoc[st:en] ))
		for method in method_list:
			utilities.print_color('[->] ' +method.array[0] ,'green')
			prologue_counter = 0;
			for i in method.array:
				prologue_counter += 1;
				if ".prologue" in i:
					insert_array.append(Inject(prologue_counter + method.start -1, method.get_param(original)))
		orcounter = 0;
		utilities.write_smali_file(args.output_file, original, insert_array)

	def start(self):
		try:
			# Print application banner
			if args.file:
				self._process_smali_file()
			elif args.compile_sign:
				utilities.print_color('[+] Compiling an','blue')


		except KeyboardInterrupt:
			print "Exiting Application ..."
			exit(0)
		except Exception,e:
			print str(e)
			exit(0)

if __name__ == '__main__':
	utilities = Utilities()
	main = Main(utilities)
	main.start()

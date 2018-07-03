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

	def get_param(self):
		param_array =[]
		ret_string = ''
		for element in self.array:
			if '.param p' in element:
				if 'java/lang/String' in element:
					start = element.find('.param')
					name = element[start + 7:element.find(',')]
					value = element[element.find(',')+1:element.find('#')].replace('\"','')
					print(name + '-' + value)
					param_array.append(Param(name,value))
			if '.prologue' in element:
				break

		method_name = self.array[0].replace('\"','').replace('\'','')
		method_name = method_name[:method_name.find('(')]

		if not param_array:
			ret_string += self.get_inject_string('v0',method_name)
		else:
			for i in param_array:
				ret_string+=self.get_inject_string(i.name.replace(' ',''),method_name+'->'+i.value)
		return ret_string

	def get_name(self):
		self.get_param()
		return self.array[0][8:self.array[0].find('()')]

	def get_inject_string(self,method_name,parameter_name):
		str = ""
		str += '################INJECT_SMALI\n'
		str += 'const-string v0, "<parameter_name>"\n'
		str += 'invoke-static {v0, <method_name>}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n'
		str += '################END_INJECT\n'
		str = str.replace('<method_name>', method_name)
		str = str.replace('<parameter_name>',parameter_name)
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
		#print method
		method_list = []
		for m in method.split(','):
			if m:
				loc= m.split("-")
				st = int(loc[0])
				en = int(loc[1])
				method_list.append( Method(st,en, splitdoc[st:en] ))
		for method in method_list:
			prologue_counter = 0;
			for i in method.array:
				prologue_counter += 1;
				if ".prologue" in i:
					insert_array.append(Inject(prologue_counter + method.start -1, method.get_param()))
		orcounter = 0;
		with open("./output.smali","w") as file:
			for line in original:

				for insert in insert_array:
					if orcounter == insert.location:
						file.write(insert.text + '\n')

				file.write(line + "\n")
				orcounter +=1
			file.close()
			print("filesaved...")


	def start(self):
		try:
			# Print application banner
			self._process_smali_file()
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

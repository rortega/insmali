import re
import argparse
import subprocess
import sys
import os



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
				if 'java/lang/String;' in element:
					start = element.find('.param')
					name = element[start + 7:element.find(',')]
					value = element[element.find(',')+1:element.find('#')].replace('\"','')
					param_array.append(Param(name,value))
			if '.prologue' in element:
				break
		method_name = self.array[0].replace('\"','').replace('\'','')
		method_name = method_name[method_name.rfind(' '):method_name.find('(')]
		class_name = original_smali[0][original_smali[0].rfind('/')+1:original_smali[0].find(';')]

		if '.locals 0' in self.array[1]:
			ret_string += '###.locals 0### not injected' #has .locals 0  - do nothing at the moment
		else:
			if not param_array:# Method does not have any paramters passed
				ret_string += self.get_inject_string(method_name,'v0',class_name)
			else:
				for i in param_array:# for the moment, will only print java.lang.String objects
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
			self.print_color('(!) Error: Cannot open the file: ' +file_name ,'red')
			self.print_color(str(e),'red')
		return return_file_content
	def write_smali_file(self,file_name, original, insert_array):
		if file_name:
			self.print_color('(+) Writing file at location: ' +file_name ,'blue')
		else:
			file_name = "./output.smali"
			self.print_color('(+) Writing file to default location: ' +file_name ,'blue')
		orcounter = 0;
		with open(file_name,"w") as file:
			for line in original:
				for insert in insert_array:
					if orcounter == insert.location:
						file.write(insert.text + '\n')
				file.write(line + "\n")
				orcounter +=1
			file.close()
		self.print_color('(+) Completed Writing file to location: ' +file_name ,'blue')





	def compile_smali_path(self):
		path_to_inapk = "./smali/base/dist/base.apk"
		path_to_base = "./smali/base/"
		print "(-0-) Building the injected SMALI"
		command = ["apktool", "--version"]
		p = subprocess.Popen(command, stdout=subprocess.PIPE)
		sub_response = p.communicate()[0]
		if '.' not in sub_response:
			self.print_color('(!) APKTOOL Was not found, INSTALL APKTOOL 2 AND ADD TO PATH ' ,'red')
			sys.exit()

		build_command =  ["apktool","b",path_to_base]
		self.print_color("(*) EXECUTING APKTOOL BUILD COMMAND..." ,'blue')
		self.print_color('(+) Building the following path: ' + path_to_base ,'blue')
		p = subprocess.Popen(build_command, stdout=subprocess.PIPE)
		build_result = p.communicate()[0]
		print build_result

		if "Exception" in build_result:
			self.print_color("Exception:"+build_result ,'red')
			exit(0)
		self.print_color("(*)  Enter 'password' to sign..." ,'blue')
		stringJarSignerCommand=["jarsigner", "-keystore", "./sign/debug.keystore", path_to_inapk, "signkey", "-sigalg", "MD5withRSA", "-digestalg", "SHA1"]
		p = subprocess.Popen(stringJarSignerCommand, stdout=subprocess.PIPE)
		jarsignerResult = p.communicate()[0]
		print jarsignerResult
		self.print_color("(+)  Installing the apk on the device" ,'blue')
		install_command=["adb", "install", "-r", "./smali/base/dist/base.apk"]
		p = subprocess.Popen(install_command, stdout=subprocess.PIPE)
		response = p.communicate()[0]
		print response
		self.print_color("(+) " + response,'blue')


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
		parser.add_argument("-of","--output_file",type=str,help="Output file of injected SMALI file. Use the arvument '-of same' to inject the file provided in the '-if' argument ")
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
		print args.file
		if 'same' in args.output_file:
			utilities.write_smali_file(args.file, original, insert_array)
		else:
			utilities.write_smali_file(args.output_file, original, insert_array)


	def start(self):
		try:
			# Print application banner
			if args.file:
				utilities.print_color('(_*_) Injecting the provided SMALI','blue')
				self._process_smali_file()
			elif args.compile_sign:
				utilities.print_color('(+) Compiling an','blue')
				utilities.compile_smali_path()


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

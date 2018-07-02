import re

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

file = open('/users/rortega/desktop/sample.smali','r')
content = file.read()


original = content.split('\n');
splitdoc = content.split('\n');

method = ""
insert_array = []

counter = 0
for line in splitdoc:
	if ".method" in line:
		method +=  str(counter) + '-'
	if ".end method" in line:
		method += str(counter) + ','
	counter += 1
print method

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
with open("/users/rortega/desktop/tmp.txt","w") as file:
	for line in original:

		for insert in insert_array:
			if orcounter == insert.location:
				file.write(insert.text + '\n')

		file.write(line + "\n")
		orcounter +=1
	file.close()
	print("filesaved...")

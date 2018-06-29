#?https://github.com/sensepost/kwetza/blob/master/kwetza.py

import re



class Inject:
	def __init__(self, location, text):
		self.location = location
		self.text = text


class Method:
	def __init__(self,start, end,linearray ):
		self.start = start
		self.end = end
		self.array = linearray

	def get_name(self):
		print self.array[0]
		print self.array[0][self.array[0].find('('):self.array[0].find(')')+1]
		re.compile('')

		str = ""
		str += '##STR_TROJAN\n'
		str += 'const-string v0, "encrypt()- value"\n'
		str += 'invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n'
		str += '##END_TROJAN\n'
		return str

file = open('sample.smali','r')
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
			insert_array.append(Inject(prologue_counter + method.start -1, method.get_name()))


orcounter = 0;
with open("tmp.txt","w") as file:
	for line in original:

		for insert in insert_array:
			if orcounter == insert.location:
				file.write(insert.text + '\n')

		file.write(line + "\n")
		orcounter +=1
	file.close()
	print("filesaved...")

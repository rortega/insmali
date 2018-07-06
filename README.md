# insmali
insmali will inject an existing SMALI file with Log methods. This can be used for debugging and profiling an existing android applicaiton. 


$python smaliparser.py -cs c
$python smaliparser.py -if ./path/to/SecureSharedPreferences.smali -of same

For instance, consider the code used to encrypt shared preference:
method protected encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0
   
 insmali will add the lines of code to print the values passed to the encrypt method:  
   
  method protected encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.encrypt<--value"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT
#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.encrypt<--name"
invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 191
    if-eqz p1, :cond_0 


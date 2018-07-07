# insmali
insmali will inject an existing SMALI file with Log methods. This can be used for debugging and profiling an existing android application.This shell script is provided as-is without warranty of any kind and is intended for educational purposes only.

To use, point to a SMALI file:
    
    
    $python smaliparser.py -if ./path/to/SecureSharedPreferences.smali -of same

You can then compile/sign the code by using apktool/jarsigner or run the following:

    $python smaliparser.py -cs c

For instance, consider the method used to encrypt shared preference:

    method protected encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

 insmali will add the lines of code to print the parameters passed to the encrypt method:  

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

Once injected, you can view (logcat) the parameters passed to the encrypt method as shown below:

     07-04 13:13:35.508 17175-17175/? E/SecureSharedPreferences.encrypt<--value: true
     07-04 13:13:35.508 17175-17175/? E/SecureSharedPreferences.encrypt<--name: IS_PHONE
     07-04 13:13:35.548 17175-17175/? E/SecureSharedPreferences.getString<--key: URL
     07-04 13:13:35.548 17175-17175/? E/SecureSharedPreferences.decrypt<--value: idYwLRDj8=
     07-04 13:13:35.548 17175-17175/? E/SecureSharedPreferences.decrypt<--name: URL
     07-04 13:13:35.558 17175-17175/? E/SecureSharedPreferences.getString<--key: LOGIN_ERROR_MSG

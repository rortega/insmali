.class public Lcom/infor/xm/android/common/SecureSharedPreferences;
.super Ljava/lang/Object;
.source "SecureSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infor/xm/android/common/SecureSharedPreferences$Editor;
    }
.end annotation


# static fields
.field private static final SECRET_ALGORITHM:Ljava/lang/String; = "PBEWithMD5AndDES"

.field private static final SECRET_KEY:[C

.field protected static final UTF8:Ljava/lang/String; = "utf-8"


# instance fields
.field protected context:Landroid/content/Context;

.field protected delegate:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.<clinit>"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 24
    const/16 v0, 0x26

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/infor/xm/android/common/SecureSharedPreferences;->SECRET_KEY:[C

    return-void

    :array_0
    .array-data 2
        0x49s
        0x6es
        0x66s
        0x6fs
        0x72s
        0x45s
        0x78s
        0x70s
        0x65s
        0x6es
        0x73s
        0x65s
        0x4ds
        0x61s
        0x6es
        0x61s
        0x67s
        0x65s
        0x6ds
        0x65s
        0x6es
        0x74s
        0x41s
        0x6es
        0x64s
        0x72s
        0x6fs
        0x69s
        0x64s
        0x4ds
        0x6fs
        0x62s
        0x69s
        0x6cs
        0x65s
        0x41s
        0x70s
        0x70s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Landroid/content/SharedPreferences;

###.locals 0### not injected
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    .line 36
    iput-object p1, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->context:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.contains<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 174
    iget-object v0, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.decrypt<--value"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT
#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.decrypt<--name"
invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 207
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 208
    .local v0, "bytes":[B
    :goto_0
    const-string v5, "PBEWithMD5AndDES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 209
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/infor/xm/android/common/SecureSharedPreferences;->SECRET_KEY:[C

    invoke-direct {v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 210
    .local v2, "key":Ljavax/crypto/SecretKey;
    const-string v5, "PBEWithMD5AndDES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 211
    .local v4, "pbeCipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v8, 0x14

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v4, v5, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 212
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v5

    .line 216
    .end local v0    # "bytes":[B
    .end local v2    # "key":Ljavax/crypto/SecretKey;
    .end local v3    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "pbeCipher":Ljavax/crypto/Cipher;
    .end local p1    # "value":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 207
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    new-array v0, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Decrypt failed for key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/infor/xm/android/common/DeveloperLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.edit"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/infor/xm/android/common/SecureSharedPreferences;->edit()Lcom/infor/xm/android/common/SecureSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/infor/xm/android/common/SecureSharedPreferences$Editor;
    .locals 1

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.edit"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 116
    new-instance v0, Lcom/infor/xm/android/common/SecureSharedPreferences$Editor;

    invoke-direct {v0, p0}, Lcom/infor/xm/android/common/SecureSharedPreferences$Editor;-><init>(Lcom/infor/xm/android/common/SecureSharedPreferences;)V

    return-object v0
.end method

.method protected encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    .local v0, "bytes":[B
    :goto_0
    const-string v5, "PBEWithMD5AndDES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 193
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/infor/xm/android/common/SecureSharedPreferences;->SECRET_KEY:[C

    invoke-direct {v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 194
    .local v2, "key":Ljavax/crypto/SecretKey;
    const-string v5, "PBEWithMD5AndDES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 195
    .local v4, "pbeCipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v8, 0x14

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v4, v5, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 196
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v5

    .line 200
    .end local v0    # "bytes":[B
    .end local v2    # "key":Ljavax/crypto/SecretKey;
    .end local v3    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "pbeCipher":Ljavax/crypto/Cipher;
    .end local p1    # "value":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 191
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    new-array v0, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encrypt failed for key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/infor/xm/android/common/DeveloperLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getAll"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getBoolean<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 121
    iget-object v1, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/infor/xm/android/common/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getFloat<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 127
    iget-object v1, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/infor/xm/android/common/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .end local p2    # "defValue":F
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getInt<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 133
    iget-object v1, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/infor/xm/android/common/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getLong<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 139
    iget-object v1, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/infor/xm/android/common/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getString<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT
#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getString<--defValue"
invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 151
    iget-object v1, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/infor/xm/android/common/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.getStringSet<--key"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 158
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 159
    .local v1, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 169
    .end local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 163
    .restart local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 164
    .local v2, "strs":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 167
    aget-object v3, v2, v0

    invoke-virtual {p0, v3, p1}, Lcom/infor/xm/android/common/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 169
    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.registerOnSharedPreferenceChangeListener"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 179
    iget-object v0, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 180
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

#################INJECT_SMALI
const-string v0, "SecureSharedPreferences.unregisterOnSharedPreferenceChangeListener"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 184
    iget-object v0, p0, Lcom/infor/xm/android/common/SecureSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 185
    return-void
.end method


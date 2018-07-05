.class public Lcom/infor/xm/android/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infor/xm/android/activity/MainActivity$LoginThread;
    }
.end annotation


# static fields
.field public static final FILE_CHOOSER_REQUEST_CODE:I = 0x8

.field public static final MAX_JS_WAIT_TIME:I = 0xc8

.field public static final RECEIPTS_DATA_KEY:Ljava/lang/String; = "RECEIPTS_DATA"

.field public static final SECURITY_CHECK_KEY:Ljava/lang/String; = "j_security_check"

.field public static final SETTINGS_FROM_HTML_REQUEST_CODE:I = 0x9

.field public static final SSO_TOKEN_KEY:Ljava/lang/String; = "sso.userToken="

.field public static final UPLOAD_RECEIPTS_END:I = 0x5

.field public static final UPLOAD_RECEIPTS_REQUEST_CODE:I = 0x6

.field public static final UPLOAD_RECEIPTS_RESULT_CODE:I = 0x7

.field public static final UPLOAD_RECEIPTS_START:I = 0x3

.field public static final UPLOAD_RECEIPTS_STEP:I = 0x4

.field public static final XM_LOGIN_FAILED:I = 0x0

.field public static final XM_LOGIN_READY:I = 0x1

.field public static final XM_LOGIN_STEP:I = 0x2

.field public static final XM_NATIVE_ANDROID_PAD:Ljava/lang/String; = "xm-native Android Pad"

.field public static final XM_NATIVE_ANDROID_PHONE:Ljava/lang/String; = "xm-native Android Phone"

.field public static final XM_NATIVE_PRINT_URL:Ljava/lang/String; = "xmnative/printPage"

.field public static final XM_NATIVE_SETTINGS_URL:Ljava/lang/String; = "xmnative/settings"


# instance fields
.field private backRadioBtn:Landroid/widget/RadioButton;

.field private cameraMenuBar:Landroid/widget/LinearLayout;

.field private cameraRadioBtn:Landroid/widget/RadioButton;

.field private capturedImageFile:Ljava/io/File;

.field private downloadManager:Landroid/app/DownloadManager;

.field private evalJsMethod:Ljava/lang/reflect/Method;

.field private expenseRadioBtn:Landroid/widget/RadioButton;

.field private expenseUrl:Ljava/lang/String;

.field private fileUploadCB:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private hideWebView:Landroid/webkit/WebView;

.field private inboxRadioBtn:Landroid/widget/RadioButton;

.field private jsInterface:Lcom/infor/xm/android/common/JsInterface;

.field private lineItemId:Ljava/lang/String;

.field private loginHandler:Landroid/os/Handler;

.field private mCameraFilePath:Ljava/lang/String;

.field private menuBtnCamera:Landroid/widget/Button;

.field private menuBtnCameraRoll:Landroid/widget/Button;

.field private needInit:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressMsgKey:Ljava/lang/String;

.field private receiptsAuthUrl:Ljava/lang/String;

.field private receiptsRadioBtn:Landroid/widget/RadioButton;

.field private receiptsToken:Ljava/lang/String;

.field private receiptsUrl:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field public sslHandler:Landroid/os/Handler;

.field private timesheetRadioBtn:Landroid/widget/RadioButton;

.field private timesheetUrl:Ljava/lang/String;

.field private toolBar:Landroid/widget/RadioGroup;

.field private totalCount:I

.field private trackingNumber:Ljava/lang/String;

.field private uploadCloseButton:Landroid/widget/ImageView;

.field private uploadLayout:Landroid/widget/LinearLayout;

.field private uploadProgressMsg:Landroid/widget/TextView;

.field private uploadReceiptsUrl:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private xmPassword:Ljava/lang/String;

.field private xmUrl:Ljava/lang/String;

.field private xmUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

#################INJECT_SMALI
const-string v0, "MainActivity.<init>"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->xmUserId:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->xmPassword:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infor/xm/android/activity/MainActivity;->needInit:Z

    .line 77
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseUrl:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetUrl:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsUrl:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadReceiptsUrl:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsToken:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsAuthUrl:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->evalJsMethod:Ljava/lang/reflect/Method;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->trackingNumber:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->lineItemId:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->sslHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/infor/xm/android/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/infor/xm/android/activity/MainActivity$1;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    iput-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->loginHandler:Landroid/os/Handler;

    .line 844
    return-void
.end method

.method static synthetic access$000(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$000"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->xmUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$100"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->xmPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1000<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/infor/xm/android/activity/MainActivity;->storeToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1100<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/infor/xm/android/activity/MainActivity;->initialiseReceiptsSession(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/infor/xm/android/activity/MainActivity;)Landroid/app/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1200"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->downloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/infor/xm/android/activity/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

###.locals 0### not injected
    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->fileUploadCB:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/infor/xm/android/activity/MainActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1400"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/infor/xm/android/activity/MainActivity;->createDefaultChooserIntents()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/infor/xm/android/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

###.locals 0### not injected
    .prologue
    .line 49
    invoke-direct {p0}, Lcom/infor/xm/android/activity/MainActivity;->doSettings()V

    return-void
.end method

.method static synthetic access$1600(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1600"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/infor/xm/android/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

###.locals 0### not injected
    .prologue
    .line 49
    invoke-direct {p0}, Lcom/infor/xm/android/activity/MainActivity;->showErrroDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/infor/xm/android/activity/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1800"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$1900"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->backRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/infor/xm/android/activity/MainActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$200"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2000"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->inboxRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2100"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2200"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/infor/xm/android/activity/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2300"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/infor/xm/android/activity/MainActivity;->needInit:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/infor/xm/android/activity/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Z

###.locals 0### not injected
    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/infor/xm/android/activity/MainActivity;->needInit:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2400"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2402<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2500"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2600"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2602<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2700"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2800"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2802<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2900"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadReceiptsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$2902<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadReceiptsUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/infor/xm/android/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$300"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget v0, p0, Lcom/infor/xm/android/activity/MainActivity;->totalCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3000"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/infor/xm/android/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # I

###.locals 0### not injected
    .prologue
    .line 49
    iput p1, p0, Lcom/infor/xm/android/activity/MainActivity;->totalCount:I

    return p1
.end method

.method static synthetic access$3100(Lcom/infor/xm/android/activity/MainActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3100"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3200"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->trackingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3202<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->trackingNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3300"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->lineItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/infor/xm/android/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3302<--x1"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->lineItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/infor/xm/android/activity/MainActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)[Lcom/infor/xm/android/receipts/ReceiptFile;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3400<--x2"
invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT
#################INJECT_SMALI
const-string v0, "MainActivity.access$3400<--x3"
invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/infor/xm/android/activity/MainActivity;->getReceiptFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)[Lcom/infor/xm/android/receipts/ReceiptFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/infor/xm/android/activity/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3500"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->loginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$3600"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->xmUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/infor/xm/android/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$400"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->progressMsgKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$500"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$600"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadProgressMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$700"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$800"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/infor/xm/android/activity/MainActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/infor/xm/android/activity/MainActivity;

#################INJECT_SMALI
const-string v0, "MainActivity.access$900"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->toolBar:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private addCapturedPictureToGallery(Ljava/io/File;)V
    .locals 3
    .param p1, "picFile"    # Ljava/io/File;

#################INJECT_SMALI
const-string v0, "MainActivity.addCapturedPictureToGallery"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 740
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 744
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v1}, Lcom/infor/xm/android/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "mediaScanIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 6

#################INJECT_SMALI
const-string v0, "MainActivity.createCameraIntent"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "cameraIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 183
    .local v2, "externalDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "cameraDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->mCameraFilePath:Ljava/lang/String;

    .line 186
    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    return-object v1
.end method

.method private varargs createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intents"    # [Landroid/content/Intent;

#################INJECT_SMALI
const-string v0, "MainActivity.createChooserIntent"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "chooser":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Lcom/infor/xm/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    return-object v0
.end method

.method private createDefaultChooserIntents()Landroid/content/Intent;
    .locals 5

#################INJECT_SMALI
const-string v0, "MainActivity.createDefaultChooserIntents"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/infor/xm/android/activity/MainActivity;->createCameraIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/infor/xm/android/activity/MainActivity;->createFileExplorerIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/infor/xm/android/activity/MainActivity;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, "chooser":Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    return-object v0
.end method

.method private createFileExplorerIntent()Landroid/content/Intent;
    .locals 3

#################INJECT_SMALI
const-string v0, "MainActivity.createFileExplorerIntent"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "startDir":Landroid/net/Uri;
    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-class v2, Lcom/infor/xm/android/activity/FileExplorerActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    return-object v0
.end method

.method private doSettings()V
    .locals 3

#################INJECT_SMALI
const-string v0, "MainActivity.doSettings"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v0, "toIntent":Landroid/content/Intent;
    const-class v1, Lcom/infor/xm/android/activity/SettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 629
    const-string v1, "SEETINGS_FROM_HTML"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/infor/xm/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 631
    return-void
.end method

.method private getReceiptFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)[Lcom/infor/xm/android/receipts/ReceiptFile;
    .locals 4
    .param p1, "receiptsData"    # Ljava/util/ArrayList;
    .param p2, "trackingNumber"    # Ljava/lang/String;
    .param p3, "lineItemId"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.getReceiptFiles<--trackingNumber"
invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT
#################INJECT_SMALI
const-string v0, "MainActivity.getReceiptFiles<--lineItemId"
invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 831
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/infor/xm/android/receipts/ReceiptFile;

    .line 832
    .local v1, "receipts":[Lcom/infor/xm/android/receipts/ReceiptFile;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 833
    new-instance v3, Lcom/infor/xm/android/receipts/ReceiptFile;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, p2, p3, v2}, Lcom/infor/xm/android/receipts/ReceiptFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_0
    return-object v1
.end method

.method private initialiseReceiptsSession(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.initialiseReceiptsSession<--url"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 591
    const-string v0, "/receipts/mobile/app/main.jsf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/receipts/app/main.jsf"

    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/receipts/index.jsp"

    .line 593
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    :cond_0
    invoke-static {}, Lcom/infor/xm/android/receipts/ReceiptUploadService;->getInstance()Lcom/infor/xm/android/receipts/ReceiptUploadService;

    move-result-object v0

    iget-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsAuthUrl:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/infor/xm/android/receipts/ReceiptUploadService;->initialise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 596
    :cond_1
    return-void
.end method

.method private showErrroDialog()V
    .locals 3

#################INJECT_SMALI
const-string v0, "MainActivity.showErrroDialog"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 567
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060026

    .line 568
    invoke-virtual {p0, v1}, Lcom/infor/xm/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002b

    .line 569
    invoke-virtual {p0, v1}, Lcom/infor/xm/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/infor/xm/android/activity/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/infor/xm/android/activity/MainActivity$8;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 576
    return-void
.end method

.method private storeToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

#################INJECT_SMALI
const-string v0, "MainActivity.storeToken<--url"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 579
    const-string v1, "/receipts/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    const-string v1, "j_security_check"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iput-object p1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsAuthUrl:Ljava/lang/String;

    .line 583
    :cond_0
    const-string v1, "sso.userToken="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    const-string v1, "sso.userToken="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sso.userToken="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 585
    .local v0, "index":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsToken:Ljava/lang/String;

    .line 588
    .end local v0    # "index":I
    :cond_1
    return-void
.end method


# virtual methods
.method public evaluateJsFunction(Ljava/lang/String;Lcom/infor/xm/android/common/IEvaluateCallback;)V
    .locals 10
    .param p1, "jsFunctionName"    # Ljava/lang/String;
    .param p2, "evaluateCallback"    # Lcom/infor/xm/android/common/IEvaluateCallback;

#################INJECT_SMALI
const-string v0, "MainActivity.evaluateJsFunction<--jsFunctionName"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 635
    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->evalJsMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 637
    :try_start_0
    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->evalJsMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/infor/xm/android/activity/MainActivity$9;

    invoke-direct {v8, p0, p2}, Lcom/infor/xm/android/activity/MainActivity$9;-><init>(Lcom/infor/xm/android/activity/MainActivity;Lcom/infor/xm/android/common/IEvaluateCallback;)V

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to evaluate JS Function: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/infor/xm/android/common/DeveloperLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->jsInterface:Lcom/infor/xm/android/common/JsInterface;

    const-string v5, "null"

    invoke-virtual {v4, p1, v5}, Lcom/infor/xm/android/common/JsInterface;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 650
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "javascript: if(window.jsInterface && typeof("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")==\'function\'){ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "window.jsInterface.set(\'"

    .line 651
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 654
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 656
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const-string v4, "null"

    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->jsInterface:Lcom/infor/xm/android/common/JsInterface;

    invoke-virtual {v5, p1}, Lcom/infor/xm/android/common/JsInterface;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 658
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 659
    :catch_1
    move-exception v4

    goto :goto_1

    .line 663
    :cond_1
    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->jsInterface:Lcom/infor/xm/android/common/JsInterface;

    invoke-virtual {v4, p1}, Lcom/infor/xm/android/common/JsInterface;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/infor/xm/android/common/IEvaluateCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

#################INJECT_SMALI
const-string v0, "MainActivity.onActivityResult"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 751
    packed-switch p1, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 753
    :pswitch_1
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->toolBar:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 754
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v2, "receiptsData":Ljava/util/ArrayList;
    const/4 v5, 0x7

    if-ne p2, v5, :cond_2

    .line 757
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 758
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v4, "RECEIPTS_DATA"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 780
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 782
    const-string v4, "mobile_getTrackingNumber"

    new-instance v5, Lcom/infor/xm/android/activity/MainActivity$10;

    invoke-direct {v5, p0, v2}, Lcom/infor/xm/android/activity/MainActivity$10;-><init>(Lcom/infor/xm/android/activity/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4, v5}, Lcom/infor/xm/android/activity/MainActivity;->evaluateJsFunction(Ljava/lang/String;Lcom/infor/xm/android/common/IEvaluateCallback;)V

    goto :goto_0

    .line 760
    :cond_2
    if-ne p2, v6, :cond_4

    .line 762
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    if-eqz v5, :cond_3

    .line 764
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    invoke-direct {p0, v5}, Lcom/infor/xm/android/activity/MainActivity;->addCapturedPictureToGallery(Ljava/io/File;)V

    .line 766
    iput-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    goto :goto_1

    .line 769
    :cond_3
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v4

    const-string v5, "Captured image file is not set."

    invoke-virtual {v4, v5}, Lcom/infor/xm/android/common/DeveloperLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 772
    :cond_4
    if-nez p2, :cond_1

    .line 774
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 776
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 777
    iput-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    goto :goto_1

    .line 804
    .end local v2    # "receiptsData":Ljava/util/ArrayList;
    :pswitch_2
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->fileUploadCB:Landroid/webkit/ValueCallback;

    if-eqz v5, :cond_0

    .line 805
    if-eqz p3, :cond_5

    if-eq p2, v6, :cond_7

    :cond_5
    move-object v3, v4

    .line 806
    .local v3, "result":Landroid/net/Uri;
    :goto_2
    if-nez v3, :cond_6

    if-nez p3, :cond_6

    if-ne p2, v6, :cond_6

    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->mCameraFilePath:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 807
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, "cameraFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 809
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 812
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/infor/xm/android/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 813
    iput-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->mCameraFilePath:Ljava/lang/String;

    .line 817
    .end local v0    # "cameraFile":Ljava/io/File;
    :cond_6
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->fileUploadCB:Landroid/webkit/ValueCallback;

    invoke-interface {v5, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 818
    iput-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->fileUploadCB:Landroid/webkit/ValueCallback;

    goto/16 :goto_0

    .line 805
    .end local v3    # "result":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 822
    :pswitch_3
    if-ne p2, v6, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/infor/xm/android/activity/MainActivity;->finish()V

    goto/16 :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

#################INJECT_SMALI
const-string v0, "MainActivity.onClick"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    const/4 v7, 0x6

    const/16 v5, 0x8

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 737
    :goto_0
    :pswitch_0
    return-void

    .line 671
    :pswitch_1
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    invoke-virtual {p0}, Lcom/infor/xm/android/activity/MainActivity;->finish()V

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/infor/xm/android/common/UrlUtil;->getInboxUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :pswitch_3
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/infor/xm/android/common/UrlUtil;->getRootUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create an expense with url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/infor/xm/android/common/UrlUtil;->getRootUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/infor/xm/android/common/DeveloperLog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :pswitch_4
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/infor/xm/android/common/UrlUtil;->getRootUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create a time sheet with url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/infor/xm/android/common/UrlUtil;->getRootUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/infor/xm/android/common/DeveloperLog;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 689
    :pswitch_5
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    iget-object v5, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/infor/xm/android/common/UrlUtil;->getRootUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    :pswitch_6
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 698
    :pswitch_7
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    invoke-virtual {p0}, Lcom/infor/xm/android/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.camera"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 701
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f06001d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f060024

    .line 702
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f06002c

    const/4 v7, 0x0

    .line 703
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 708
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/infor/xm/android/common/Constants;->RECEIPTS_STORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 711
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 712
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create receipt directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .end local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 727
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/infor/xm/android/common/DeveloperLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 715
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "dir":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 716
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 717
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_3

    .line 718
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create receipt image file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 721
    :cond_3
    iput-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, "cameraIntent":Landroid/content/Intent;
    const-string v5, "output"

    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->capturedImageFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 724
    const/4 v5, 0x6

    invoke-virtual {p0, v0, v5}, Lcom/infor/xm/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 731
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    :pswitch_8
    iget-object v6, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v1, "cameraRollIntent":Landroid/content/Intent;
    const-class v5, Lcom/infor/xm/android/activity/CameraRollActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0, v1, v7}, Lcom/infor/xm/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x7f08001e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

#################INJECT_SMALI
const-string v0, "MainActivity.onCreate"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    const/4 v10, 0x2

    const/16 v4, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->setContentView(I)V

    .line 201
    const-string v3, "download"

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->downloadManager:Landroid/app/DownloadManager;

    .line 203
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->toolBar:Landroid/widget/RadioGroup;

    .line 204
    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 205
    invoke-virtual {p0, v10}, Lcom/infor/xm/android/activity/MainActivity;->sendMessage(I)V

    .line 207
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->backRadioBtn:Landroid/widget/RadioButton;

    .line 208
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->backRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->backRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 210
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->backRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 212
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->inboxRadioBtn:Landroid/widget/RadioButton;

    .line 213
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->inboxRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->inboxRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 216
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseRadioBtn:Landroid/widget/RadioButton;

    .line 217
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 219
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->expenseRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 221
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetRadioBtn:Landroid/widget/RadioButton;

    .line 222
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->timesheetRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 226
    const v3, 0x7f080022

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsRadioBtn:Landroid/widget/RadioButton;

    .line 227
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->receiptsRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 231
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraRadioBtn:Landroid/widget/RadioButton;

    .line 232
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 236
    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    .line 237
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->cameraMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    const v3, 0x7f08002a

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->menuBtnCamera:Landroid/widget/Button;

    .line 239
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->menuBtnCamera:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v3, 0x7f08002b

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->menuBtnCameraRoll:Landroid/widget/Button;

    .line 241
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->menuBtnCameraRoll:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v3, 0x7f080024

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    .line 244
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/infor/xm/android/activity/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/infor/xm/android/activity/MainActivity$2;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    const v3, 0x7f08002c

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    .line 257
    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadLayout:Landroid/widget/LinearLayout;

    .line 258
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadProgressMsg:Landroid/widget/TextView;

    .line 259
    const v3, 0x7f080028

    invoke-virtual {p0, v3}, Lcom/infor/xm/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadCloseButton:Landroid/widget/ImageView;

    .line 260
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadProgressMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/infor/xm/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->progressMsgKey:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->uploadCloseButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/infor/xm/android/activity/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/infor/xm/android/activity/MainActivity$3;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v3, Lcom/infor/xm/android/common/SecureSharedPreferences;

    const-string v4, "PREFERENCES_NAME"

    invoke-virtual {p0, v4, v8}, Lcom/infor/xm/android/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/infor/xm/android/common/SecureSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 272
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "URL"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->xmUrl:Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Lcom/infor/xm/android/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "USER_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->xmUserId:Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Lcom/infor/xm/android/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PASSWORD"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->xmPassword:Ljava/lang/String;

    .line 277
    new-instance v3, Lcom/infor/xm/android/common/JsInterface;

    invoke-direct {v3}, Lcom/infor/xm/android/common/JsInterface;-><init>()V

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->jsInterface:Lcom/infor/xm/android/common/JsInterface;

    .line 278
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 279
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "IS_PHONE"

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " xm-native Android Phone"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    .line 281
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 283
    invoke-virtual {v2, v10}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 284
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 285
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 286
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 287
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 288
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 289
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 290
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 291
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 292
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->jsInterface:Lcom/infor/xm/android/common/JsInterface;

    const-string v5, "jsInterface"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :try_start_0
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "evaluateJavascript"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/webkit/ValueCallback;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->evalJsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 303
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 305
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 306
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 307
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 308
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 309
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 310
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 311
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 312
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 313
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 316
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->hideWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/infor/xm/android/activity/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/infor/xm/android/activity/MainActivity$4;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 328
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/infor/xm/android/activity/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/infor/xm/android/activity/MainActivity$5;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 352
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/infor/xm/android/activity/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/infor/xm/android/activity/MainActivity$6;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 368
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/infor/xm/android/activity/MainActivity$7;

    invoke-direct {v4, p0}, Lcom/infor/xm/android/activity/MainActivity$7;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 555
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "IS_SSO"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 556
    .local v1, "isSSO":Z
    if-nez v1, :cond_1

    .line 558
    new-instance v3, Lcom/infor/xm/android/activity/MainActivity$LoginThread;

    invoke-direct {v3, p0}, Lcom/infor/xm/android/activity/MainActivity$LoginThread;-><init>(Lcom/infor/xm/android/activity/MainActivity;)V

    invoke-virtual {v3}, Lcom/infor/xm/android/activity/MainActivity$LoginThread;->start()V

    .line 564
    :goto_2
    return-void

    .line 280
    .end local v1    # "isSSO":Z
    :cond_0
    const-string v3, " xm-native Android Pad"

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v3

    const-string v4, "webview.evaluateJavascript method is not exists, use old way(webview.loadUrl) to evaluate javascript."

    invoke-virtual {v3, v4}, Lcom/infor/xm/android/common/DeveloperLog;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isSSO":Z
    :cond_1
    iget-object v3, p0, Lcom/infor/xm/android/activity/MainActivity;->webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "URL"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

#################INJECT_SMALI
const-string v0, "MainActivity.onKeyDown"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 618
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

#################INJECT_SMALI
const-string v0, "MainActivity.onPause"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 609
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 610
    sget-boolean v0, Lcom/infor/xm/android/common/DeveloperLog;->needWriteLog:Z

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CURRENT_LOG_DATE"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 613
    :cond_0
    invoke-static {}, Lcom/infor/xm/android/common/DeveloperLog;->getLog()Lcom/infor/xm/android/common/DeveloperLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infor/xm/android/common/DeveloperLog;->close()V

    .line 614
    return-void
.end method

.method public onResume()V
    .locals 3

#################INJECT_SMALI
const-string v0, "MainActivity.onResume"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 601
    sput-object p0, Lcom/infor/xm/android/common/SSLSocketFactoryExt;->androidContext:Landroid/content/Context;

    .line 603
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CURRENT_LOG_DATE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infor/xm/android/common/DeveloperLog;->recordDate:Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/infor/xm/android/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DEVELOPER_LOG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/infor/xm/android/common/DeveloperLog;->needWriteLog:Z

    .line 605
    return-void
.end method

.method public sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

#################INJECT_SMALI
const-string v0, "MainActivity.sendMessage"
invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
################END_INJECT

    .prologue
    .line 839
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 840
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 841
    iget-object v1, p0, Lcom/infor/xm/android/activity/MainActivity;->loginHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 842
    return-void
.end method


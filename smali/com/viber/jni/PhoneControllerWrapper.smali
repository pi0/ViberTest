.class public Lcom/viber/jni/PhoneControllerWrapper;
.super Lcom/viber/jni/controller/PhoneControllerCaller;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/PhoneController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/PhoneControllerCaller",
        "<",
        "Lcom/viber/jni/controller/PhoneController;",
        ">;",
        "Lcom/viber/jni/controller/PhoneController;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PHONE_STATE_WATCHDOG_CHECK_TIMEOUT_MS:I = 0x7530


# instance fields
.field private initedPushToken:Ljava/lang/String;

.field private mApplication:Lcom/viber/voip/ViberApplication;

.field private mCallHandler:Lcom/viber/voip/phone/call/a;

.field private mCallInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/phone/call/i;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectivityMgr:Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;

.field private mDialerController:Lcom/viber/jni/dialer/DialerController;

.field private mInitializationStarted:Z

.field private mInitialized:Z

.field private mInitializedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOnlineController:Lcom/viber/jni/lastonline/LastOnlineController;

.field private mMobileNetworkSubtype:I

.field private mMutexInitialization:Ljava/lang/Object;

.field private mMutexPostInitialization:Ljava/lang/Object;

.field private mNetworkAvailable:Z

.field private mNetworkType:I

.field private mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

.field private mPhoneControllerConnection:Lcom/viber/jni/connection/ConnectionController;

.field private mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

.field private mPhoneControllerPtt:Lcom/viber/jni/ptt/PttController;

.field private mPhoneControllerSettings:Lcom/viber/jni/settings/SettingsController;

.field private mPhoneControllerWrapperDelegate:Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;

.field private mPttPlaylist:Lcom/viber/voip/h/a;

.field private mPublicGroupController:Lcom/viber/jni/publicgroup/PublicGroupController;

.field private mReachability:Lcom/viber/voip/util/ft;

.field private mReady:Z

.field private mReadyListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/jni/PhoneControllerReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureCallsController:Lcom/viber/jni/secure/SecureCallsController;

.field private mServiceState:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private phoneStateListenerWatchdog:Ljava/lang/Runnable;

.field private watchDogHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/jni/PhoneControllerWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 232
    invoke-static {}, Lcom/viber/jni/PhoneControllerHelper;->getInstance()Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v0

    invoke-static {}, Lcom/viber/jni/PhoneControllerHelper;->getInstance()Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/jni/controller/PhoneControllerCaller;-><init>(Ljava/lang/Object;Lcom/viber/jni/connection/ConnectionController;)V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mMutexInitialization:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mMutexPostInitialization:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;

    invoke-direct {v0, p0, v2}, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerWrapper$1;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mConnectivityMgr:Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;

    .line 80
    new-instance v0, Lcom/viber/jni/PhoneControllerListener;

    invoke-direct {v0}, Lcom/viber/jni/PhoneControllerListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    .line 81
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;

    invoke-direct {v0, p0, v2}, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerWrapper$1;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerWrapperDelegate:Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;

    .line 85
    iput-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerPtt:Lcom/viber/jni/ptt/PttController;

    .line 86
    iput-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPttPlaylist:Lcom/viber/voip/h/a;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;

    .line 97
    iput-boolean v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    .line 98
    iput-boolean v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    .line 99
    iput-boolean v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializationStarted:Z

    .line 206
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->watchDogHandler:Landroid/os/Handler;

    .line 208
    iput-boolean v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mConnected:Z

    .line 213
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mServiceState:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 217
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->initedPushToken:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$1;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper$1;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->phoneStateListenerWatchdog:Ljava/lang/Runnable;

    .line 233
    invoke-virtual {p0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 235
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    .line 236
    invoke-static {}, Lcom/viber/jni/PhoneControllerHelper;->getInstance()Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    .line 238
    invoke-static {}, Lcom/viber/jni/PhoneControllerHelper;->getInstance()Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerConnection:Lcom/viber/jni/connection/ConnectionController;

    .line 239
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerPtt:Lcom/viber/jni/ptt/PttController;

    .line 240
    new-instance v0, Lcom/viber/voip/h/a;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerPtt:Lcom/viber/jni/ptt/PttController;

    invoke-direct {v0, v1}, Lcom/viber/voip/h/a;-><init>(Lcom/viber/jni/ptt/PttController;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPttPlaylist:Lcom/viber/voip/h/a;

    .line 241
    new-instance v0, Lcom/viber/jni/secure/SecureCallsWrapper;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-direct {v0, v1}, Lcom/viber/jni/secure/SecureCallsWrapper;-><init>(Lcom/viber/jni/secure/SecureCallsController;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mSecureCallsController:Lcom/viber/jni/secure/SecureCallsController;

    .line 242
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPublicGroupController:Lcom/viber/jni/publicgroup/PublicGroupController;

    .line 249
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerWrapper;->buildSettingsController()Lcom/viber/jni/settings/SettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerSettings:Lcom/viber/jni/settings/SettingsController;

    .line 252
    new-instance v0, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/lastonline/LastOnlineControllerCaller;-><init>(Lcom/viber/jni/PhoneControllerHelper;Lcom/viber/jni/lastonline/LastOnlineListener;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mLastOnlineController:Lcom/viber/jni/lastonline/LastOnlineController;

    .line 254
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 255
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->a(Landroid/content/Context;)Lcom/viber/voip/util/ft;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReachability:Lcom/viber/voip/util/ft;

    .line 256
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttPlayerListener()Lcom/viber/jni/ptt/PttPlayerListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/ptt/PttControllerDelegate$Player;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPttPlaylist:Lcom/viber/voip/h/a;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/ptt/PttPlayerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 257
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttDownloaderListener()Lcom/viber/jni/ptt/PttDownloaderListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPttPlaylist:Lcom/viber/voip/h/a;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/ptt/PttDownloaderListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 258
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/connection/ConnectionDelegate;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerWrapperDelegate:Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 260
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerWrapperDelegate:Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 261
    return-void
.end method

.method static synthetic access$1002(Lcom/viber/jni/PhoneControllerWrapper;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/viber/jni/PhoneControllerWrapper;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/viber/jni/PhoneControllerWrapper;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mMutexInitialization:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/viber/jni/PhoneControllerWrapper;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerWrapper;->postInit()V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerListener;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerWrapper;->updatePushToken()V

    return-void
.end method

.method static synthetic access$500(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->notifyServiceStateChanged(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V

    return-void
.end method

.method static synthetic access$602(Lcom/viber/jni/PhoneControllerWrapper;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerWrapper;->resolveServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/viber/jni/PhoneControllerWrapper;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mNetworkType:I

    return p1
.end method

.method static synthetic access$900(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerHelper;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    return-object v0
.end method

.method private buildSettingsController()Lcom/viber/jni/settings/SettingsController;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    new-instance v0, Lcom/viber/jni/settings/SettingsControllerCaller;

    invoke-static {}, Lcom/viber/jni/PhoneControllerHelper;->getInstance()Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerConnection:Lcom/viber/jni/connection/ConnectionController;

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/settings/SettingsControllerCaller;-><init>(Lcom/viber/jni/settings/SettingsController;Lcom/viber/jni/connection/ConnectionController;)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 267
    new-instance v1, Lcom/viber/jni/settings/SettingsControllerStorage;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/viber/jni/settings/SettingsControllerStorage;-><init>(Lcom/viber/jni/settings/SettingsController;Lcom/viber/voip/settings/l;)V

    .line 268
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v0

    new-array v2, v4, [Lcom/viber/jni/connection/ConnectionDelegate;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 269
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getSettingsListener()Lcom/viber/jni/settings/SettingsListener;

    move-result-object v0

    new-array v2, v4, [Lcom/viber/jni/settings/SettingsControllerDelegate;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/viber/jni/settings/SettingsListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 270
    return-object v1
.end method

.method private initPhoneStateListener()V
    .locals 7

    .prologue
    .line 443
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerWrapper$1;)V

    .line 444
    const/16 v1, 0x21

    .line 447
    :try_start_0
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "listenGemini"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/telephony/PhoneStateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 449
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v2

    .line 452
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private initServerSettings()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 584
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "last_online_last_changed_time"

    invoke-interface {v2, v3, v4, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 585
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 615
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "settings_viber_in_syncing"

    invoke-interface {v2, v3, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    .line 617
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 619
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    const-string/jumbo v4, "settings_viber_in_syncing"

    invoke-interface {v3, v4, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v3

    .line 621
    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v3, v1, v1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangeSettings(IZZZ)Z

    .line 623
    :cond_2
    return-void
.end method

.method private logout(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 659
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/jni/PhoneControllerWrapper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method private notifyServiceStateChanged(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V
    .locals 2
    .parameter

    .prologue
    .line 684
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mServiceState:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-eq v0, p1, :cond_0

    .line 685
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mServiceState:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 686
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->onServiceStateChanged(I)V

    .line 688
    :cond_0
    return-void
.end method

.method private postInit()V
    .locals 15

    .prologue
    .line 348
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mMutexPostInitialization:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializationStarted:Z

    if-eqz v0, :cond_1

    .line 351
    monitor-exit v1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializationStarted:Z

    .line 354
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 362
    :try_start_1
    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 375
    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getPushToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->initedPushToken:Ljava/lang/String;

    .line 376
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getAddressBookVersion()I

    move-result v3

    int-to-short v5, v3

    .line 377
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getCountryCodeInt()I

    move-result v3

    int-to-short v6, v3

    .line 378
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumberCanonized()Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v3

    .line 381
    iget-object v4, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v4, v6, v3}, Lcom/viber/jni/PhoneControllerHelper;->canonizePhoneNumberForCountryCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 384
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhoneControllerWrapper.initService ,uDID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", uDID.l = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",genNum:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",pushToken:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->initedPushToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",countryCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",regNumber:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v13

    .line 391
    const-string/jumbo v0, "library initialization post init started"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 393
    new-instance v0, Lcom/viber/jni/PhoneControllerInitializer;

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->initedPushToken:Ljava/lang/String;

    const/16 v4, 0x1000

    sget-object v8, Lcom/viber/voip/w;->u:Ljava/lang/String;

    iget-object v9, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-interface {v13}, Lcom/viber/voip/pixie/PixieController;->getPixieMode()I

    move-result v12

    invoke-interface {v13}, Lcom/viber/voip/pixie/PixieController;->getPixiePort()I

    move-result v13

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v14

    iget v14, v14, Lcom/viber/voip/bd;->ab:I

    invoke-direct/range {v0 .. v14}, Lcom/viber/jni/PhoneControllerInitializer;-><init>([B[BLjava/lang/String;ISSLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PhoneControllerDelegate;ZIIII)V

    .line 410
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v1, v0}, Lcom/viber/jni/PhoneControllerHelper;->Init(Lcom/viber/jni/PhoneControllerInitializer;)I

    move-result v0

    .line 412
    const-string/jumbo v1, "library initialization post init finished"

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Init done status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Native Version info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/jni/LibVersion;->getNativeVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerWrapper;->initServerSettings()V

    .line 418
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/c/d/b;->c()Lcom/viber/voip/contacts/c/f/b/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/c/f/b/p;->a()Lcom/viber/jni/PhoneControllerDelegate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 419
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/c/d/b;->c()Lcom/viber/voip/contacts/c/f/b/p;

    move-result-object v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/c/f/b/p;->a(Z)V

    .line 422
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerWrapper;->initPhoneStateListener()V

    .line 427
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReachability:Lcom/viber/voip/util/ft;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mConnectivityMgr:Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/ft;->a(Lcom/viber/voip/util/fu;)V

    .line 428
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIBER_SERVICE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 432
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    .line 433
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 434
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 435
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 437
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    .line 438
    invoke-interface {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;->initialized(Lcom/viber/jni/controller/PhoneController;)V

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 363
    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->disconnect()V

    .line 366
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->setActivated(Z)V

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v1, "extra_navigate_should_register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 419
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 435
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private resolveServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mConnected:Z

    if-eqz v0, :cond_0

    .line 678
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 680
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mNetworkAvailable:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    goto :goto_0
.end method

.method private showGenerateDeviceKeyErrorDialog()V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_GEN_DEV_KEY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void
.end method

.method private updatePushToken()V
    .locals 5

    .prologue
    .line 564
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    .line 566
    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getPushToken()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v3

    iget-object v3, v3, Lcom/viber/voip/bd;->m:Ljava/lang/String;

    .line 572
    new-instance v4, Lcom/viber/voip/registration/dg;

    invoke-direct {v4, v3}, Lcom/viber/voip/registration/dg;-><init>(Ljava/lang/String;)V

    .line 574
    :try_start_0
    invoke-virtual {v4, v1, v2, v0}, Lcom/viber/voip/registration/dg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/registration/df;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePushToken() responseState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v0, Lcom/viber/voip/registration/df;->a:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addCallInfoListener(Lcom/viber/voip/phone/call/i;)V
    .locals 2
    .parameter

    .prologue
    .line 516
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;

    monitor-enter v1

    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/phone/call/i;->onCallInfoReady(Lcom/viber/voip/phone/call/k;)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    monitor-exit v1

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-boolean v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    if-eqz v2, :cond_1

    .line 475
    const/4 v0, 0x1

    .line 479
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-interface {p1, p0}, Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;->initialized(Lcom/viber/jni/controller/PhoneController;)V

    .line 484
    :cond_0
    return-void

    .line 477
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addLoadedListener(Lcom/viber/jni/PhoneControllerWrapper$LoadedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 501
    return-void
.end method

.method public addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V
    .locals 3
    .parameter

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-boolean v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    if-eqz v2, :cond_1

    .line 460
    const/4 v0, 0x1

    .line 464
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {p1, p0}, Lcom/viber/jni/PhoneControllerReadyListener;->ready(Lcom/viber/jni/controller/PhoneController;)V

    .line 469
    :cond_0
    return-void

    .line 462
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public canonizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 721
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/jni/PhoneControllerWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canonizePhoneNumber: originPhoneNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->canonizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canonizePhoneNumberForCountryCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->canonizePhoneNumberForCountryCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public connectivityTest(Lcom/viber/service/a;)I
    .locals 1
    .parameter

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->connectivityTest(Lcom/viber/service/a;)I

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 692
    const-string/jumbo v0, "#disconnect#"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mConnected:Z

    .line 697
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->disconnect()V

    .line 698
    return-void
.end method

.method public done()I
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->done()I

    move-result v0

    return v0
.end method

.method public dropPhoneStateWatchdog(Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->watchDogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    if-nez p2, :cond_0

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string/jumbo v0, "watchdog is notifying state machine that GSM call is ended/CALL_STATE_IDLE"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleGSMStateChange(I)V

    goto :goto_0
.end method

.method public encodeCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->encodeCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateSequence()I
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->generateSequence()I

    move-result v0

    return v0
.end method

.method public getCallHandler()Lcom/viber/voip/phone/call/a;
    .locals 4

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallHandler:Lcom/viber/voip/phone/call/a;

    if-nez v0, :cond_0

    .line 1282
    new-instance v0, Lcom/viber/voip/phone/call/a;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/phone/call/a;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/jni/dialer/DialerController;Lcom/viber/jni/PhoneControllerListener;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallHandler:Lcom/viber/voip/phone/call/a;

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallHandler:Lcom/viber/voip/phone/call/a;

    return-object v0
.end method

.method public getConnectionController()Lcom/viber/jni/connection/ConnectionController;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerConnection:Lcom/viber/jni/connection/ConnectionController;

    return-object v0
.end method

.method public getCountryCode(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountryName(Ljava/lang/String;)Lcom/viber/jni/CountryNameInfo;
    .locals 1
    .parameter

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->getCountryName(Ljava/lang/String;)Lcom/viber/jni/CountryNameInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCall()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallHandler:Lcom/viber/voip/phone/call/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallHandler:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    return-object v0
.end method

.method public getDialerController()Lcom/viber/jni/dialer/DialerController;
    .locals 3

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mDialerController:Lcom/viber/jni/dialer/DialerController;

    if-nez v0, :cond_0

    .line 1263
    new-instance v0, Lcom/viber/voip/phone/call/j;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/call/j;-><init>(Lcom/viber/jni/dialer/DialerController;Lcom/viber/voip/phone/call/a;)V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mDialerController:Lcom/viber/jni/dialer/DialerController;

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mDialerController:Lcom/viber/jni/dialer/DialerController;

    return-object v0
.end method

.method public getDialerControllerNowrap()Lcom/viber/jni/dialer/DialerController;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    return-object v0
.end method

.method public getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mLastOnlineController:Lcom/viber/jni/lastonline/LastOnlineController;

    return-object v0
.end method

.method public getMyCID()J
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->getMyCID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMyVersion()J
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->getMyVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneType()J
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->getPhoneType()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPttController()Lcom/viber/jni/ptt/PttController;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerPtt:Lcom/viber/jni/ptt/PttController;

    return-object v0
.end method

.method public getPttPlaylist()Lcom/viber/voip/h/a;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPttPlaylist:Lcom/viber/voip/h/a;

    return-object v0
.end method

.method public getPublicGroupController()Lcom/viber/jni/publicgroup/PublicGroupController;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPublicGroupController:Lcom/viber/jni/publicgroup/PublicGroupController;

    return-object v0
.end method

.method public getSecureCallsController()Lcom/viber/jni/secure/SecureCallsController;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mSecureCallsController:Lcom/viber/jni/secure/SecureCallsController;

    return-object v0
.end method

.method public getServerDeltaTime()J
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerWrapperDelegate:Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->deltaTime:J
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->access$1600(Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mServiceState:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object v0
.end method

.method public getSettingsController()Lcom/viber/jni/settings/SettingsController;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerSettings:Lcom/viber/jni/settings/SettingsController;

    return-object v0
.end method

.method public handleAppModeChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleAppModeChanged(I)V

    .line 1158
    return-void
.end method

.method public handleAuthenticateApp(ILjava/lang/String;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->handleAuthenticateApp(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public handleBlockApp(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleBlockApp(II)V

    .line 1400
    return-void
.end method

.method public handleBlockList([Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleBlockList([Ljava/lang/String;IZ)V

    .line 1375
    return-void
.end method

.method public handleChangeConversationSettings(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleChangeConversationSettings(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public handleChangeGroup(JLjava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->handleChangeGroup(JLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public handleChangeGroupSettings(JZ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 845
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/viber/jni/PhoneControllerListener;->onChangeGroupSettingsReply(JZZ)V

    .line 846
    return v1
.end method

.method public handleChangePublicGroup(JLjava/lang/String;JJLjava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;III)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/viber/jni/PhoneControllerHelper;->handleChangePublicGroup(JLjava/lang/String;JJLjava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public handleChangeSettings(IZZZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 918
    const/4 v0, 0x1

    return v0
.end method

.method public handleChangeUserActivitySettings(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleChangeUserActivitySettings(I)Z

    move-result v0

    return v0
.end method

.method public handleCommError(I)V
    .locals 1
    .parameter

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleCommError(I)V

    .line 1207
    return-void
.end method

.method public handleConnectReject(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleConnectReject(JI)V

    .line 1153
    return-void
.end method

.method public handleConnectivityChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 715
    const-string/jumbo v0, "handleConnectivityChange#"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleConnectivityChange(I)V

    .line 717
    return-void
.end method

.method public handleCreateGroup(I[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerWrapper$4;-><init>(Lcom/viber/jni/PhoneControllerWrapper;I[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleCreatePublicGroup(ILjava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/viber/jni/PhoneControllerHelper;->handleCreatePublicGroup(ILjava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public handleDataInterruption(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleDataInterruption(Z)V

    .line 1385
    return-void
.end method

.method public handleDialConference(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleDialConference(Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method public handleGSMStateChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleGSMStateChange state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleGSMStateChange(I)V

    .line 711
    return-void
.end method

.method public handleGetBillingToken()Z
    .locals 1

    .prologue
    .line 810
    const-string/jumbo v0, "handleGetBillingToken#"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->handleGetBillingToken()Z

    move-result v0

    return v0
.end method

.method public handleGetGroupInfo(IJ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 826
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleGetGroupInfo(IJ)Z

    move-result v0

    return v0
.end method

.method public handleGetPublicGroupInfo(IJII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerHelper;->handleGetPublicGroupInfo(IJII)Z

    move-result v0

    return v0
.end method

.method public handleGetPublicGroupInfoUri(ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleGetPublicGroupInfoUri(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleGetPublicGroupLikes(IJII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerHelper;->handleGetPublicGroupLikes(IJII)Z

    move-result v0

    return v0
.end method

.method public handleGetPublicGroupMessages(IJI)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->handleGetPublicGroupMessages(IJI)Z

    move-result v0

    return v0
.end method

.method public handleGetUserActivity([Ljava/lang/String;IIJ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerHelper;->handleGetUserActivity([Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public handleGetUsersDetail([Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 906
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$8;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$8;-><init>(Lcom/viber/jni/PhoneControllerWrapper;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleGroupAddMember(JLjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleGroupAddMember(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleGroupAddMembers(JI[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->handleGroupAddMembers(JI[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleGroupLeave(J)Z
    .locals 1
    .parameter

    .prologue
    .line 873
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper$5;-><init>(Lcom/viber/jni/PhoneControllerWrapper;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleGroupUserIsTyping(JZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleGroupUserIsTyping(JZ)Z

    move-result v0

    return v0
.end method

.method public handleIsOnline(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 831
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleIsOnline(Ljava/lang/String;)Z

    move-result v0

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleIsOnline number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isOnlineResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 834
    return v0
.end method

.method public handleJoinPublicGroup(JILjava/lang/String;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerHelper;->handleJoinPublicGroup(JILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public handleLikePublicGroupMessage(JJIZJI)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerHelper;->handleLikePublicGroupMessage(JJIZJI)Z

    move-result v0

    return v0
.end method

.method public handleMuteGroup(JZ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 853
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/viber/jni/PhoneControllerListener;->onMuteGroupReply(JZZ)V

    .line 854
    return v1
.end method

.method public handleNetworkError(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleNetworkError(IZ)V

    .line 783
    return-void
.end method

.method public handlePeerCapabilities(I)V
    .locals 1
    .parameter

    .prologue
    .line 1176
    const-string/jumbo v0, "handlePeerCapabilities#"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handlePeerCapabilities(I)V

    .line 1178
    return-void
.end method

.method public handleRecanonizeAck(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleRecanonizeAck(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleRecoverGroups()Z
    .locals 1

    .prologue
    .line 998
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$14;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper$14;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleReportFacebookStatistics(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleReportFacebookStatistics(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSearchPublicGroupsByText(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->handleSearchPublicGroupsByText(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public handleSearchPublicGroupsForCountry(ILjava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleSearchPublicGroupsForCountry(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public handleSecondaryRegisteredAck(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSecondaryRegisteredAck(J)Z

    move-result v0

    return v0
.end method

.method public handleSendAddressBookForSecondaryAck([BIIZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->handleSendAddressBookForSecondaryAck([BIIZ)Z

    move-result v0

    return v0
.end method

.method public handleSendAnimatedMessage(Ljava/lang/String;[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerHelper;->handleSendAnimatedMessage(Ljava/lang/String;[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSendAnimatedToGroup(J[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerHelper;->handleSendAnimatedToGroup(J[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSendGroupChangedAck(J)V
    .locals 1
    .parameter

    .prologue
    .line 762
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSendGroupChangedAck(J)V

    .line 763
    return-void
.end method

.method public handleSendMedia(Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 961
    new-instance v1, Lcom/viber/jni/PhoneControllerWrapper$11;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/viber/jni/PhoneControllerWrapper$11;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v1

    return v1
.end method

.method public handleSendMediaToGroup(J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 975
    new-instance v1, Lcom/viber/jni/PhoneControllerWrapper$12;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-direct/range {v1 .. v17}, Lcom/viber/jni/PhoneControllerWrapper$12;-><init>(Lcom/viber/jni/PhoneControllerWrapper;J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v1

    return v1
.end method

.method public handleSendMessageDeliveredAck(J)V
    .locals 1
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSendMessageDeliveredAck(J)V

    .line 758
    return-void
.end method

.method public handleSendMessageReceivedAck(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 752
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleSendMessageReceivedAck(JZ)V

    .line 753
    return-void
.end method

.method public handleSendMessageReplyAck(J)V
    .locals 1
    .parameter

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSendMessageReplyAck(J)V

    .line 1514
    return-void
.end method

.method public handleSendMissedCallsAck([J)Z
    .locals 1
    .parameter

    .prologue
    .line 1076
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$21;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$21;-><init>(Lcom/viber/jni/PhoneControllerWrapper;[J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendPublicGroupsUpdatedAck(J)V
    .locals 1
    .parameter

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSendPublicGroupsUpdatedAck(J)V

    .line 1390
    return-void
.end method

.method public handleSendRegisteredNumbersAck(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1065
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper$20;-><init>(Lcom/viber/jni/PhoneControllerWrapper;IZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendSyncConversationAck(Ljava/lang/String;JI)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1054
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$19;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper$19;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendSyncGroupAck(JJI)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$17;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerWrapper$17;-><init>(Lcom/viber/jni/PhoneControllerWrapper;JJI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendSyncMessageLikeAck(J)V
    .locals 1
    .parameter

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSendSyncMessageLikeAck(J)V

    .line 1414
    return-void
.end method

.method public handleSendSyncMessagesAck([J[J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1021
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper$16;-><init>(Lcom/viber/jni/PhoneControllerWrapper;[J[J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendText(Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerWrapper$10;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendTextToGroup(JLjava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerHelper;->handleSendTextToGroup(JLjava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z

    move-result v0

    return v0
.end method

.method public handleSendUnregisteredNumbersAck(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleSendUnregisteredNumbersAck(I)Z

    move-result v0

    return v0
.end method

.method public handleSendUpdateSelfUserDetailsAck(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1087
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper$22;-><init>(Lcom/viber/jni/PhoneControllerWrapper;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSendVideo(Ljava/lang/String;[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/viber/jni/PhoneControllerHelper;->handleSendVideo(Ljava/lang/String;[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSendVideoToGroup(J[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/viber/jni/PhoneControllerHelper;->handleSendVideoToGroup(J[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSetCanonizationRules(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleSetCanonizationRules(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSyncConversation(Ljava/lang/String;JI)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1043
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$18;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper$18;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSyncDeletedMessages([Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1010
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerWrapper$15;-><init>(Lcom/viber/jni/PhoneControllerWrapper;[Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSyncGroup(JJI)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 987
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$13;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerWrapper$13;-><init>(Lcom/viber/jni/PhoneControllerWrapper;JJI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleSyncMessageLikeAck(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleSyncMessageLikeAck(J)Z

    move-result v0

    return v0
.end method

.method public handleUnregisterApp(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleUnregisterApp(II)Z

    move-result v0

    return v0
.end method

.method public handleUpdateBadge(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleUpdateBadge(I)Z

    move-result v0

    return v0
.end method

.method public handleUpdateExistingMsgStatus(JI)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->handleUpdateExistingMsgStatus(JI)Z

    move-result v0

    return v0
.end method

.method public handleUpdateExistingMsgStatusAck(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleUpdateExistingMsgStatusAck(J)Z

    move-result v0

    return v0
.end method

.method public handleUpdateGroupConversationStatus(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleUpdateGroupConversationStatus(J)Z

    move-result v0

    return v0
.end method

.method public handleUpdateGroupConversationStatusAck(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleUpdateGroupConversationStatusAck(J)Z

    move-result v0

    return v0
.end method

.method public handleUpdateLanguage(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->handleUpdateLanguage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleUpdateUserName(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 895
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$7;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$7;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleUpdateUserPhoto(J)Z
    .locals 1
    .parameter

    .prologue
    .line 884
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper$6;-><init>(Lcom/viber/jni/PhoneControllerWrapper;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleUserInfoChangeAck(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleUserInfoChangeAck(J)Z

    move-result v0

    return v0
.end method

.method public handleUserIsTyping(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 794
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleUserIsTyping(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public handleValidatePublicGroupUri(ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->handleValidatePublicGroupUri(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    if-nez v0, :cond_0

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    if-nez v0, :cond_1

    .line 280
    const-string/jumbo v0, "library initialization starting"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->loadLibrary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    .line 282
    const-string/jumbo v0, "library initialization has finished"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    if-nez v0, :cond_2

    .line 286
    const-string/jumbo v0, "load library failed!"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 287
    monitor-exit p0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    monitor-enter v1

    .line 296
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 297
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 298
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 300
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/PhoneControllerReadyListener;

    .line 301
    invoke-interface {v0, p0}, Lcom/viber/jni/PhoneControllerReadyListener;->ready(Lcom/viber/jni/controller/PhoneController;)V

    goto :goto_1

    .line 298
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    new-instance v1, Lcom/viber/jni/PhoneControllerWrapper$2;

    invoke-direct {v1, p0}, Lcom/viber/jni/PhoneControllerWrapper$2;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/i;)Z

    goto :goto_0
.end method

.method public initService()V
    .locals 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    if-nez v0, :cond_0

    .line 327
    const-string/jumbo v0, "library initialization attemt to load library"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->init()V

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    if-nez v0, :cond_1

    .line 332
    const-string/jumbo v0, "library initialization pixi checking started"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    new-instance v1, Lcom/viber/jni/PhoneControllerWrapper$3;

    invoke-direct {v1, p0}, Lcom/viber/jni/PhoneControllerWrapper$3;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/pixie/PixieController;->addReadyListener(Lcom/viber/voip/pixie/PixieController$PixieReadyListener;)V

    .line 345
    :cond_1
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerConnection:Lcom/viber/jni/connection/ConnectionController;

    invoke-interface {v0}, Lcom/viber/jni/connection/ConnectionController;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isFastNetwork()Z
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public isGSMCallActive()Z
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 654
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsGSMCallActive - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 655
    return v0

    .line 653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitWithInCorrectPushToken()Z
    .locals 2

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->initedPushToken:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z

    return v0
.end method

.method public isRakutenPhone(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->isRakutenPhone(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReady:Z

    return v0
.end method

.method public isRegisteredNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->isRegisteredNumber(Ljava/lang/String;)Z

    move-result v0

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRegisteredNumber number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isRegistered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 704
    return v0
.end method

.method public isShortStandardBackgroundID(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->isShortStandardBackgroundID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoSupported()Z
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->isVideoSupported()Z

    move-result v0

    return v0
.end method

.method public lengthenStandartBackgroundID(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lengthenStandartBackgroundID backgroundID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->lengthenStandartBackgroundID(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1497
    return v0
.end method

.method public notifyActivityOnForeground(Z)V
    .locals 1
    .parameter

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->notifyActivityOnForeground(Z)V

    .line 647
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/d/b;->a(Z)V

    .line 648
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mApplication:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/calls/u;->a(Z)V

    .line 650
    :cond_0
    return-void
.end method

.method public registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/PhoneControllerDelegate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 505
    return-void
.end method

.method public registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 509
    return-void
.end method

.method public declared-synchronized removeCallInfoListener(Lcom/viber/voip/phone/call/i;)V
    .locals 1
    .parameter

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerListener;->removeDelegate(Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method public removeInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 493
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mInitializedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 495
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V
    .locals 2
    .parameter

    .prologue
    .line 487
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mReadyListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestShutdown()V
    .locals 3

    .prologue
    .line 736
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/jni/PhoneControllerWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestShutdown"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->requestShutdown()V

    .line 738
    return-void
.end method

.method public reschedulePhoneStateWatchdog(Ljava/lang/Runnable;)V
    .locals 3
    .parameter

    .prologue
    .line 551
    if-nez p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper;->phoneStateListenerWatchdog:Ljava/lang/Runnable;

    .line 553
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->dropPhoneStateWatchdog(Ljava/lang/Runnable;Z)V

    .line 554
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->watchDogHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    return-void
.end method

.method public resetDeviceKey()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->resetDeviceKey()V

    .line 748
    return-void
.end method

.method public sendCallStartedNotificationToSN(J)V
    .locals 1
    .parameter

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->sendCallStartedNotificationToSN(J)V

    .line 1148
    return-void
.end method

.method public sendKA()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerHelper;->sendKA()V

    .line 778
    return-void
.end method

.method public sendStatistics(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->sendStatistics(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendTransferReqMsg(ZJI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerHelper;->sendTransferReqMsg(ZJI)V

    .line 1143
    return-void
.end method

.method public setConnectionToken(J)V
    .locals 1
    .parameter

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->setConnectionToken(J)V

    .line 1202
    return-void
.end method

.method public setDeviceKey([B)V
    .locals 1
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->setDeviceKey([B)V

    .line 743
    return-void
.end method

.method public setDeviceOrientation(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->setDeviceOrientation(III)I

    move-result v0

    return v0
.end method

.method public setEnableVideo(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->setEnableVideo(Z)V

    .line 1524
    return-void
.end method

.method public setPixieBundle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->setPixieBundle(Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method public setPixieMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->setPixieMode(I)V

    .line 1223
    return-void
.end method

.method public shareAddressBookList([Lcom/viber/jni/CAddressBookInfo;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->shareAddressBookList([Lcom/viber/jni/CAddressBookInfo;II)Z

    move-result v0

    return v0
.end method

.method public shareContact(Lcom/viber/jni/CAddressBookInfo;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 804
    const-string/jumbo v0, "shareContact#"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerHelper;->shareContact(Lcom/viber/jni/CAddressBookInfo;II)Z

    move-result v0

    return v0
.end method

.method public shortenStandardBackgroundID(Ljava/lang/String;[J)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shortenStandardBackgroundID backgroundID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerHelper;->shortenStandardBackgroundID(Ljava/lang/String;[J)I

    move-result v0

    .line 1481
    return v0
.end method

.method public startPixie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerHelper;->startPixie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 1218
    return-void
.end method

.method public testConnection(I)V
    .locals 1
    .parameter

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerHelper;->testConnection(I)V

    .line 1163
    return-void
.end method

.method public updateData(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 932
    new-instance v0, Lcom/viber/jni/PhoneControllerWrapper$9;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$9;-><init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerWrapper;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

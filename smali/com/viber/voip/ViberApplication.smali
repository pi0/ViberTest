.class public Lcom/viber/voip/ViberApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/m;


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = "dFZUV1lMbUxfV3VualVXcUJmTmVsR2c6MQ"
    mode = .enum Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;
    resDialogCommentPrompt = 0x7f0c0473
    resDialogIcon = 0x108009b
    resDialogOkToast = 0x7f0c0474
    resDialogText = 0x7f0c0472
    resDialogTitle = 0x7f0c0471
    resNotifIcon = 0x1080078
    resNotifText = 0x7f0c0470
    resNotifTickerText = 0x7f0c046e
    resNotifTitle = 0x7f0c046f
    resToastText = 0x7f0c046d
.end annotation


# static fields
.field private static final APP_RESTART_DELAY:I = 0xbb8

.field public static final CONTACT_DETAILS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.contacts.ui.ContactDetailsActivity"

.field public static final CONTACT_DETAILS_ALIAS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.HomeContactDetailsActivity"

.field public static final CONVERSATION_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.messages.ui.ConversationActivity"

.field public static final CONVERSATION_ALIAS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.HomeConversationActivity"

.field private static final LOG_TAG:Ljava/lang/String; = "ViberApplication"

.field public static final PREF_CLEAR_PREFS:Ljava/lang/String; = "pref_clear_prefs"

.field public static final PREF_STARTED_BEFORE:Ljava/lang/String; = "pref_started_before"

.field public static final SETTINGS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.settings.ui.SettingsHeadersActivity"

.field public static final SETTINGS_ALIAS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.HomeSettingsActivity"

.field public static final SHARING_ALIAS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.WelcomeShareActivity"

.field private static STACK_SIZE:I = 0x0

.field public static final SYNC_ACCOUNT_AUTH_SERVICE:Ljava/lang/String; = "com.viber.service.contacts.authentication.AccountAuthenticatorService"

.field public static final SYNC_ACCOUNT_CONTACTBOOK_SERVICE:Ljava/lang/String; = "com.viber.service.contacts.contactbook.AccountContactbookService"

.field public static final SYNC_ACCOUNT_SYNC_SERVICE:Ljava/lang/String; = "com.viber.service.contacts.sync.ContactsSyncAccountService"

.field public static final YOU_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.user.YouActivity"

.field public static final YOU_ALIAS_ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.viber.voip.HomeYourActivity"

.field public static final ZOOBESDK_PROCESS_NAME:Ljava/lang/String; = "com.viber.voip:zoobesdk"

.field private static listAppListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/dw;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/viber/logger/a;

.field private static mInstance:Lcom/viber/voip/ViberApplication;

.field private static mIsTablet:Ljava/lang/Boolean;

.field private static onlineContactInfoCache:Lcom/viber/voip/util/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/bg",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/jni/OnlineContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static preferencesStorageInstance:Lcom/viber/voip/settings/l;

.field private static sEnableTouchInput:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sPreferencesCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/settings/l;",
            ">;"
        }
    .end annotation
.end field

.field private static unknownNumberInfoCache:Lcom/viber/voip/util/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/bg",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activationController:Lcom/viber/voip/registration/ActivationController;

.field private appDownloader:Lcom/viber/voip/util/upload/a;

.field private biDiAwareFormatter:Lcom/viber/voip/util/l;

.field private configManager:Lcom/viber/voip/registration/ao;

.field private final countryCodeManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/viber/voip/registration/ar;",
            ">;"
        }
    .end annotation
.end field

.field private crashlytics:Lcom/viber/dexshared/CrashlyticsHelper;

.field private deviceFlagsManager:Lcom/viber/voip/registration/bg;

.field private final devicesManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/viber/voip/registration/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final facebookManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/viber/voip/messages/extras/fb/s;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private hardwareParameters:Lcom/viber/voip/registration/HardwareParameters;

.field private final locationManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/viber/voip/messages/extras/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppBackgroundChecker:Lcom/viber/voip/util/b;

.field private mAppVersion:Ljava/lang/String;

.field private mAvailableScreenWidthMeasurer:Lcom/viber/voip/ui/a;

.field private mChatHeadsController:Lcom/viber/voip/messages/ui/chathead/d;

.field private mDownloadValve:Lcom/viber/voip/util/bb;

.field private mImageFetcher:Lcom/viber/voip/util/b/w;

.field private mMediaMountListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/du;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaServerController:Lcom/viber/voip/util/upload/a/b;

.field private mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

.field private mPromoHandler:Lcom/viber/voip/f/j;

.field private mRecentsLettersToNumbersManager:Lcom/viber/voip/calls/ao;

.field private mSmsDbManager:Lcom/viber/voip/sms/a;

.field private final mTwitterManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/viber/voip/messages/extras/twitter/l;",
            ">;"
        }
    .end annotation
.end field

.field private mViberInInfo:Lcom/viber/jni/ViberInInfo;

.field private phoneApp:Lcom/viber/voip/phone/v;

.field private registrationValues:Lcom/viber/voip/registration/cp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 243
    new-instance v0, Lcom/viber/voip/util/bg;

    invoke-direct {v0}, Lcom/viber/voip/util/bg;-><init>()V

    sput-object v0, Lcom/viber/voip/ViberApplication;->onlineContactInfoCache:Lcom/viber/voip/util/bg;

    .line 248
    new-instance v0, Lcom/viber/voip/util/bg;

    invoke-direct {v0}, Lcom/viber/voip/util/bg;-><init>()V

    sput-object v0, Lcom/viber/voip/ViberApplication;->unknownNumberInfoCache:Lcom/viber/voip/util/bg;

    .line 257
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/viber/voip/ViberApplication;->listAppListeners:Ljava/util/Set;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/viber/voip/ViberApplication;->sPreferencesCategories:Ljava/util/HashMap;

    .line 264
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/viber/voip/ViberApplication;->sEnableTouchInput:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1420
    const/4 v0, 0x2

    sput v0, Lcom/viber/voip/ViberApplication;->STACK_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 219
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->countryCodeManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->devicesManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->facebookManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mTwitterManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->locationManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->handler:Landroid/os/Handler;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mAppVersion:Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaMountListeners:Ljava/util/List;

    .line 1806
    new-instance v0, Lcom/viber/jni/ViberInInfo;

    invoke-direct {v0}, Lcom/viber/jni/ViberInInfo;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mViberInInfo:Lcom/viber/jni/ViberInInfo;

    .line 1914
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/registration/ao;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->configManager:Lcom/viber/voip/registration/ao;

    return-object v0
.end method

.method static synthetic access$200(Lcom/viber/voip/ViberApplication;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ViberApplication;->doShowDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/viber/voip/ViberApplication;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/voip/ViberApplication;)Lcom/viber/dexshared/CrashlyticsHelper;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->crashlytics:Lcom/viber/dexshared/CrashlyticsHelper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/viber/voip/ViberApplication;Lcom/viber/dexshared/CrashlyticsHelper;)Lcom/viber/dexshared/CrashlyticsHelper;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/viber/voip/ViberApplication;->crashlytics:Lcom/viber/dexshared/CrashlyticsHelper;

    return-object p1
.end method

.method static synthetic access$500(Lcom/viber/voip/ViberApplication;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ViberApplication;->doNotifyActivityOnForeground(ZLjava/lang/String;)V

    return-void
.end method

.method private static addAppListener(Lcom/viber/voip/dw;)V
    .locals 2
    .parameter

    .prologue
    .line 1044
    const-string/jumbo v0, "ViberApplication.addMessageManagerListener"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1045
    sget-object v1, Lcom/viber/voip/ViberApplication;->listAppListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1046
    :try_start_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->listAppListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1047
    monitor-exit v1

    .line 1048
    return-void

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized checkKeyChainWasSaved()V
    .locals 5

    .prologue
    .line 1572
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1573
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    .line 1576
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v1

    .line 1577
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    .line 1578
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1579
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->getKeyChainDeviceKey()Ljava/lang/String;

    move-result-object v3

    .line 1580
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1581
    :cond_0
    invoke-virtual {v1, v2}, Lcom/viber/voip/registration/ActivationController;->setKeyChainDeviceKey(Ljava/lang/String;)V

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ViberApplication: checkKeyChainWasSaved() deviceKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1587
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    if-eqz v0, :cond_6

    const-string/jumbo v0, "secondary_udid"

    :goto_0
    const-string/jumbo v3, ""

    invoke-interface {v2, v0, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1589
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->getKeyChainUDID()Ljava/lang/String;

    move-result-object v2

    .line 1590
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1591
    :cond_2
    invoke-virtual {v1, v0}, Lcom/viber/voip/registration/ActivationController;->setKeyChainUDID(Ljava/lang/String;)V

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ViberApplication: checkKeyChainWasSaved() udid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1597
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "device_hardware_key"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1599
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->getKeyChainHardwareKey()Ljava/lang/String;

    move-result-object v2

    .line 1600
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1601
    :cond_4
    invoke-virtual {v1, v0}, Lcom/viber/voip/registration/ActivationController;->setKeyChainHardwareKey(Ljava/lang/String;)V

    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViberApplication: checkKeyChainWasSaved() hardwareKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    :cond_5
    monitor-exit p0

    return-void

    .line 1587
    :cond_6
    :try_start_1
    const-string/jumbo v0, "viber_udid"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createCountryCodeManager()Lcom/viber/voip/registration/ar;
    .locals 4

    .prologue
    .line 871
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->c:Ljava/lang/String;

    .line 872
    new-instance v1, Lcom/viber/voip/registration/ar;

    new-instance v2, Lcom/viber/voip/registration/aq;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/aq;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/viber/voip/registration/ar;-><init>(Lcom/viber/voip/registration/bj;Ljava/lang/String;Lcom/viber/voip/registration/au;)V

    return-object v1
.end method

.method private disableComponent(Landroid/content/ComponentName;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 1457
    const-string/jumbo v0, "ViberApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disable component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 1459
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1460
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 1461
    const-string/jumbo v2, "ViberApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {v1, p1, v5, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1465
    :cond_0
    return-void

    .line 1458
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private disableContactDetailsActivity(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1702
    const-string/jumbo v0, "com.viber.voip.HomeContactDetailsActivity"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1703
    const-string/jumbo v1, "com.viber.voip.contacts.ui.ContactDetailsActivity"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1704
    return-void

    .line 1703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableConversationActivity(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1697
    const-string/jumbo v0, "com.viber.voip.HomeConversationActivity"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1698
    const-string/jumbo v1, "com.viber.voip.messages.ui.ConversationActivity"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1699
    return-void

    .line 1698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableSettingsActivity(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1712
    const-string/jumbo v0, "com.viber.voip.HomeSettingsActivity"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1713
    const-string/jumbo v1, "com.viber.voip.settings.ui.SettingsHeadersActivity"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1714
    return-void

    .line 1713
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableYouActivity(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1707
    const-string/jumbo v0, "com.viber.voip.HomeYourActivity"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1708
    const-string/jumbo v1, "com.viber.voip.user.YouActivity"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1709
    return-void

    .line 1708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doNotifyActivityOnForeground(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1018
    if-eqz p1, :cond_0

    .line 1019
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/viber/voip/k/a;->f(Ljava/lang/String;)V

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mAppBackgroundChecker:Lcom/viber/voip/util/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mAppBackgroundChecker:Lcom/viber/voip/util/b;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/util/b;->a(ZLjava/lang/String;)V

    .line 1022
    :cond_1
    return-void
.end method

.method private doShowDialog(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x1000

    .line 1257
    packed-switch p1, :pswitch_data_0

    .line 1274
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/ViberApplication;->showUnknownDialog(ILjava/lang/String;)V

    .line 1276
    :goto_0
    return-void

    .line 1259
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/viber/voip/ViberApplication;->showSwitchToGSMDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.TYPE_TEXT_ONLY_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    const-string/jumbo v1, "dialog_context"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1265
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1268
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.TYPE_NO_SPIRIT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    const-string/jumbo v1, "dialog_context"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1271
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private enableComponent(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1724
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1725
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1728
    return-void

    .line 1725
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private enableShareViaViber(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1693
    const-string/jumbo v0, "com.viber.voip.WelcomeShareActivity"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1694
    return-void
.end method

.method public static exit(Landroid/app/Activity;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1890
    const-string/jumbo v0, "exit"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1892
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1894
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    .line 1895
    :goto_0
    if-eqz p1, :cond_3

    const v0, 0x7f0c05e5

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1896
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1899
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 1901
    if-eqz p1, :cond_1

    .line 1902
    const-string/jumbo v0, "alarm"

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1903
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1904
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1905
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1906
    const-class v3, Lcom/viber/voip/WelcomeActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1907
    const/4 v3, -0x1

    invoke-static {v1, v3, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1911
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 1912
    return-void

    .line 1894
    :cond_2
    const v0, 0x7f0c0439

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1895
    :cond_3
    const v0, 0x7f0c043a

    goto :goto_1
.end method

.method public static externalStorageMounted(Landroid/content/Context;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1869
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1870
    if-eqz p1, :cond_0

    .line 1871
    const v1, 0x7f0c0489

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1875
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static flushLogger()V
    .locals 1

    .prologue
    .line 1153
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    if-eqz v0, :cond_0

    .line 1154
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    invoke-interface {v0}, Lcom/viber/logger/a;->b()V

    .line 1155
    :cond_0
    return-void
.end method

.method private getImageFetcher()Lcom/viber/voip/util/b/w;
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mImageFetcher:Lcom/viber/voip/util/b/w;

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Lcom/viber/voip/util/b/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mImageFetcher:Lcom/viber/voip/util/b/w;

    .line 981
    new-instance v0, Lcom/viber/voip/util/b/u;

    const-string/jumbo v1, "image_fetcher_cache"

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/b/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 982
    const v1, 0x3dcccccd

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/u;->a(F)V

    .line 983
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, v0, Lcom/viber/voip/util/b/u;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 984
    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mImageFetcher:Lcom/viber/voip/util/b/w;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/util/b/u;)V

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mImageFetcher:Lcom/viber/voip/util/b/w;

    return-object v0
.end method

.method public static getInstance()Lcom/viber/voip/ViberApplication;
    .locals 1

    .prologue
    .line 1380
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method public static getViberApp(Lcom/viber/voip/dw;)V
    .locals 1
    .parameter

    .prologue
    .line 1036
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    if-eqz v0, :cond_0

    .line 1037
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    invoke-interface {p0, v0}, Lcom/viber/voip/dw;->a(Lcom/viber/voip/ViberApplication;)V

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->addAppListener(Lcom/viber/voip/dw;)V

    goto :goto_0
.end method

.method public static hideDoodle()Z
    .locals 4

    .prologue
    .line 1879
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1881
    const-string/jumbo v0, "hideDoodle: true"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1882
    const/4 v0, 0x1

    .line 1885
    :goto_0
    return v0

    .line 1884
    :cond_0
    const-string/jumbo v0, "hideDoodle: false"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1885
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLogger()V
    .locals 3

    .prologue
    .line 707
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    if-eqz v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/process/k;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/w;->g:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/viber/logger/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/logger/a;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    goto :goto_0
.end method

.method private static declared-synchronized initPreferencesStorage(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 758
    const-class v1, Lcom/viber/voip/ViberApplication;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/ViberApplication;->initPreferencesStorageForCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    monitor-exit v1

    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized initPreferencesStorageForCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/viber/voip/settings/l;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 732
    const-class v1, Lcom/viber/voip/ViberApplication;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/viber/voip/process/k;->a(Landroid/content/Context;)Lcom/viber/voip/process/k;

    .line 733
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Fuck you very much"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 737
    :cond_0
    const/4 v0, 0x0

    .line 739
    :try_start_1
    const-string/jumbo v2, "initPreferencesStorage"

    invoke-static {v2}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v2, v3, :cond_2

    .line 741
    new-instance v0, Lcom/viber/voip/settings/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v3}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/viber/voip/settings/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 742
    if-nez p1, :cond_1

    .line 744
    invoke-static {p0, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Lcom/viber/voip/settings/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v0

    .line 747
    :cond_2
    if-nez p1, :cond_1

    .line 748
    :try_start_2
    new-instance v0, Lcom/viber/voip/settings/q;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/settings/q;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static isActivated()Z
    .locals 3

    .prologue
    .line 811
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "is_activated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isComponentEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1688
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1689
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 1664
    sget-object v0, Lcom/viber/voip/ViberApplication;->mIsTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1665
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ViberApplication;->mIsTablet:Ljava/lang/Boolean;

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsTablet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/ViberApplication;->mIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1668
    :cond_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->mIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private loadDex()V
    .locals 2

    .prologue
    .line 512
    const-string/jumbo v0, "loadDex"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->d:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 514
    invoke-static {}, Lcom/viber/voip/c/g;->d()V

    .line 515
    invoke-static {}, Lcom/viber/voip/c/g;->c()V

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-static {}, Lcom/viber/voip/c/g;->c()V

    goto :goto_0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v5, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/ViberApplication;->logImp(JILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1163
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/ViberApplication;->logImp(JILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1167
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1158
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberApplication"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method private static logImp(JILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1217
    return-void
.end method

.method private static logToLogcat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1220
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1221
    if-eqz p3, :cond_5

    .line 1222
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    .line 1223
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1225
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1226
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 1227
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1228
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 1229
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1230
    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1231
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1234
    :cond_5
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logToLogger(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1240
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/viber/logger/a;->a(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1241
    if-eqz p4, :cond_0

    .line 1243
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1244
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1246
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1247
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1248
    sget-object v4, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    invoke-interface {v4, p0, p1, p2, v3}, Lcom/viber/logger/a;->a(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1253
    :cond_0
    return-void
.end method

.method private notifyAppListener()V
    .locals 3

    .prologue
    .line 1051
    const-string/jumbo v0, "ConversationActivity.notifyMessageManagerListener"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1052
    sget-object v1, Lcom/viber/voip/ViberApplication;->listAppListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1053
    :try_start_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->listAppListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/dw;

    .line 1054
    invoke-interface {v0, p0}, Lcom/viber/voip/dw;->a(Lcom/viber/voip/ViberApplication;)V

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1056
    :cond_0
    :try_start_1
    sget-object v0, Lcom/viber/voip/ViberApplication;->listAppListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1057
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    return-void
.end method

.method public static preferences()Lcom/viber/voip/settings/l;
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    if-eqz v0, :cond_0

    .line 789
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->initPreferencesStorage(Landroid/content/Context;)V

    .line 792
    :cond_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;

    return-object v0
.end method

.method public static preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter

    .prologue
    .line 796
    sget-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;

    if-nez v0, :cond_0

    .line 797
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->initPreferencesStorage(Landroid/content/Context;)V

    .line 799
    :cond_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;

    return-object v0
.end method

.method public static preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;
    .locals 3
    .parameter

    .prologue
    .line 762
    if-nez p0, :cond_1

    .line 763
    sget-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;

    if-nez v0, :cond_0

    .line 764
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    if-eqz v0, :cond_0

    .line 765
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->initPreferencesStorage(Landroid/content/Context;)V

    .line 768
    :cond_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->preferencesStorageInstance:Lcom/viber/voip/settings/l;

    .line 783
    :goto_0
    return-object v0

    .line 773
    :cond_1
    sget-object v1, Lcom/viber/voip/ViberApplication;->sPreferencesCategories:Ljava/util/HashMap;

    monitor-enter v1

    .line 774
    :try_start_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->sPreferencesCategories:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    .line 775
    if-eqz v0, :cond_2

    .line 776
    monitor-exit v1

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 778
    :cond_2
    :try_start_1
    sget-object v0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    invoke-static {v0, p0}, Lcom/viber/voip/ViberApplication;->initPreferencesStorageForCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_3

    .line 780
    sget-object v2, Lcom/viber/voip/ViberApplication;->sPreferencesCategories:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private startCrashlytics()V
    .locals 2

    .prologue
    .line 1858
    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/dr;

    invoke-direct {v1, p0}, Lcom/viber/voip/dr;-><init>(Lcom/viber/voip/ViberApplication;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/f;)V

    .line 1866
    return-void
.end method

.method public static startHomeActivity()V
    .locals 3

    .prologue
    .line 1638
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 1639
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/HomeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1640
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1642
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1643
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1644
    return-void
.end method

.method public static stopLogging()V
    .locals 1

    .prologue
    .line 718
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    if-eqz v0, :cond_0

    .line 719
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    invoke-interface {v0}, Lcom/viber/logger/a;->a()V

    .line 720
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    .line 729
    :cond_0
    return-void
.end method

.method private updateLanguage(Landroid/content/res/Configuration;Lcom/viber/voip/settings/l;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1616
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->H()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 1617
    invoke-static {}, Lcom/viber/voip/settings/j;->I()Ljava/lang/String;

    move-result-object v0

    .line 1618
    if-eqz p3, :cond_1

    .line 1619
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    if-eqz v1, :cond_2

    .line 1626
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1628
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1629
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1630
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1631
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1632
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method


# virtual methods
.method public disableSyncAccountComponents(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "disableSyncAccountComponents enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1718
    const-string/jumbo v0, "com.viber.service.contacts.sync.ContactsSyncAccountService"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1719
    const-string/jumbo v0, "com.viber.service.contacts.authentication.AccountAuthenticatorService"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1720
    const-string/jumbo v0, "com.viber.service.contacts.contactbook.AccountContactbookService"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/ViberApplication;->enableComponent(Ljava/lang/String;Z)V

    .line 1721
    return-void
.end method

.method enableComponent(Landroid/content/ComponentName;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Enable component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 541
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in disabled state, forcing it to be enabled on app start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, p1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 546
    :cond_0
    return-void
.end method

.method public enableTouchInput(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1449
    sget-object v0, Lcom/viber/voip/ViberApplication;->sEnableTouchInput:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1450
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finish(), process: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1469
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v3, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v3, :cond_2

    .line 1470
    invoke-static {}, Lcom/viber/voip/app/ViberActivity;->getLastUsedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-static {}, Lcom/viber/voip/app/ViberActivity;->getLastUsedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1472
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v3, "Viber finish last activity"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->c(Landroid/content/Context;)V

    .line 1477
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mSmsDbManager:Lcom/viber/voip/sms/a;

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mSmsDbManager:Lcom/viber/voip/sms/a;

    invoke-virtual {v0}, Lcom/viber/voip/sms/a;->b()V

    .line 1480
    :cond_1
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/u;->f()V

    .line 1486
    invoke-static {}, Lcom/viber/voip/ViberApplication;->stopLogging()V

    .line 1487
    invoke-static {}, Lcom/viber/voip/dc;->a()V

    .line 1522
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-eq v0, v3, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-eq v0, v3, :cond_5

    .line 1523
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v3, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v3, :cond_3

    .line 1524
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/viber/voip/sms/IncomingSmsReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/ViberApplication;->disableComponent(Landroid/content/ComponentName;Z)V

    .line 1525
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "RIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1526
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/viber/service/KeepAliveReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v3, v0}, Lcom/viber/voip/ViberApplication;->disableComponent(Landroid/content/ComponentName;Z)V

    .line 1529
    :cond_3
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v3, "Viber System.exit"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-static {v1}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    .line 1531
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 1555
    :goto_1
    return-void

    :cond_4
    move v0, v2

    .line 1525
    goto :goto_0

    .line 1533
    :cond_5
    const-string/jumbo v0, "ViberApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Viber killProcess "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method public fireMediaMounted()V
    .locals 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->g()V

    .line 1785
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->getImageFetcher()Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/w;->f()V

    .line 1787
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mMediaMountListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1788
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/du;

    .line 1789
    invoke-interface {v0}, Lcom/viber/voip/du;->a()V

    goto :goto_0

    .line 1791
    :cond_0
    return-void
.end method

.method public fireMediaUnmounted()V
    .locals 2

    .prologue
    .line 1794
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mMediaMountListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1795
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/du;

    .line 1796
    invoke-interface {v0}, Lcom/viber/voip/du;->b()V

    goto :goto_0

    .line 1798
    :cond_0
    return-void
.end method

.method public getActivationController()Lcom/viber/voip/registration/ActivationController;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->activationController:Lcom/viber/voip/registration/ActivationController;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lcom/viber/voip/registration/ActivationController;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/ActivationController;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->activationController:Lcom/viber/voip/registration/ActivationController;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->activationController:Lcom/viber/voip/registration/ActivationController;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 683
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mActivityManager:Landroid/app/ActivityManager;

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getAddressBookVersion()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 817
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "AddressBookVersion"

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    .line 818
    if-ne v3, v1, :cond_0

    .line 819
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->setAddressBookVersion(I)V

    .line 822
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableScreenWidthMeasurer()Lcom/viber/voip/ui/a;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mAvailableScreenWidthMeasurer:Lcom/viber/voip/ui/a;

    return-object v0
.end method

.method public getBiDiAwareFormatter()Lcom/viber/voip/util/l;
    .locals 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->biDiAwareFormatter:Lcom/viber/voip/util/l;

    if-nez v0, :cond_0

    .line 1678
    new-instance v0, Lcom/viber/voip/util/m;

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/util/m;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->biDiAwareFormatter:Lcom/viber/voip/util/l;

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->biDiAwareFormatter:Lcom/viber/voip/util/l;

    return-object v0
.end method

.method public getCachedOnlineContactInfo(Ljava/lang/String;)Lcom/viber/jni/OnlineContactInfo;
    .locals 1
    .parameter

    .prologue
    .line 1731
    sget-object v0, Lcom/viber/voip/ViberApplication;->onlineContactInfoCache:Lcom/viber/voip/util/bg;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/OnlineContactInfo;

    return-object v0
.end method

.method public getCachedOnlineContactInfo([Ljava/lang/String;)[Lcom/viber/jni/OnlineContactInfo;
    .locals 5
    .parameter

    .prologue
    .line 1735
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 1738
    sget-object v4, Lcom/viber/voip/ViberApplication;->onlineContactInfoCache:Lcom/viber/voip/util/bg;

    invoke-virtual {v4, v0}, Lcom/viber/voip/util/bg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/OnlineContactInfo;

    .line 1739
    if-eqz v0, :cond_0

    .line 1740
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1743
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/jni/OnlineContactInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/jni/OnlineContactInfo;

    return-object v0
.end method

.method public getCachedUnknownNumberInfo(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 1762
    sget-object v0, Lcom/viber/voip/ViberApplication;->unknownNumberInfoCache:Lcom/viber/voip/util/bg;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConfigManager()Lcom/viber/voip/registration/ao;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->configManager:Lcom/viber/voip/registration/ao;

    return-object v0
.end method

.method public getContactManager()Lcom/viber/voip/contacts/c/d/b;
    .locals 1

    .prologue
    .line 923
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-static {p0}, Lcom/viber/voip/contacts/c/d/b/e;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    .line 926
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/viber/voip/contacts/c/d/a/f;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    goto :goto_0
.end method

.method public getCountryCodeManager()Lcom/viber/voip/registration/ar;
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->countryCodeManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->countryCodeManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->createCountryCodeManager()Lcom/viber/voip/registration/ar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->countryCodeManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/ar;

    return-object v0
.end method

.method public getCrashHandler()Lcom/viber/error/a;
    .locals 1

    .prologue
    .line 990
    invoke-static {}, Lcom/viber/error/a;->a()Lcom/viber/error/a;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceFlags()I
    .locals 3

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "device is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1354
    const/4 v0, -0x1

    .line 1359
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v0

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "using device flags : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1376
    return v0
.end method

.method public getDevicesManager()Lcom/viber/voip/registration/bh;
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->devicesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->devicesManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/viber/voip/registration/bh;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/bh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->devicesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/bh;

    return-object v0
.end method

.method public getDownloadValve()Lcom/viber/voip/util/bb;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mDownloadValve:Lcom/viber/voip/util/bb;

    return-object v0
.end method

.method public getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->facebookManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1080
    const v0, 0x7f0c0134

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    new-instance v1, Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/extras/fb/s;-><init>(Ljava/lang/String;)V

    .line 1082
    new-instance v0, Lcom/viber/voip/messages/extras/fb/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/a;-><init>(Lcom/viber/voip/ViberApplication;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/af;)Z

    .line 1083
    new-instance v0, Lcom/viber/voip/messages/extras/fb/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/af;)Z

    .line 1084
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->facebookManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->facebookManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/fb/s;

    return-object v0
.end method

.method public getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->hardwareParameters:Lcom/viber/voip/registration/HardwareParameters;

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Lcom/viber/voip/registration/HardwareParametersImpl;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/HardwareParametersImpl;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->hardwareParameters:Lcom/viber/voip/registration/HardwareParameters;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->hardwareParameters:Lcom/viber/voip/registration/HardwareParameters;

    return-object v0
.end method

.method public getLocalMediaServerController()Lcom/viber/voip/util/upload/a/b;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaServerController:Lcom/viber/voip/util/upload/a/b;

    return-object v0
.end method

.method public getLocationManager()Lcom/viber/voip/messages/extras/a/a;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->locationManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->locationManager:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/viber/voip/messages/extras/a/e;

    invoke-direct {v1}, Lcom/viber/voip/messages/extras/a/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->locationManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/a/a;

    return-object v0
.end method

.method public getMessagesManager()Lcom/viber/voip/messages/i;
    .locals 1

    .prologue
    .line 919
    invoke-static {p0}, Lcom/viber/voip/messages/controller/c/c;->a(Landroid/content/Context;)Lcom/viber/voip/messages/i;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1815
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1816
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getNetworkInfo() entering net type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1819
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1854
    :goto_0
    return v0

    .line 1821
    :pswitch_0
    const/16 v0, 0xabf

    goto :goto_0

    .line 1823
    :pswitch_1
    const/16 v0, 0x7d0

    goto :goto_0

    .line 1825
    :pswitch_2
    const/16 v0, 0xabe

    goto :goto_0

    .line 1827
    :pswitch_3
    const/16 v0, 0xbbc

    goto :goto_0

    .line 1829
    :pswitch_4
    const/16 v0, 0xbb9

    goto :goto_0

    .line 1831
    :pswitch_5
    const/16 v0, 0xbba

    goto :goto_0

    .line 1833
    :pswitch_6
    const/16 v0, 0xbbb

    goto :goto_0

    .line 1835
    :pswitch_7
    const/16 v0, 0x9c4

    goto :goto_0

    .line 1837
    :pswitch_8
    const/16 v0, 0xdac

    goto :goto_0

    .line 1839
    :pswitch_9
    const/16 v0, 0xbbe

    goto :goto_0

    .line 1841
    :pswitch_a
    const/16 v0, 0xdae

    goto :goto_0

    .line 1843
    :pswitch_b
    const/16 v0, 0xdad

    goto :goto_0

    .line 1845
    :pswitch_c
    const/16 v0, 0x7d1

    goto :goto_0

    .line 1847
    :pswitch_d
    const/16 v0, 0xfa0

    goto :goto_0

    .line 1849
    :pswitch_e
    const/16 v0, 0xbb8

    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 1851
    goto :goto_0

    .line 1819
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public getParticipantManager()Lcom/viber/voip/messages/a/a;
    .locals 1

    .prologue
    .line 935
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneApp()Lcom/viber/voip/phone/v;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->phoneApp:Lcom/viber/voip/phone/v;

    if-nez v0, :cond_0

    .line 972
    new-instance v0, Lcom/viber/voip/phone/v;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->phoneApp:Lcom/viber/voip/phone/v;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->phoneApp:Lcom/viber/voip/phone/v;

    return-object v0
.end method

.method public getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;
    .locals 4
    .parameter

    .prologue
    .line 939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 940
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    if-nez v2, :cond_1

    .line 941
    monitor-enter p0

    .line 942
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    if-nez v2, :cond_0

    .line 943
    new-instance v2, Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {v2, p0}, Lcom/viber/jni/PhoneControllerWrapper;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    .line 945
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :cond_1
    if-eqz p1, :cond_3

    .line 948
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    .line 949
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->init()V

    .line 952
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 953
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->initService()V

    .line 957
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 958
    const/4 v0, 0x6

    const-string/jumbo v1, "ViberApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Use mViberApplication.getPhoneController(false).addReadyListener()! PhoneController should be initialized asynchronously. \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    return-object v0

    .line 945
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPromoHandler()Lcom/viber/voip/f/j;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mPromoHandler:Lcom/viber/voip/f/j;

    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Lcom/viber/voip/f/j;

    invoke-direct {v0}, Lcom/viber/voip/f/j;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mPromoHandler:Lcom/viber/voip/f/j;

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mPromoHandler:Lcom/viber/voip/f/j;

    return-object v0
.end method

.method public getRecentCallsManager()Lcom/viber/voip/calls/u;
    .locals 1

    .prologue
    .line 931
    invoke-static {p0}, Lcom/viber/voip/calls/z;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/calls/u;

    move-result-object v0

    return-object v0
.end method

.method public getRecentLetterManager()Lcom/viber/voip/calls/ao;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mRecentsLettersToNumbersManager:Lcom/viber/voip/calls/ao;

    if-nez v0, :cond_0

    .line 1390
    new-instance v0, Lcom/viber/voip/calls/ao;

    invoke-direct {v0, p0}, Lcom/viber/voip/calls/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mRecentsLettersToNumbersManager:Lcom/viber/voip/calls/ao;

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mRecentsLettersToNumbersManager:Lcom/viber/voip/calls/ao;

    return-object v0
.end method

.method public getRegistrationValues()Lcom/viber/voip/registration/cp;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->registrationValues:Lcom/viber/voip/registration/cp;

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Lcom/viber/voip/registration/cp;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/cp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->registrationValues:Lcom/viber/voip/registration/cp;

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->registrationValues:Lcom/viber/voip/registration/cp;

    return-object v0
.end method

.method public getSmsDbManager()Lcom/viber/voip/sms/a;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mSmsDbManager:Lcom/viber/voip/sms/a;

    return-object v0
.end method

.method public getSoundService()Lcom/viber/voip/sound/ISoundService;
    .locals 1

    .prologue
    .line 1314
    invoke-static {p0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 525
    const-string/jumbo v0, "image_fetcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->getImageFetcher()Lcom/viber/voip/util/b/w;

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    .line 528
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;
    .locals 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mTwitterManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1091
    invoke-static {p0}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/content/Context;)Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mTwitterManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mTwitterManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/twitter/l;

    return-object v0
.end method

.method public getViberInInfo()Lcom/viber/jni/ViberInInfo;
    .locals 2

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returning viberInInfoisViberInNativeCallScreen =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mViberInInfo:Lcom/viber/jni/ViberInInfo;

    iget-boolean v1, v1, Lcom/viber/jni/ViberInInfo;->isViberInNativeCallScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isViberInTestGroup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mViberInInfo:Lcom/viber/jni/ViberInInfo;

    iget-boolean v1, v1, Lcom/viber/jni/ViberInInfo;->isViberInTestGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mViberInInfo:Lcom/viber/jni/ViberInInfo;

    return-object v0
.end method

.method public handleUnknownDialog(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/viber/jni/dialer/DialerController;->handleDialogReply(ILjava/lang/String;)V

    .line 1295
    return-void
.end method

.method public initApplication()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 551
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/chathead/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/viber/voip/ViberApplication;->mChatHeadsController:Lcom/viber/voip/messages/ui/chathead/d;

    .line 553
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    .line 554
    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->init()V

    .line 556
    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    const-string/jumbo v0, "library load failed!"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CORRUPTED_UPGRADE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 669
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/sound/SoundFactory;->init(Lcom/viber/voip/ViberApplication;)V

    .line 566
    const v2, 0x7f0c0134

    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->initService()V

    .line 570
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->b(Landroid/content/Context;)V

    .line 572
    :cond_1
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/service/contacts/sync/a;->b()V

    .line 587
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/controller/c/as;->s()V

    .line 588
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/controller/c/as;->t()V

    .line 591
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/viber/voip/sms/IncomingSmsReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->enableComponent(Landroid/content/ComponentName;)V

    .line 592
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/viber/service/KeepAliveReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->enableComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "isConnectivityTestOn"

    invoke-interface {v2, v3, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 619
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->checkKeyChainWasSaved()V

    .line 621
    const-string/jumbo v2, "com.viber.voip.WelcomeShareActivity"

    invoke-direct {p0, v2}, Lcom/viber/voip/ViberApplication;->isComponentEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    invoke-direct {p0, v1}, Lcom/viber/voip/ViberApplication;->enableShareViaViber(Z)V

    .line 625
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 627
    iget-object v2, p0, Lcom/viber/voip/ViberApplication;->mSmsDbManager:Lcom/viber/voip/sms/a;

    invoke-virtual {v2}, Lcom/viber/voip/sms/a;->a()V

    .line 629
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/contacts/c/d/b;->b()V

    .line 630
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    .line 631
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/stickers/r;->b()V

    .line 632
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bd;->f()V

    .line 636
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->F()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    const v3, 0x7f0c03ec

    invoke-virtual {p0, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 640
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/phone/v;->a(Z)V

    .line 655
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->b()V

    .line 657
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_DELETE_EMPTY_FILES"

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deleteEmptyFiles from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/w;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/viber/voip/util/be;

    invoke-direct {v0}, Lcom/viber/voip/util/be;-><init>()V

    sget-object v1, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/w;->q:Ljava/lang/String;

    new-instance v3, Lcom/viber/voip/dp;

    invoke-direct {v3, p0}, Lcom/viber/voip/dp;-><init>(Lcom/viber/voip/ViberApplication;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/be;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 668
    :cond_4
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->notifyAppListener()V

    goto/16 :goto_0

    .line 593
    :catch_0
    move-exception v2

    .line 599
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public isActivityOnForeground(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1428
    .line 1429
    const-string/jumbo v1, ""

    .line 1430
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    sget v3, Lcom/viber/voip/ViberApplication;->STACK_SIZE:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1431
    if-eqz v0, :cond_1

    .line 1432
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1433
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1434
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    const/4 v0, 0x1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 1444
    :goto_0
    const/4 v2, 0x4

    const-string/jumbo v3, "ViberApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifier isActivity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " On Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",foregroundTask:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1445
    return v1

    :cond_1
    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public isConnectivityTestOn()Z
    .locals 3

    .prologue
    .line 994
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "isConnectivityTestOn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 998
    return v0
.end method

.method public isOnForeground()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1396
    .line 1397
    const/4 v2, 0x0

    .line 1399
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1405
    :goto_0
    if-eqz v0, :cond_0

    .line 1406
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1408
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1409
    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1412
    const/4 v2, 0x4

    const-string/jumbo v3, "ViberApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ViberApplication.isOnForeground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1417
    :goto_1
    return v0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1402
    const/4 v0, 0x6

    const-string/jumbo v3, "ViberApplication"

    const-string/jumbo v4, "NPE isOnForeground, also see git history MessageControllerUtils.checkViberOnForeground"

    invoke-static {v0, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public isTouchInputEnabled()Z
    .locals 1

    .prologue
    .line 1453
    sget-object v0, Lcom/viber/voip/ViberApplication;->sEnableTouchInput:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isUseDelayedLoad()Z
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityOnForeground(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1010
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 1011
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ViberApplication;->doNotifyActivityOnForeground(ZLjava/lang/String;)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    new-instance v0, Lcom/viber/voip/dv;

    invoke-direct {v0}, Lcom/viber/voip/dv;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/dv;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 906
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/ViberApplication;->updateLanguage(Landroid/content/res/Configuration;Lcom/viber/voip/settings/l;Z)V

    .line 908
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 909
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 292
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v1, "ViberApplication, initialization STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Lcom/viber/voip/dy;

    invoke-direct {v0}, Lcom/viber/voip/dy;-><init>()V

    new-instance v1, Lcom/viber/voip/c/a;

    invoke-direct {v1}, Lcom/viber/voip/c/a;-><init>()V

    invoke-static {v0, v1}, Lcom/viber/voip/ViberEnv;->init(Lcom/viber/voip/ViberFactory;Lcom/viber/voip/DexFactory;)V

    .line 304
    sput-object p0, Lcom/viber/voip/ViberApplication;->mInstance:Lcom/viber/voip/ViberApplication;

    .line 305
    invoke-static {p0}, Lcom/viber/voip/util/a/a;->a(Landroid/content/Context;)V

    .line 308
    invoke-static {p0}, Lcom/viber/voip/settings/j;->a(Landroid/content/Context;)V

    .line 310
    invoke-static {p0}, Lcom/viber/voip/process/k;->a(Landroid/content/Context;)Lcom/viber/voip/process/k;

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->loadDex()V

    .line 315
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->d:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 316
    new-instance v0, Lcom/viber/voip/api/helper/impl/HelperServiceImpl;

    invoke-direct {v0}, Lcom/viber/voip/api/helper/impl/HelperServiceImpl;-><init>()V

    invoke-static {v0}, Lcom/viber/voip/api/helper/HelperServiceAdapter;->create(Lcom/viber/voip/api/helper/IHelperService;)V

    .line 319
    :cond_0
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->databaseList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->databaseList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 321
    :cond_1
    const-string/jumbo v0, "provider installation error"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 322
    invoke-static {p0}, Lcom/viber/voip/e/u;->a(Landroid/content/Context;)V

    .line 323
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 509
    :goto_0
    return-void

    .line 327
    :cond_2
    invoke-static {p0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/ViberApplication;)V

    .line 328
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mActivityManager:Landroid/app/ActivityManager;

    .line 329
    new-instance v0, Lcom/viber/voip/sms/a;

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v2}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sms/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mSmsDbManager:Lcom/viber/voip/sms/a;

    .line 330
    invoke-static {}, Lcom/viber/voip/api/ViberApi;->a()Lcom/viber/voip/api/ViberApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberApi;->b()V

    .line 331
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/i;->b()V

    .line 332
    invoke-static {p0}, Lcom/viber/voip/backgrounds/n;->a(Landroid/content/Context;)V

    .line 336
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    invoke-static {}, Lcom/viber/error/a;->a()Lcom/viber/error/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/error/a;->b()V

    .line 352
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->initLogger()V

    .line 354
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_5

    .line 357
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->startCrashlytics()V

    .line 362
    :cond_4
    sget-boolean v0, Lcom/viber/voip/dx;->b:Z

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_5

    .line 364
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;)V

    .line 369
    invoke-static {p0}, Lcom/google/android/gcm/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gcmRegistrationId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "373969298204"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :cond_5
    :goto_2
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_6

    .line 382
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_clear_prefs"

    invoke-interface {v0, v1, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 383
    if-eqz v0, :cond_6

    .line 384
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/util/Set;)Lcom/viber/voip/settings/l;

    .line 385
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_clear_prefs"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 390
    :cond_6
    invoke-static {}, Lcom/viber/voip/bc;->a()Lcom/viber/voip/bc;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/bc;->a(Lcom/viber/voip/settings/l;)V

    .line 393
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    .line 396
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-eq v0, v1, :cond_8

    .line 397
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->c:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_7

    .line 400
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/pixie/PixieController;->init()V

    .line 403
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EXIT from ViberApplication initialization"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    const-string/jumbo v1, "unknown"

    iput-object v1, p0, Lcom/viber/voip/ViberApplication;->mAppVersion:Ljava/lang/String;

    .line 339
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 374
    :catch_1
    move-exception v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gcmRegistrationId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 413
    :cond_8
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/ViberApplication;->updateLanguage(Landroid/content/res/Configuration;Lcom/viber/voip/settings/l;Z)V

    .line 420
    new-instance v0, Lcom/viber/voip/registration/ao;

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->x:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/registration/ao;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->configManager:Lcom/viber/voip/registration/ao;

    .line 422
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/dm;

    invoke-direct {v1, p0}, Lcom/viber/voip/dm;-><init>(Lcom/viber/voip/ViberApplication;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/pixie/PixieController;->addReadyListener(Lcom/viber/voip/pixie/PixieController$PixieReadyListener;)V

    .line 436
    new-instance v0, Lcom/viber/voip/util/b;

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mAppBackgroundChecker:Lcom/viber/voip/util/b;

    .line 437
    invoke-virtual {p0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ViberApplication;->mAppBackgroundChecker:Lcom/viber/voip/util/b;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 439
    new-instance v0, Lcom/viber/voip/ui/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mAvailableScreenWidthMeasurer:Lcom/viber/voip/ui/a;

    .line 440
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mAvailableScreenWidthMeasurer:Lcom/viber/voip/ui/a;

    invoke-static {p0, v0}, Lcom/viber/voip/stickers/an;->a(Landroid/content/Context;Lcom/viber/voip/ui/a;)V

    .line 446
    new-instance v0, Lcom/viber/voip/dn;

    invoke-direct {v0, p0}, Lcom/viber/voip/dn;-><init>(Lcom/viber/voip/ViberApplication;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/dn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 453
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v1, "ViberApplication basic initialization DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/viber/voip/ViberApplication;->disableConversationActivity(Z)V

    .line 460
    invoke-direct {p0, v0}, Lcom/viber/voip/ViberApplication;->disableContactDetailsActivity(Z)V

    .line 461
    invoke-direct {p0, v0}, Lcom/viber/voip/ViberApplication;->disableYouActivity(Z)V

    .line 462
    invoke-direct {p0, v0}, Lcom/viber/voip/ViberApplication;->disableSettingsActivity(Z)V

    .line 463
    invoke-static {}, Lcom/viber/voip/registration/dj;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->disableSyncAccountComponents(Z)V

    .line 468
    invoke-virtual {p0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 469
    new-instance v1, Lcom/viber/voip/ds;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/ds;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/dm;)V

    .line 470
    new-array v2, v5, [Lcom/viber/jni/PhoneControllerDelegate;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 471
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallbackListener()Lcom/viber/jni/dialer/DialerCallbackListener;

    move-result-object v2

    new-array v3, v5, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/viber/jni/dialer/DialerCallbackListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 472
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttPlayerListener()Lcom/viber/jni/ptt/PttPlayerListener;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v3}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/jni/ptt/PttPlayerListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 473
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttRecorderListener()Lcom/viber/jni/ptt/PttRecorderListener;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v3}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/jni/ptt/PttRecorderListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 474
    new-array v1, v5, [Lcom/viber/jni/PhoneControllerDelegate;

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 475
    new-array v1, v5, [Lcom/viber/jni/PhoneControllerDelegate;

    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 477
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    .line 478
    new-array v1, v5, [Lcom/viber/jni/PhoneControllerDelegate;

    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 480
    invoke-virtual {p0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/do;

    invoke-direct {v1, p0}, Lcom/viber/voip/do;-><init>(Lcom/viber/voip/ViberApplication;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 493
    const-string/jumbo v0, "ViberApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViberApplication initialization isOnForeground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isUseDelayedLoad():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->isUseDelayedLoad()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->isUseDelayedLoad()Z

    move-result v0

    if-nez v0, :cond_9

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 497
    :cond_9
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/pixie/PixieController;->init()V

    .line 498
    new-instance v0, Lcom/viber/voip/util/bb;

    invoke-direct {v0}, Lcom/viber/voip/util/bb;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mDownloadValve:Lcom/viber/voip/util/bb;

    .line 500
    new-instance v0, Lcom/viber/voip/util/upload/a/b;

    invoke-direct {v0}, Lcom/viber/voip/util/upload/a/b;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaServerController:Lcom/viber/voip/util/upload/a/b;

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.api.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 504
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_a

    .line 505
    invoke-static {}, Lcom/viber/voip/market/MarketReceiver;->a()V

    .line 508
    :cond_a
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v1, "ViberApplication initialization DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/viber/voip/ViberApplication;->getImageFetcher()Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/w;->f()V

    .line 691
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a;->c()V

    .line 692
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 693
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1610
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/viber/voip/ViberApplication;->updateLanguage(Landroid/content/res/Configuration;Lcom/viber/voip/settings/l;Z)V

    .line 1613
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 878
    :try_start_0
    const-string/jumbo v0, "onTerminate"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 880
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    if-eqz v0, :cond_0

    .line 881
    sget-object v0, Lcom/viber/voip/ViberApplication;->logger:Lcom/viber/logger/a;

    invoke-interface {v0}, Lcom/viber/logger/a;->a()V

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->a()V

    .line 884
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/calls/u;->a()V

    .line 885
    invoke-static {p0}, Lcom/viber/voip/stickers/e/c;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaServerController:Lcom/viber/voip/util/upload/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaServerController:Lcom/viber/voip/util/upload/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/a/b;->a()V

    .line 891
    :cond_1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 892
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerMediaMountListener(Lcom/viber/voip/du;)V
    .locals 1
    .parameter

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaMountListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaMountListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "is_activated"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 849
    if-nez p1, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->clearState()V

    .line 851
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/sms/s;->a(ZZ)V

    .line 852
    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->resetDeviceKey()V

    .line 853
    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->disconnect()V

    .line 860
    :goto_0
    invoke-direct {p0, p1}, Lcom/viber/voip/ViberApplication;->enableShareViaViber(Z)V

    .line 861
    return-void

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 857
    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->setDeviceKey([B)V

    goto :goto_0
.end method

.method public setAddressBookVersion(I)V
    .locals 2
    .parameter

    .prologue
    .line 830
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "AddressBookVersion"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 831
    return-void
.end method

.method public setCachedOnlineContactInfo([Lcom/viber/jni/OnlineContactInfo;)V
    .locals 7
    .parameter

    .prologue
    .line 1747
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 1748
    iget-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 1753
    :cond_0
    iget-boolean v3, v2, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/viber/jni/OnlineContactInfo;->time:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1754
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    .line 1757
    :cond_1
    sget-object v3, Lcom/viber/voip/ViberApplication;->onlineContactInfoCache:Lcom/viber/voip/util/bg;

    iget-object v4, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/viber/voip/util/bg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1759
    :cond_2
    return-void
.end method

.method public setCachedUnknownNumberInfo(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1766
    if-eqz p2, :cond_0

    .line 1767
    sget-object v0, Lcom/viber/voip/ViberApplication;->unknownNumberInfoCache:Lcom/viber/voip/util/bg;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/util/bg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    :goto_0
    return-void

    .line 1769
    :cond_0
    sget-object v0, Lcom/viber/voip/ViberApplication;->unknownNumberInfoCache:Lcom/viber/voip/util/bg;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setConnectivityTestMode(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1006
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "isConnectivityTestOn"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 1007
    return-void
.end method

.method protected showSwitchToGSMDialog(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SWITCH_TO_GSM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1299
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1301
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 1302
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/dq;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/dq;-><init>(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1311
    return-void
.end method

.method protected showUnknownDialog(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1284
    invoke-static {}, Lcom/viber/voip/app/ViberActivity;->getLastUsedActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/phone/PhoneActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-static {}, Lcom/viber/voip/app/ViberActivity;->getLastUsedActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0, p2}, Lcom/viber/voip/phone/PhoneActivity;->a(Ljava/lang/String;)V

    .line 1290
    :goto_0
    return-void

    .line 1288
    :cond_0
    invoke-virtual {p0, p2}, Lcom/viber/voip/ViberApplication;->handleUnknownDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterMediaMountListener(Lcom/viber/voip/du;)V
    .locals 1
    .parameter

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/viber/voip/ViberApplication;->mMediaMountListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1781
    return-void
.end method

.method public updateAddressBookVersion()V
    .locals 3

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getAddressBookVersion()I

    move-result v0

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAddressBookVersion old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 840
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->setAddressBookVersion(I)V

    .line 842
    return-void
.end method

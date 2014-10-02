.class public Lcom/viber/voip/pixie/PixieControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/pixie/PixieController;


# static fields
.field public static final INVALID_PORT:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mPixieSettings:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

.field private static sInstance:Lcom/viber/voip/pixie/PixieController;


# instance fields
.field private mIsOkayToAccessNetwork:Z

.field private mLocalProxyPort:I

.field private mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

.field private mPixieHandler:Landroid/os/Handler;

.field mPixieListener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

.field private mPixieServices:Lcom/viber/voip/pixie/PixieServices;

.field private mReadyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/pixie/PixieController$PixieReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldUsePixieSystem:Z

.field private mStartPixieOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;

.field private mStartPixieWasCalled:Z

.field private mUpdateEdgeListOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;

.field private mUpdatePixieModeOnPhoneControllerInitialized:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

.field private mUseLocalProxy:Z

.field startPixieTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/pixie/PixieController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mIsOkayToAccessNetwork:Z

    .line 51
    iput-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieWasCalled:Z

    .line 53
    iput-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    .line 58
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$1;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;

    .line 125
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$2;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdateEdgeListOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;

    .line 136
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$3;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdatePixieModeOnPhoneControllerInitialized:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    .line 148
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$4;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieListener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    .line 163
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$5;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$5;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->startPixieTask:Ljava/lang/Runnable;

    .line 257
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PixieThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieHandler:Landroid/os/Handler;

    .line 260
    return-void
.end method

.method public static declared-synchronized _getInstance()Lcom/viber/voip/pixie/PixieController;
    .locals 2

    .prologue
    .line 249
    const-class v1, Lcom/viber/voip/pixie/PixieControllerImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->sInstance:Lcom/viber/voip/pixie/PixieController;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;-><init>()V

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->sInstance:Lcom/viber/voip/pixie/PixieController;

    .line 251
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->getPixieSettings()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieSettings:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    .line 253
    :cond_0
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->sInstance:Lcom/viber/voip/pixie/PixieController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerReadyListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/viber/voip/pixie/PixieControllerImpl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/pixie/PixieControllerImpl;->startPixieIfNeeded(Z)V

    return-void
.end method

.method static synthetic access$1100()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieSettings:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/viber/voip/pixie/PixieControllerImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/viber/voip/pixie/PixieControllerImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/viber/voip/pixie/PixieControllerImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieWasCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/pixie/PixieControllerImpl;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I

    return v0
.end method

.method static synthetic access$302(Lcom/viber/voip/pixie/PixieControllerImpl;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I

    return p1
.end method

.method static synthetic access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;

    return-object v0
.end method

.method static synthetic access$402(Lcom/viber/voip/pixie/PixieControllerImpl;Lcom/viber/voip/pixie/PixieServices;)Lcom/viber/voip/pixie/PixieServices;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;

    return-object p1
.end method

.method static synthetic access$502(Lcom/viber/voip/pixie/PixieControllerImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mUseLocalProxy:Z

    return p1
.end method

.method static synthetic access$600(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/viber/voip/pixie/PixieControllerImpl;->notifyItsOkayToUseNetwork()V

    return-void
.end method

.method static synthetic access$700(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdatePixieModeOnPhoneControllerInitialized:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/viber/voip/pixie/PixieControllerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerReadyListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdateEdgeListOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;

    return-object v0
.end method

.method private static getPixieSettings()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_AUTO:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    return-object v0
.end method

.method private static isServerProcess()Z
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyItsOkayToUseNetwork()V
    .locals 5

    .prologue
    .line 296
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    monitor-enter v1

    .line 297
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mIsOkayToAccessNetwork:Z

    .line 298
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 299
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/pixie/PixieController$PixieReadyListener;

    .line 303
    const/4 v2, 0x3

    sget-object v3, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Pixie: Notifying that its okay to use network."

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-interface {v0}, Lcom/viber/voip/pixie/PixieController$PixieReadyListener;->onReady()V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 306
    :cond_0
    return-void
.end method

.method public static setupClientToUseLocalProxy(I)V
    .locals 1
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;-><init>(I)V

    .line 122
    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 123
    return-void
.end method

.method private declared-synchronized startPixieIfNeeded(Z)V
    .locals 3
    .parameter

    .prologue
    .line 272
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieWasCalled:Z

    if-nez v0, :cond_1

    .line 273
    :cond_0
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->startPixieTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->startPixieTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieWasCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_1
    monitor-exit p0

    return-void

    .line 277
    :cond_2
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Pixie: client-only setup..."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$6;

    invoke-direct {v0, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$6;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/pixie/PixieControllerImpl$6;->execute(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addReadyListener(Lcom/viber/voip/pixie/PixieController$PixieReadyListener;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 312
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mIsOkayToAccessNetwork:Z

    .line 314
    if-nez v0, :cond_0

    .line 315
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v2, 0x3

    sget-object v3, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Pixie: Adding listener for pixie decision."

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Pixie: Immediate notification that its okay to use network dispatched tolistener."

    invoke-static {v5, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-interface {p1}, Lcom/viber/voip/pixie/PixieController$PixieReadyListener;->onReady()V

    .line 323
    :cond_1
    return-void

    .line 318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocalProxyPort()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I

    return v0
.end method

.method public getPixieMode()I
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/viber/voip/pixie/PixieControllerImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 350
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices;->getInstance(Landroid/content/Context;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/viber/voip/pixie/PixieServices;->isCallsOverUDP()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPixiePort()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;

    .line 266
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/pixie/PixieControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Pixie: initialize"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-direct {p0, v3}, Lcom/viber/voip/pixie/PixieControllerImpl;->startPixieIfNeeded(Z)V

    .line 269
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z

    return v0
.end method

.method public removeReadyListener(Lcom/viber/voip/pixie/PixieController$PixieReadyListener;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mReadyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 329
    monitor-exit v1

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useLocalProxy()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl;->mUseLocalProxy:Z

    return v0
.end method

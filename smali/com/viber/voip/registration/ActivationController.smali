.class public Lcom/viber/voip/registration/ActivationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVATION_STEP_ACTIVATION:I = 0x1

.field public static final ACTIVATION_STEP_CHECK_USER_DATA:I = 0x6

.field public static final ACTIVATION_STEP_COMPLETE:I = 0x8

.field public static final ACTIVATION_STEP_COMPLETE_FAST_REG:I = 0x3

.field public static final ACTIVATION_STEP_COMPLETE_USUAL_REG:I = 0x2

.field public static final ACTIVATION_STEP_NEW_USER:I = 0x5

.field public static final ACTIVATION_STEP_REGISTRATION:I = 0x0

.field public static final ACTIVATION_STEP_SET_USER_DATA:I = 0x7

.field public static final ACTIVATION_STEP_SPLASH:I = 0x4

.field public static final CONNECTION_WAIT_TIMEOUT:I = 0x2710

.field public static final CONTROLLER_VERSION:I = 0x1

.field public static final EXTRA_ACTIVATION_CODE:Ljava/lang/String; = "activation_code"

.field public static final INTENT_PREF_FRESH_START:Ljava/lang/String; = "fresh_start"

.field public static final LOG_TAG:Ljava/lang/String; = "ActivationController"

.field public static final PREF_ACTIVATION_VERSION:Ljava/lang/String; = "activation_ver"


# instance fields
.field private acticationCode:Ljava/lang/String;

.field private final activationManager:Lcom/viber/voip/registration/ab;

.field private app:Lcom/viber/voip/ViberApplication;

.field private callbacks:Lcom/viber/voip/registration/r;

.field private final deactivationManager:Lcom/viber/voip/registration/bc;

.field private handler:Landroid/os/Handler;

.field private mNetworkListener:Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field private mStateChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/registration/p;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationManager:Lcom/viber/voip/registration/cj;

.field private waitServiceConnectedTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    .line 223
    new-instance v0, Lcom/viber/voip/registration/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/g;-><init>(Lcom/viber/voip/registration/ActivationController;)V

    iput-object v0, p0, Lcom/viber/voip/registration/ActivationController;->waitServiceConnectedTimeout:Ljava/lang/Runnable;

    .line 236
    new-instance v0, Lcom/viber/voip/registration/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/h;-><init>(Lcom/viber/voip/registration/ActivationController;)V

    iput-object v0, p0, Lcom/viber/voip/registration/ActivationController;->mNetworkListener:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 99
    iput-object p1, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    .line 101
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/ActivationController;->handler:Landroid/os/Handler;

    .line 103
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->a:Ljava/lang/String;

    .line 104
    new-instance v1, Lcom/viber/voip/registration/ab;

    invoke-direct {v1, v0}, Lcom/viber/voip/registration/ab;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/viber/voip/registration/ActivationController;->activationManager:Lcom/viber/voip/registration/ab;

    .line 106
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->b:Ljava/lang/String;

    .line 107
    new-instance v1, Lcom/viber/voip/registration/cj;

    invoke-direct {v1, v0}, Lcom/viber/voip/registration/cj;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/viber/voip/registration/ActivationController;->registrationManager:Lcom/viber/voip/registration/cj;

    .line 109
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->d:Ljava/lang/String;

    .line 110
    new-instance v1, Lcom/viber/voip/registration/bc;

    invoke-direct {v1, v0}, Lcom/viber/voip/registration/bc;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/viber/voip/registration/ActivationController;->deactivationManager:Lcom/viber/voip/registration/bc;

    .line 111
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/jni/PhoneControllerDelegateAdapter;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->mNetworkListener:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/voip/registration/ActivationController;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->waitServiceConnectedTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/viber/voip/registration/ActivationController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;

    return-object v0
.end method

.method static synthetic access$800(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/registration/df;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/ActivationController;->notifyCallbacks(Lcom/viber/voip/registration/df;)V

    return-void
.end method

.method private checkIsNeedToSetUserData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->getControllerVersion()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 196
    const-string/jumbo v0, "checkIsNeedToSetUserData not need to check user info - this is just upgrade from old version"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 197
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 221
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/e;-><init>(Lcom/viber/voip/registration/ActivationController;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto :goto_0
.end method

.method private clearShowCarlosMessagesPref()V
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "show_carlos_messages"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 445
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/fz;->b()V

    .line 447
    :cond_0
    return-void
.end method

.method public static deActivate(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/registration/DeActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string/jumbo v1, "skip_dialog"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private getDefaultStep()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x4

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    return-void
.end method

.method private notifyActivationStateListeners(I)V
    .locals 3
    .parameter

    .prologue
    .line 656
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    monitor-enter v1

    .line 657
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 658
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/p;

    .line 660
    invoke-interface {v0, p1}, Lcom/viber/voip/registration/p;->a(I)V

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 662
    :cond_0
    return-void
.end method

.method private notifyCallbacks(Lcom/viber/voip/registration/df;)V
    .locals 2
    .parameter

    .prologue
    .line 467
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/m;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/registration/m;-><init>(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/registration/df;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    return-void
.end method

.method private restoreDefaultValues(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 432
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lcom/viber/voip/settings/ui/ax;->a(Lcom/viber/voip/settings/l;)V

    .line 435
    invoke-static {v0}, Lcom/viber/voip/settings/ui/bb;->a(Lcom/viber/voip/settings/l;)V

    .line 436
    invoke-static {p1, v0}, Lcom/viber/voip/settings/ui/bj;->a(Landroid/app/Activity;Lcom/viber/voip/settings/l;)V

    .line 437
    invoke-static {v0}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/settings/l;)V

    .line 438
    invoke-static {v0}, Lcom/viber/voip/settings/ui/a;->a(Lcom/viber/voip/settings/l;)V

    .line 439
    invoke-static {}, Lcom/viber/voip/settings/ui/av;->b()V

    .line 440
    return-void
.end method

.method private setSimSerial(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .line 324
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activated_sim_serial"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 325
    return-void
.end method

.method private showActivationScreen()V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->acticationCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 272
    const-string/jumbo v1, "activation_code"

    iget-object v2, p0, Lcom/viber/voip/registration/ActivationController;->acticationCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/registration/ActivationController;->acticationCode:Ljava/lang/String;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method private showSplashScreen()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->clearAllRegValues()V

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SPLASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method private startActivity(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method


# virtual methods
.method checkNetworkConnection()V
    .locals 2

    .prologue
    .line 340
    sget-boolean v0, Lcom/viber/voip/util/am;->c:Z

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 343
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/viber/voip/d/a;

    const-string/jumbo v1, "Active network is not found"

    invoke-direct {v0, v1}, Lcom/viber/voip/d/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 349
    if-nez v0, :cond_1

    .line 350
    new-instance v0, Lcom/viber/voip/d/a;

    const-string/jumbo v1, "Active network is not connected"

    invoke-direct {v0, v1}, Lcom/viber/voip/d/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    return-void
.end method

.method public clearAllRegValues()V
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->h()V

    .line 640
    return-void
.end method

.method public clearState()V
    .locals 2

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivationController;->getDefaultStep()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 266
    return-void
.end method

.method public deActivateDone(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->clearState()V

    .line 374
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/ActivationController;->setSimSerial(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    .line 376
    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->setActivated(Z)V

    .line 378
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/c/d/b;->f()V

    .line 380
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->clearAllRegValues()V

    .line 381
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivationController;->clearShowCarlosMessagesPref()V

    .line 382
    invoke-virtual {p0, v4}, Lcom/viber/voip/registration/ActivationController;->setShouldDeactivate(Z)V

    .line 384
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/util/fz;->j()V

    .line 387
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_MARKET_PRODUCTS_SYNCED"

    invoke-interface {v1, v2, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 388
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "VIBER_OUT_ENABLED"

    invoke-interface {v1, v2, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 390
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->X()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 392
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/service/contacts/sync/a;->e()V

    .line 394
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/ActivationController;->restoreDefaultValues(Landroid/app/Activity;)V

    .line 395
    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getSecureCallsController()Lcom/viber/jni/secure/SecureCallsController;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/jni/secure/SecureCallsController;->handleClearSecureCallStorage()I

    .line 397
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/rakuten/l;->m()V

    .line 398
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/viber/voip/j/a;->a(IZ)V

    .line 400
    invoke-static {}, Lcom/viber/voip/registration/bk;->a()V

    .line 401
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/registration/dj;->a(Z)V

    .line 402
    invoke-static {}, Lcom/viber/voip/user/UserData;->clear()V

    .line 403
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/e/u;->f()V

    .line 404
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/fb/s;->a()V

    .line 405
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/c/d/b;->f()V

    .line 406
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/registration/j;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/voip/registration/j;-><init>(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/ViberApplication;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Lcom/viber/voip/calls/u;->a(Lcom/viber/voip/calls/y;)V

    .line 429
    return-void
.end method

.method getActicationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->acticationCode:Ljava/lang/String;

    return-object v0
.end method

.method getActivationManager()Lcom/viber/voip/registration/ab;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->activationManager:Lcom/viber/voip/registration/ab;

    return-object v0
.end method

.method public getAlphaCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getControllerVersion()I
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activation_ver"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCodeInt()I
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->b()I

    move-result v0

    return v0
.end method

.method getDeActivationManager()Lcom/viber/voip/registration/bc;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->deactivationManager:Lcom/viber/voip/registration/bc;

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/viber/voip/registration/dj;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainDeviceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/registration/dl;->d:Lcom/viber/voip/registration/dl;

    :goto_0
    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/viber/voip/registration/dl;->a:Lcom/viber/voip/registration/dl;

    goto :goto_0
.end method

.method public getKeyChainHardwareKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    sget-object v0, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/registration/dl;->e:Lcom/viber/voip/registration/dl;

    :goto_0
    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/viber/voip/registration/dl;->b:Lcom/viber/voip/registration/dl;

    goto :goto_0
.end method

.method public getRegNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegNumberCanonized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRegistrationManager()Lcom/viber/voip/registration/cj;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->registrationManager:Lcom/viber/voip/registration/cj;

    return-object v0
.end method

.method public getStep()I
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activation_step"

    invoke-direct {p0}, Lcom/viber/voip/registration/ActivationController;->getDefaultStep()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isActivationCompleted()Z
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerActivationStateListener(Lcom/viber/voip/registration/p;)V
    .locals 2
    .parameter

    .prologue
    .line 643
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    monitor-exit v1

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRegistrationCallback()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;

    .line 491
    return-void
.end method

.method public resumeActivation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v0

    .line 116
    if-le v0, v4, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->clearState()V

    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v0

    .line 121
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_SPLASH"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivationController;->showSplashScreen()V

    goto :goto_0

    .line 128
    :pswitch_1
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_REGISTRATION"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/viber/voip/registration/ActivationController;->setControllerVersion(I)V

    .line 130
    new-instance v0, Lcom/viber/voip/registration/q;

    invoke-direct {v0, p0, v5}, Lcom/viber/voip/registration/q;-><init>(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/registration/e;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    const-string/jumbo v0, "com.viber.voip.action.REGISTER"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/ActivationController;->startActivity(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/viber/voip/registration/ActivationController;->setShouldDeactivate(Z)V

    .line 133
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/fz;->j()V

    goto :goto_0

    .line 137
    :pswitch_2
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_ACTIVATION"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->f()V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/viber/voip/messages/controller/x;->a(ZLcom/viber/voip/messages/controller/z;)V

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivationController;->showActivationScreen()V

    goto :goto_0

    .line 148
    :pswitch_3
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_COMPLETE_FAST_REG"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 151
    :pswitch_4
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_COMPLETE_USUAL_REG"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "need_recover_groups"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->setActivatedSimSerial()V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->setActivated(Z)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->b()V

    .line 157
    invoke-virtual {p0, v4, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    goto/16 :goto_0

    .line 161
    :pswitch_5
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_CHECK_USER_INFO"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/ak;->a:Lcom/viber/voip/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 163
    const-string/jumbo v0, "com.viber.voip.action.NEW_USER"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/ActivationController;->startActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :pswitch_6
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_CHECK_USER_DATA"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 168
    invoke-static {v3}, Lcom/viber/voip/user/UserData;->setNeedSyncUserInfo(Z)V

    .line 169
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivationController;->checkIsNeedToSetUserData()V

    goto/16 :goto_0

    .line 173
    :pswitch_7
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_SET_USER_DATA"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "com.viber.voip.action.ENTER_DETAILS_SCREEN"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/ActivationController;->startActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :pswitch_8
    const-string/jumbo v0, "resumeActivation ACTIVATION_STEP_COMPLETE"

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "com.viber.voip.action.REGISTER"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/ActivationController;->startActivity(Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "fresh_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method setActicationCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/viber/voip/registration/ActivationController;->acticationCode:Ljava/lang/String;

    .line 358
    return-void
.end method

.method setActivatedSimSerial()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 318
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-direct {p0, v0}, Lcom/viber/voip/registration/ActivationController;->setSimSerial(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setControllerVersion(I)V
    .locals 2
    .parameter

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setControllerVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activation_ver"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 306
    return-void
.end method

.method public setDeviceKey(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 574
    invoke-static {p1}, Lcom/viber/voip/registration/dj;->a(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public setKeyChainDeviceKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 582
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/registration/dl;->d:Lcom/viber/voip/registration/dl;

    :goto_0
    invoke-static {v0, p1}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 583
    return-void

    .line 582
    :cond_0
    sget-object v0, Lcom/viber/voip/registration/dl;->a:Lcom/viber/voip/registration/dl;

    goto :goto_0
.end method

.method public setKeyChainHardwareKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    sget-object v0, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    invoke-static {v0, p1}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public setKeyChainUDID(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/registration/dl;->e:Lcom/viber/voip/registration/dl;

    :goto_0
    invoke-static {v0, p1}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 595
    return-void

    .line 594
    :cond_0
    sget-object v0, Lcom/viber/voip/registration/dl;->b:Lcom/viber/voip/registration/dl;

    goto :goto_0
.end method

.method public setShouldDeactivate(Z)V
    .locals 2
    .parameter

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShouldDeactivate() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "should_deactivate"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 570
    return-void
.end method

.method public setStep(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activation_step"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 291
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/ActivationController;->notifyActivationStateListeners(I)V

    .line 292
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivationController;->resumeActivation()V

    .line 293
    :cond_0
    return-void
.end method

.method public startRegistration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/registration/r;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p5, p0, Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;

    .line 463
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/viber/voip/registration/s;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/registration/s;-><init>(Lcom/viber/voip/registration/ActivationController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/registration/e;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public storeRegNumberCanonized(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 635
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/registration/cp;->a(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public storeRegValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/registration/cp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public unregisterActivationStateListener(Lcom/viber/voip/registration/p;)V
    .locals 2
    .parameter

    .prologue
    .line 649
    iget-object v1, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/registration/ActivationController;->mStateChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 651
    monitor-exit v1

    .line 652
    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

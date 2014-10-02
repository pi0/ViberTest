.class public Lcom/viber/voip/viberout/e;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/viber/voip/viberout/e;


# instance fields
.field private b:Z

.field private d:Lcom/viber/voip/viberout/promotion/b;

.field private e:Landroid/os/Handler;

.field private f:Lcom/viber/voip/viberout/a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/viber/voip/phone/call/a;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/Runnable;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/viberout/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/viberout/e;->e:Landroid/os/Handler;

    .line 345
    new-instance v0, Lcom/viber/voip/viberout/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/g;-><init>(Lcom/viber/voip/viberout/e;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/e;->m:Ljava/lang/Runnable;

    .line 108
    const-string/jumbo v0, "ctor()"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/viber/voip/viberout/promotion/b;

    invoke-direct {v0}, Lcom/viber/voip/viberout/promotion/b;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/viberout/e;->d:Lcom/viber/voip/viberout/promotion/b;

    .line 110
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->d:Lcom/viber/voip/viberout/promotion/b;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/promotion/b;->d()V

    .line 111
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->d:Lcom/viber/voip/viberout/promotion/b;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/promotion/b;->c()V

    .line 112
    new-instance v0, Lcom/viber/voip/viberout/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/a;-><init>(Lcom/viber/voip/viberout/e;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/e;->f:Lcom/viber/voip/viberout/a;

    .line 113
    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "vo_intro_splash_shown"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 90
    const-string/jumbo v1, "vo_contacts_splash_shown"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 91
    const-string/jumbo v1, "vo_contact_info_splash_shown"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 92
    const-string/jumbo v1, "vo_thank_you_splash_shown"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 94
    const-string/jumbo v1, "vo_contact_list_switched_to_all"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 95
    const-string/jumbo v1, "vo_trial_call_ended"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 97
    const-string/jumbo v1, "vo_exposure"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 98
    const-string/jumbo v1, "PREF_VO_APP_ENTRY_ICON_COUNT"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 99
    const-string/jumbo v1, "PREF_VO_APP_ENTRY_NOTIFICATION_COUNT"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 100
    const-string/jumbo v1, "vo_activation_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 102
    const-string/jumbo v1, "PREF_VO_GROW_SPLASH_COUNT"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 103
    const-string/jumbo v1, "PREF_VO_GROW_SPLASH_TIME"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 104
    const-string/jumbo v1, "PREF_VO_GROW_UPGRADE_SPLASH_TIME"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 105
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackVOGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/bc;->a(I)V

    .line 162
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAppFreshInstall, dbVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 363
    invoke-static {p0}, Lcom/viber/voip/viberout/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    .line 365
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_exposure"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 368
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAppUpgrade, oldDbVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dbVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 371
    invoke-static {p0}, Lcom/viber/voip/viberout/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/16 v0, 0x2d

    if-lt p2, v0, :cond_0

    .line 373
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_exposure"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 376
    :cond_0
    return-void
.end method

.method private a(Lcom/viber/voip/billing/ae;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a()Z

    move-result v0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBuyCredits, endReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fromDialpad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 511
    invoke-static {p1}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/ae;)V

    .line 512
    if-eqz v0, :cond_0

    .line 513
    invoke-static {p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Lcom/viber/voip/billing/ae;)V

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/billing/ae;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/viberout/e;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->k()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/viberout/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/viber/voip/viberout/e;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/viberout/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/viber/voip/viberout/e;->n:Z

    return v0
.end method

.method public static declared-synchronized c()Lcom/viber/voip/viberout/e;
    .locals 2

    .prologue
    .line 134
    const-class v1, Lcom/viber/voip/viberout/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/viberout/e;->c:Lcom/viber/voip/viberout/e;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/viber/voip/viberout/e;

    invoke-direct {v0}, Lcom/viber/voip/viberout/e;-><init>()V

    sput-object v0, Lcom/viber/voip/viberout/e;->c:Lcom/viber/voip/viberout/e;

    .line 136
    new-instance v0, Lcom/viber/voip/viberout/f;

    invoke-direct {v0}, Lcom/viber/voip/viberout/f;-><init>()V

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->getViberApp(Lcom/viber/voip/dw;)V

    .line 148
    :cond_0
    sget-object v0, Lcom/viber/voip/viberout/e;->c:Lcom/viber/voip/viberout/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/viber/voip/viberout/i;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/viberout/i;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 290
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/viber/voip/viberout/i;->a:Z

    .line 291
    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-static {p0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    sget-object v0, Lcom/viber/voip/viberout/e;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method static synthetic g()Lcom/viber/voip/viberout/e;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/viber/voip/viberout/e;->c:Lcom/viber/voip/viberout/e;

    return-object v0
.end method

.method private h()J
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 334
    const-string/jumbo v0, "scheduleForegroundCheck()"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/viberout/e;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/viberout/e;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 339
    const-string/jumbo v0, "resetForegroundCheck()"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/viberout/e;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/e;->j:Lcom/viber/voip/phone/call/a;

    .line 455
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/viberout/h;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/h;-><init>(Lcom/viber/voip/viberout/e;)V

    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v2}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 478
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/viberout/e;->b(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    .line 240
    return-void
.end method

.method public a(Lcom/viber/voip/viberout/i;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->j()V

    .line 296
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/viberout/e;->k:J

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkActivityExit, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p1, Lcom/viber/voip/viberout/i;->a:Z

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->d:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 301
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/viberout/promotion/a;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fireEvent: Secondary device, not sending event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->d:Lcom/viber/voip/viberout/promotion/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->d:Lcom/viber/voip/viberout/promotion/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/viberout/promotion/b;->b(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/viber/voip/viberout/e;->b:Z

    .line 121
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "VIBER_OUT_ENABLED"

    iget-boolean v2, p0, Lcom/viber/voip/viberout/e;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 124
    if-nez p1, :cond_1

    .line 125
    const-string/jumbo v1, "vo_activation_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 130
    :cond_0
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.viberout.STATE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "vo_enabled"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    const-string/jumbo v1, "vo_activation_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 127
    const-string/jumbo v1, "vo_activation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->j()V

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "com.viber.voip.action.CALL_FROM_BACKGROUND"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/e;->c(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/viber/voip/WelcomeActivity;

    if-eq v1, v2, :cond_1

    invoke-static {p2}, Lcom/viber/voip/e/u;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Intent from notification, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.viber.voip.action.CALL_INCOMING"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.viber.voip.action.VIEW_CONTACT"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.viber.voip.action.MESSAGES"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.viber.voip.action.CONVERSATION"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/e;->c(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/viber/voip/WelcomeActivity;

    if-ne v1, v2, :cond_3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.intent.action.MAIN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.viber.voip.action.DEFAULT"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->b:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 285
    :cond_2
    :goto_1
    new-instance v0, Lcom/viber/voip/viberout/i;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/viberout/i;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/viber/voip/WelcomeActivity;

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "EXTRA_FROM_LAUNCH_ACTIVITY"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->b:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    goto :goto_1

    .line 275
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/viber/voip/WelcomeActivity;

    if-eq v1, v2, :cond_2

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.intent.action.CALL"

    aput-object v2, v1, v4

    const-string/jumbo v2, "android.intent.action.CALL_BUTTON"

    aput-object v2, v1, v5

    const-string/jumbo v2, "android.intent.action.VIEW"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/viber/voip/dl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/e;->c(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 490
    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    const/16 v0, 0xf

    if-ne p2, v0, :cond_2

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleCallEnded, no-credit-like endReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->j:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 493
    new-instance v0, Lcom/viber/voip/billing/ae;

    iget-object v1, p0, Lcom/viber/voip/viberout/e;->j:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, v0, p2}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/billing/ae;I)V

    .line 505
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 496
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleCallEnded, invalid-number-like endReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->j:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL_DIALOG"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 500
    const-string/jumbo v0, "last_resolved"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 501
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 502
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 503
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->j:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/viberout/i;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->j()V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkActivityOnBackPressed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/viberout/e;->k:J

    .line 308
    iget-boolean v0, p1, Lcom/viber/voip/viberout/i;->a:Z

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->d:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 311
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 401
    iget-wide v2, p0, Lcom/viber/voip/viberout/e;->i:J

    sub-long v2, v0, v2

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastOriginalNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", elapsed since last time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 404
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/viber/voip/viberout/e;->h:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/viber/voip/viberout/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x7d0

    cmp-long v2, v2, v5

    if-gez v2, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastOriginalNumber: ignoring substitution of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/viberout/e;->g:Ljava/lang/String;

    .line 416
    iput-object v4, p0, Lcom/viber/voip/viberout/e;->h:Ljava/lang/String;

    .line 417
    iput-wide v0, p0, Lcom/viber/voip/viberout/e;->i:J

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallUiVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 486
    iput-boolean p1, p0, Lcom/viber/voip/viberout/e;->n:Z

    .line 487
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/viberout/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-object p1

    .line 435
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/viber/voip/viberout/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/viber/voip/viberout/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    iget-object p1, p0, Lcom/viber/voip/viberout/e;->g:Ljava/lang/String;

    goto :goto_0

    .line 447
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ALERT! getOriginalNumber(): last number match failed: canonizedNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastOriginalCanonizedNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/viber/voip/viberout/i;)V
    .locals 4
    .parameter

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkActivityOnStop, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/viberout/e;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->i()V

    .line 318
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 220
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_contact_list_switched_to_all"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v0, "switchContactListToAllContacts, all contacts switch not yet made, switching contacts filter to 0"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_contact_list_switched_to_all"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 223
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "contacts_filter"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string/jumbo v0, "switchContactListToAllContacts, all contacts switch already made."

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/viber/voip/viberout/i;)V
    .locals 2
    .parameter

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkActivityOnStart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/viber/voip/viberout/e;->j()V

    .line 323
    iget-boolean v0, p0, Lcom/viber/voip/viberout/e;->l:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/viberout/e;->l:Z

    .line 325
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->b:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 327
    :cond_0
    return-void
.end method

.method public e()I
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "vo_exposure"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Lcom/viber/voip/viberout/a;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->f:Lcom/viber/voip/viberout/a;

    return-object v0
.end method

.method public onViberOutGroup(I)V
    .locals 2
    .parameter

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViberOutGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/e;->a(I)V

    .line 397
    return-void
.end method

.method public onViberOutState(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    .line 174
    packed-switch p1, :pswitch_data_0

    move v0, v2

    move v3, v2

    move v4, v2

    .line 200
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v5

    const-string/jumbo v6, "VIBER_OUT_STATE"

    invoke-interface {v5, v6, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 203
    invoke-virtual {p0, v4}, Lcom/viber/voip/viberout/e;->a(Z)V

    .line 205
    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/viber/voip/viberout/e;->e()I

    move-result v4

    .line 207
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 209
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/viberout/e;->d:Lcom/viber/voip/viberout/promotion/b;

    invoke-virtual {v2, v3, v1}, Lcom/viber/voip/viberout/promotion/b;->a(ZZ)V

    .line 211
    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->g:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/e;->f:Lcom/viber/voip/viberout/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/a;->b(Z)V

    .line 217
    :cond_1
    return-void

    :pswitch_0
    move v0, v1

    move v3, v2

    move v4, v1

    .line 179
    goto :goto_0

    .line 187
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "VIBER_OUT_STATE"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 189
    const-string/jumbo v0, "Transition VO_TRIAL_CALL_SPLASH -> VO_TRIAL_SPLASH, considering as trial-ended event"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->e(Ljava/lang/String;)V

    move v0, v1

    move v3, v2

    move v4, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    move v3, v1

    move v4, v1

    .line 196
    goto :goto_0

    :cond_2
    move v1, v2

    .line 207
    goto :goto_1

    :cond_3
    move v0, v2

    move v3, v2

    move v4, v1

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

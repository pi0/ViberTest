.class public Lcom/viber/voip/viberout/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/viber/voip/viberout/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/viberout/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_VO_GROW_SPLASH_COUNT"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/viberout/a;->c:I

    .line 53
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "GROW_VIBER_OUT_DEBUG_ENABLED"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/a;->a(Z)V

    .line 55
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "VIBER_OUT_ENABLED"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/viber/voip/viberout/e;->e()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/a;->b(Z)V

    .line 59
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/a;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/viber/voip/viberout/a;->f()V

    return-void
.end method

.method private a(Lcom/viber/voip/viberout/d;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 316
    const-string/jumbo v0, "checkPromoGrowUpgradeConditions"

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_VO_GROW_UPGRADE_SPLASH_TIME"

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/viber/voip/viberout/d;->a(Z)V

    .line 332
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Lcom/viber/voip/viberout/c;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/viberout/c;-><init>(Lcom/viber/voip/viberout/a;Lcom/viber/voip/viberout/d;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/calls/u;->a(ILcom/viber/voip/calls/v;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 380
    sget-object v0, Lcom/viber/voip/viberout/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/viberout/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/viber/voip/viberout/a;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0}, Lcom/viber/voip/viberout/a;->d()Z

    move-result v1

    .line 335
    invoke-direct {p0}, Lcom/viber/voip/viberout/a;->e()Z

    move-result v2

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkRestOfPromoGrowUpgradeConditions: introSplashShown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", contactsSplashShown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 338
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 341
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    const-string/jumbo v4, "vo_activation_time"

    const-wide v5, 0x7fffffffffffffffL

    invoke-interface {v3, v4, v5, v6}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkRestOfPromoGrowUpgradeConditions: timeSinceVOActivation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 343
    iget-wide v3, p0, Lcom/viber/voip/viberout/a;->f:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 345
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "vo_intro_splash_shown"

    invoke-interface {v2, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-static {}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "vo_contacts_splash_shown"

    invoke-interface {v2, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    invoke-static {}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-static {}, Lcom/viber/voip/viberout/promotion/ui/VOPromotionScreen;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 375
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/promotion/ui/VOGrowPromotionScreen;->a(Landroid/content/Context;)V

    .line 376
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_VO_GROW_UPGRADE_SPLASH_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 377
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6
    .parameter

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0xea60

    .line 70
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "GROW_VIBER_OUT_DEBUG_ENABLED"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 71
    iput-boolean p1, p0, Lcom/viber/voip/viberout/a;->g:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/viber/voip/viberout/a;->d:J

    .line 74
    iput-wide v4, p0, Lcom/viber/voip/viberout/a;->e:J

    .line 75
    iput-wide v4, p0, Lcom/viber/voip/viberout/a;->f:J

    .line 81
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "debug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/viberout/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMinTimeSinceVOActivation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/viberout/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMinTimeSinceLastGrowSplash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/viberout/a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMinTimeSinceVOActivationForUpgrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/viberout/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 85
    return-void

    .line 77
    :cond_0
    iput-wide v2, p0, Lcom/viber/voip/viberout/a;->d:J

    .line 78
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/viber/voip/viberout/a;->e:J

    .line 79
    iput-wide v2, p0, Lcom/viber/voip/viberout/a;->f:J

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/viber/voip/viberout/a;->g:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "onHomeActivityOpened()"

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/viber/voip/viberout/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/viber/voip/viberout/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/b;-><init>(Lcom/viber/voip/viberout/a;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/a;->a(Lcom/viber/voip/viberout/d;)V

    .line 118
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onViberOutEnabled, VersionCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "onViberOutEnabled, Upgrade splash forcibly disabled"

    invoke-static {v1}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    .line 99
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViberOutEnabled, upgrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGrowSplashCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/viberout/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->b(Ljava/lang/String;)V

    .line 100
    iput-boolean p1, p0, Lcom/viber/voip/viberout/a;->b:Z

    .line 104
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

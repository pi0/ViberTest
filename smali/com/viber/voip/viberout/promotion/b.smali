.class public Lcom/viber/voip/viberout/promotion/b;
.super Lcom/android/a/a/b;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Lcom/viber/voip/viberout/promotion/f;

.field b:Lcom/viber/voip/viberout/promotion/d;

.field c:Lcom/viber/voip/viberout/promotion/e;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/viber/voip/viberout/promotion/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/promotion/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "ViberOutTrialSM"

    invoke-direct {p0, v0}, Lcom/android/a/a/b;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/viber/voip/viberout/promotion/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/promotion/f;-><init>(Lcom/viber/voip/viberout/promotion/b;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->a:Lcom/viber/voip/viberout/promotion/f;

    .line 122
    new-instance v0, Lcom/viber/voip/viberout/promotion/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/promotion/d;-><init>(Lcom/viber/voip/viberout/promotion/b;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->b:Lcom/viber/voip/viberout/promotion/d;

    .line 208
    new-instance v0, Lcom/viber/voip/viberout/promotion/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/promotion/e;-><init>(Lcom/viber/voip/viberout/promotion/b;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->c:Lcom/viber/voip/viberout/promotion/e;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/android/a/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/promotion/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/viber/voip/viberout/promotion/b;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "vo_intro_splash_shown"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/promotion/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    const/4 v0, 0x1

    .line 283
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/android/a/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/viberout/promotion/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/voip/viberout/promotion/b;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/promotion/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->b(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 292
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 240
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "countEntry pref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 244
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 246
    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/android/a/a/a;)V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/viber/voip/viberout/promotion/b;->c(Lcom/android/a/a/a;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 251
    if-lez v0, :cond_0

    .line 252
    add-int/lit8 v0, v0, -0x1

    .line 253
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 255
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "vo_intro_splash_shown"

    invoke-interface {v2, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    iget-boolean v1, p0, Lcom/viber/voip/viberout/promotion/b;->f:Z

    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_free_call"

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/promotion/b;->b(Ljava/lang/String;)V

    .line 269
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "vo_intro_splash_shown"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 272
    :goto_1
    return v0

    .line 267
    :cond_0
    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_no_free_call"

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/promotion/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 272
    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/viber/voip/viberout/promotion/a;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/viber/voip/viberout/promotion/a;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->b(I)V

    .line 52
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    sget-object v0, Lcom/viber/voip/viberout/promotion/b;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViberOutAvailable isTrialCallAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isUpgrade:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 43
    iput-boolean p1, p0, Lcom/viber/voip/viberout/promotion/b;->f:Z

    .line 44
    iput-boolean p2, p0, Lcom/viber/voip/viberout/promotion/b;->e:Z

    .line 46
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->a:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 47
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSplashScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->a:Lcom/viber/voip/viberout/promotion/f;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/android/a/a/a;)V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->b:Lcom/viber/voip/viberout/promotion/d;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/android/a/a/a;)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->c:Lcom/viber/voip/viberout/promotion/e;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/b;->b:Lcom/viber/voip/viberout/promotion/d;

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/android/a/a/a;Lcom/android/a/a/a;)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/b;->a:Lcom/viber/voip/viberout/promotion/f;

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/android/a/a/a;)V

    .line 305
    return-void
.end method

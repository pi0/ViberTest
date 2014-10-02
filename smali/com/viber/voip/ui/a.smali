.class public Lcom/viber/voip/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/viber/voip/ui/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ui/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/a;->b:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/viber/voip/ui/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/c;-><init>(Lcom/viber/voip/ui/a;)V

    iput-object v0, p0, Lcom/viber/voip/ui/a;->i:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/viber/voip/ui/a;->a:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PORT_AVAILABLE_SCREEN_WIDTH"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/a;->c:I

    .line 42
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "LAND_AVAILABLE_SCREEN_WIDTH"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/a;->d:I

    .line 43
    iget v0, p0, Lcom/viber/voip/ui/a;->c:I

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/viber/voip/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_1

    .line 46
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/viber/voip/ui/a;->c:I

    .line 47
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/viber/voip/ui/a;->d:I

    .line 52
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PORT_AVAILABLE_SCREEN_WIDTH"

    iget v2, p0, Lcom/viber/voip/ui/a;->c:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 53
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "LAND_AVAILABLE_SCREEN_WIDTH"

    iget v2, p0, Lcom/viber/voip/ui/a;->d:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initialized, port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ui/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", land:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ui/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/a;->a(Ljava/lang/String;)V

    .line 56
    return-void

    .line 49
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/viber/voip/ui/a;->c:I

    .line 50
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/viber/voip/ui/a;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/ui/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/ui/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/viber/voip/ui/a;->h:I

    .line 83
    invoke-direct {p0}, Lcom/viber/voip/ui/a;->d()V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/ui/a;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ui/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ui/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/ui/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/viber/voip/ui/a;->f:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/ui/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/viber/voip/ui/a;->c:I

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/ui/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/viber/voip/ui/a;->g:I

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/ui/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/viber/voip/ui/a;->d:I

    return p1
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/viber/voip/ui/a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/viber/voip/ui/a;)J
    .locals 2
    .parameter

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/viber/voip/ui/a;->e:J

    return-wide v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/viber/voip/ui/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/ui/a;->e:J

    .line 76
    iget-object v0, p0, Lcom/viber/voip/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/viber/voip/ui/a;->f:I

    .line 78
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/viber/voip/ui/a;->g:I

    .line 79
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/ui/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/viber/voip/ui/a;->c:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/ui/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/ui/a;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/ui/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/viber/voip/ui/a;->h:I

    return v0
.end method

.method private static f()J
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic g(Lcom/viber/voip/ui/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/viber/voip/ui/a;->d:I

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/ui/a;->e()V

    return-void
.end method

.method static synthetic i(Lcom/viber/voip/ui/a;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/ui/a;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/ui/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/ui/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/ui/a;->d()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/viber/voip/ui/a;->c:I

    return v0
.end method

.method public a(Lcom/viber/voip/messages/ui/dt;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/viber/voip/ui/a;->e()V

    .line 60
    new-instance v0, Lcom/viber/voip/ui/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/b;-><init>(Lcom/viber/voip/ui/a;)V

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/ui/dt;->setPositioningListener(Lcom/viber/voip/messages/ui/dv;)V

    .line 68
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/viber/voip/ui/a;->d:I

    return v0
.end method

.method public b(Lcom/viber/voip/messages/ui/dt;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/ui/dt;->setPositioningListener(Lcom/viber/voip/messages/ui/dv;)V

    .line 71
    invoke-direct {p0}, Lcom/viber/voip/ui/a;->e()V

    .line 72
    return-void
.end method

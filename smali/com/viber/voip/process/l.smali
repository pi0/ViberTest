.class public Lcom/viber/voip/process/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/process/l;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/viber/voip/process/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/process/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/process/l;->c:Landroid/os/Handler;

    .line 30
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/process/l;->d:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/viber/voip/process/n;

    invoke-direct {v0, p0}, Lcom/viber/voip/process/n;-><init>(Lcom/viber/voip/process/l;)V

    iput-object v0, p0, Lcom/viber/voip/process/l;->f:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/viber/voip/process/o;

    invoke-direct {v0, p0}, Lcom/viber/voip/process/o;-><init>(Lcom/viber/voip/process/l;)V

    iput-object v0, p0, Lcom/viber/voip/process/l;->g:Ljava/lang/Runnable;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/process/l;)I
    .locals 2
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/viber/voip/process/l;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/viber/voip/process/l;->e:I

    return v0
.end method

.method public static a()Lcom/viber/voip/process/l;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/process/l;->b:Lcom/viber/voip/process/l;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/viber/voip/process/l;

    invoke-direct {v0}, Lcom/viber/voip/process/l;-><init>()V

    sput-object v0, Lcom/viber/voip/process/l;->b:Lcom/viber/voip/process/l;

    .line 37
    :cond_0
    sget-object v0, Lcom/viber/voip/process/l;->b:Lcom/viber/voip/process/l;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webActivityOnCreate, total web activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/l;->b(Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/viber/voip/process/l;->e:I

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/process/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/process/l;->a(I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/viber/voip/process/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/process/l;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/viber/voip/process/l;->e:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 100
    const-string/jumbo v0, "scheduleCheckerLevel2"

    invoke-static {v0}, Lcom/viber/voip/process/l;->b(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/process/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/process/l;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/process/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/process/l;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webActivityOnDestroy, total web activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/l;->b(Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/viber/voip/process/l;->e:I

    .line 85
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/process/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/process/l;->b(I)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 142
    const-string/jumbo v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":browser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 145
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/process/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/process/l;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/process/l;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/process/l;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->c:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 42
    iget v0, p0, Lcom/viber/voip/process/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/process/l;->e:I

    .line 43
    new-instance v0, Lcom/viber/voip/process/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/process/q;-><init>(Lcom/viber/voip/process/m;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/viber/voip/process/l;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/process/q;->a(ZI)V

    .line 49
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->c:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/viber/voip/process/l;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/process/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/process/m;-><init>(Lcom/viber/voip/process/l;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :cond_0
    return-void
.end method

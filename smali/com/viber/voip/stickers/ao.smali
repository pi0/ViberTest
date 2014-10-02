.class public Lcom/viber/voip/stickers/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J


# instance fields
.field private c:Lcom/viber/voip/stickers/a/a;

.field private d:Lcom/viber/voip/util/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/stickers/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/ao;->a:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/viber/voip/stickers/ao;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/viber/voip/stickers/ao;->c:Lcom/viber/voip/stickers/a/a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ao;Lcom/viber/voip/util/bi;)Lcom/viber/voip/util/bi;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/stickers/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/stickers/ao;->c()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method private b()Lcom/viber/voip/util/bi;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/viber/voip/stickers/aq;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/aq;-><init>(Lcom/viber/voip/stickers/ao;)V

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 85
    const-string/jumbo v0, "collectGarbage()"

    invoke-static {v0}, Lcom/viber/voip/stickers/ao;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/stickers/ao;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/a/a;->b()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 89
    iget-object v2, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/c/a;->a(Lcom/viber/voip/util/bi;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bi;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/util/List;)V

    .line 94
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 36
    sget-wide v2, Lcom/viber/voip/stickers/ao;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 37
    sget-wide v2, Lcom/viber/voip/stickers/ao;->b:J

    sub-long v2, v0, v2

    .line 38
    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 42
    :cond_2
    sput-wide v0, Lcom/viber/voip/stickers/ao;->b:J

    .line 44
    invoke-direct {p0}, Lcom/viber/voip/stickers/ao;->b()Lcom/viber/voip/util/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    .line 45
    iget-object v0, p0, Lcom/viber/voip/stickers/ao;->d:Lcom/viber/voip/util/bi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bi;->a(Z)V

    .line 46
    new-instance v0, Lcom/viber/voip/stickers/ap;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/ap;-><init>(Lcom/viber/voip/stickers/ao;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/ap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

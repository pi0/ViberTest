.class Lcom/viber/voip/stickers/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/stickers/b;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/viber/voip/stickers/bi;

.field private volatile e:Lcom/viber/voip/stickers/bg;

.field private volatile f:Lcom/viber/voip/stickers/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/bf;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/viber/voip/stickers/b;Landroid/os/Handler;Lcom/viber/voip/stickers/bi;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/viber/voip/stickers/bf;->b:Lcom/viber/voip/stickers/b;

    .line 22
    iput-object p2, p0, Lcom/viber/voip/stickers/bf;->c:Landroid/os/Handler;

    .line 23
    iput-object p3, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/bf;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/bf;Lcom/viber/voip/stickers/bg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/bf;->a(Lcom/viber/voip/stickers/bg;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/viber/voip/stickers/bg;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->e:Lcom/viber/voip/stickers/bg;

    if-ne v0, p1, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/stickers/bf;->e:Lcom/viber/voip/stickers/bg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/bi;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/b;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->b:Lcom/viber/voip/stickers/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 28
    iget-object v2, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    invoke-interface {v0, p1}, Lcom/viber/voip/stickers/bi;->a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-nez v0, :cond_0

    .line 33
    iget-object v2, p0, Lcom/viber/voip/stickers/bf;->b:Lcom/viber/voip/stickers/b;

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v3, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    monitor-enter v1

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    invoke-interface {v2, p1, v0}, Lcom/viber/voip/stickers/bi;->a(Lcom/viber/voip/stickers/c/a;Landroid/graphics/Bitmap;)V

    .line 36
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :cond_0
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    invoke-interface {v0}, Lcom/viber/voip/stickers/bi;->a()V

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/viber/voip/stickers/bg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/stickers/bg;-><init>(Lcom/viber/voip/stickers/bf;Ljava/lang/Iterable;Lcom/viber/voip/stickers/bj;)V

    .line 92
    invoke-virtual {v0}, Lcom/viber/voip/stickers/bg;->run()V

    .line 93
    return-void
.end method

.method public declared-synchronized a([ILcom/viber/voip/stickers/bj;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 75
    if-lez v3, :cond_3

    .line 76
    const/4 v0, 0x1

    .line 81
    :cond_0
    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->f:Lcom/viber/voip/stickers/bg;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->f:Lcom/viber/voip/stickers/bg;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/bg;->a()V

    .line 85
    :cond_1
    new-instance v0, Lcom/viber/voip/stickers/bg;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/stickers/bg;-><init>(Lcom/viber/voip/stickers/bf;[ILcom/viber/voip/stickers/bj;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/bf;->f:Lcom/viber/voip/stickers/bg;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->f:Lcom/viber/voip/stickers/bg;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/bg;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_2
    monitor-exit p0

    return-void

    .line 74
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/viber/voip/stickers/c/a;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    invoke-interface {v0, p1}, Lcom/viber/voip/stickers/bi;->a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/viber/voip/stickers/bf;->b:Lcom/viber/voip/stickers/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/stickers/bf;->d:Lcom/viber/voip/stickers/bi;

    invoke-interface {v2, p1, v0}, Lcom/viber/voip/stickers/bi;->a(Lcom/viber/voip/stickers/c/a;Landroid/graphics/Bitmap;)V

    .line 54
    monitor-exit v1

    .line 57
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

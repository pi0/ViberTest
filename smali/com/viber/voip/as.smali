.class public Lcom/viber/voip/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private d:Lcom/viber/voip/av;

.field private e:Lcom/viber/voip/util/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/o",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/aw;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:F

.field private i:F

.field private j:Landroid/content/Context;

.field private k:Landroid/os/Handler;

.field private l:Landroid/os/Handler;

.field private final m:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final n:Ljava/lang/Object;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/ax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4420

    const/16 v1, 0x500

    .line 34
    const/high16 v0, 0x3f00

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/viber/voip/as;->a:I

    .line 35
    sget v0, Lcom/viber/voip/as;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    div-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/as;->b:I

    .line 36
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    if-gt v0, v1, :cond_1

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    :goto_1
    sput v0, Lcom/viber/voip/as;->c:I

    return-void

    .line 35
    :cond_0
    sget v0, Lcom/viber/voip/as;->a:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 36
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/as;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/as;->n:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/as;->o:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/viber/voip/util/o;

    const-string/jumbo v1, "View media cache"

    invoke-direct {v0, p1, v1, p4}, Lcom/viber/voip/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/viber/voip/as;->e:Lcom/viber/voip/util/o;

    .line 62
    new-instance v0, Lcom/viber/voip/av;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/av;-><init>(Lcom/viber/voip/as;Lcom/viber/voip/at;)V

    iput-object v0, p0, Lcom/viber/voip/as;->d:Lcom/viber/voip/av;

    .line 63
    iput-object p1, p0, Lcom/viber/voip/as;->j:Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/as;->k:Landroid/os/Handler;

    .line 65
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/as;->l:Landroid/os/Handler;

    .line 66
    iput p2, p0, Lcom/viber/voip/as;->h:F

    .line 67
    iput p3, p0, Lcom/viber/voip/as;->i:F

    .line 68
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viber/voip/as;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 264
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 265
    iget-object v0, p0, Lcom/viber/voip/as;->e:Lcom/viber/voip/util/o;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 269
    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/as;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2, p2, p3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/viber/voip/as;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 244
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 245
    iget-object v3, p0, Lcom/viber/voip/as;->e:Lcom/viber/voip/util/o;

    invoke-virtual {v3, p1, v0}, Lcom/viber/voip/util/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 253
    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 256
    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/as;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/as;->a(Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/as;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/as;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/as;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private a(ILcom/viber/voip/aw;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/as;->l:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/au;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/au;-><init>(Lcom/viber/voip/as;ILcom/viber/voip/aw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/viber/voip/aw;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 273
    iget-object v0, p0, Lcom/viber/voip/as;->j:Landroid/content/Context;

    sget v1, Lcom/viber/voip/as;->c:I

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    .line 276
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    .line 278
    iget v2, p0, Lcom/viber/voip/as;->h:F

    div-float/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 279
    iget v3, p0, Lcom/viber/voip/as;->i:F

    div-float/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 284
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Lcom/viber/voip/aw;->d:I

    .line 285
    mul-float v0, v1, v2

    float-to-int v0, v0

    iput v0, p2, Lcom/viber/voip/aw;->c:I

    .line 287
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/as;ILcom/viber/voip/aw;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/as;->a(ILcom/viber/voip/aw;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/as;Landroid/net/Uri;Lcom/viber/voip/aw;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/as;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/as;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/viber/voip/as;->g:I

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/as;)Landroid/util/Pair;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/viber/voip/as;->b:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/as;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/as;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/viber/voip/as;->c:I

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/as;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/as;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/as;)Lcom/viber/voip/util/o;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/as;->e:Lcom/viber/voip/util/o;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/as;->l:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/at;

    invoke-direct {v1, p0}, Lcom/viber/voip/at;-><init>(Lcom/viber/voip/as;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/as;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/as;->f()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/net/Uri;)Lcom/viber/voip/aw;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p2, :cond_0

    move-object v0, v1

    .line 154
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/as;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/aw;

    monitor-exit v2

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-direct {p0, p2}, Lcom/viber/voip/as;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_2

    .line 150
    new-instance v0, Lcom/viber/voip/aw;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 151
    invoke-direct {p0, p2, v0}, Lcom/viber/voip/as;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 154
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/as;->c()V

    .line 125
    return-void
.end method

.method public a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/viber/voip/as;->h:F

    .line 72
    iput p2, p0, Lcom/viber/voip/as;->i:F

    .line 73
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v2, p0, Lcom/viber/voip/as;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iput p1, p0, Lcom/viber/voip/as;->g:I

    .line 114
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/viber/voip/aw;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    .line 116
    iget-object v0, p0, Lcom/viber/voip/as;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ax;

    .line 117
    iget-object v1, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/viber/voip/aw;

    invoke-interface {v0, v4, v1}, Lcom/viber/voip/ax;->a(ILcom/viber/voip/aw;)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    return-void
.end method

.method public a(Lcom/viber/voip/ax;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/as;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    .line 129
    iget-object v0, p0, Lcom/viber/voip/as;->m:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 131
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/as;->e:Lcom/viber/voip/util/o;

    invoke-virtual {v0}, Lcom/viber/voip/util/o;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, p2}, Lcom/viber/voip/as;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/viber/voip/as;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/ay;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/ay;-><init>(Lcom/viber/voip/as;ILandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Lcom/viber/voip/aw;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 167
    invoke-direct {p0, p2, v1}, Lcom/viber/voip/as;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    .line 168
    invoke-direct {p0, p1, v1}, Lcom/viber/voip/as;->a(ILcom/viber/voip/aw;)V

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/ax;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/as;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public c(ILandroid/net/Uri;)Lcom/viber/voip/aw;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 180
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/as;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 186
    new-instance v1, Lcom/viber/voip/aw;

    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/aw;

    iget-object v0, v0, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 188
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-direct {p0, p2}, Lcom/viber/voip/as;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    if-nez v0, :cond_2

    .line 194
    sget v0, Lcom/viber/voip/as;->b:I

    invoke-direct {p0, p2, v0, v3}, Lcom/viber/voip/as;->a(Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    :cond_2
    new-instance v1, Lcom/viber/voip/aw;

    invoke-direct {v1, v0, v3}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 202
    invoke-direct {p0, p2, v1}, Lcom/viber/voip/as;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    move-object v0, v1

    .line 203
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/as;->g:I

    .line 234
    iget-object v0, p0, Lcom/viber/voip/as;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/as;->d:Lcom/viber/voip/av;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public d(ILandroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v1, p0, Lcom/viber/voip/as;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/as;->f:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 221
    monitor-exit v1

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/viber/voip/as;->d:Lcom/viber/voip/av;

    invoke-virtual {v0, p1}, Lcom/viber/voip/av;->a(I)V

    .line 225
    iget-object v0, p0, Lcom/viber/voip/as;->d:Lcom/viber/voip/av;

    invoke-virtual {v0, p2}, Lcom/viber/voip/av;->a(Landroid/net/Uri;)V

    .line 226
    iput p1, p0, Lcom/viber/voip/as;->g:I

    .line 227
    iget-object v0, p0, Lcom/viber/voip/as;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/as;->d:Lcom/viber/voip/av;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/as;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/as;->d:Lcom/viber/voip/av;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

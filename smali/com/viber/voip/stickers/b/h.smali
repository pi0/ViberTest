.class public Lcom/viber/voip/stickers/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/viber/voip/stickers/d/b;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/stickers/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/stickers/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/stickers/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Lcom/viber/voip/stickers/r;

.field private i:Lcom/viber/voip/stickers/b;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/b/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/d/b;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/h;->e:Landroid/util/SparseArray;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/stickers/b/h;->j:I

    .line 70
    iput-object p1, p0, Lcom/viber/voip/stickers/b/h;->h:Lcom/viber/voip/stickers/r;

    .line 71
    iput-object p2, p0, Lcom/viber/voip/stickers/b/h;->i:Lcom/viber/voip/stickers/b;

    .line 72
    iput-object p3, p0, Lcom/viber/voip/stickers/b/h;->a:Lcom/viber/voip/stickers/d/b;

    .line 74
    sget-object v0, Lcom/viber/voip/dk;->j:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/h;->f:Landroid/os/Handler;

    .line 77
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x64

    new-instance v2, Lcom/viber/voip/stickers/b/i;

    invoke-direct {v2, p0}, Lcom/viber/voip/stickers/b/i;-><init>(Lcom/viber/voip/stickers/b/h;)V

    invoke-direct {v6, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 85
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/h;->g:Ljava/util/concurrent/ExecutorService;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/viber/voip/stickers/b/h;->j:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b/h;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/stickers/b/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-static {p0}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v0

    .line 283
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->C:Ljava/lang/String;

    .line 285
    const-string/jumbo v2, "%RES%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%PKG%"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%ID%"

    invoke-static {p0}, Lcom/viber/voip/stickers/b/h;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    const-string/jumbo v0, "%RES%"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%PKG%"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 255
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 257
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 258
    if-nez v0, :cond_0

    .line 263
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 257
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-static {p1, v2}, Lcom/viber/voip/stickers/b/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 250
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 252
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 333
    invoke-static {p0}, Lcom/viber/voip/stickers/b/h;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x1f40

    .line 337
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroid/accounts/NetworkErrorException;

    const-string/jumbo v1, "No internet connection"

    invoke-direct {v0, v1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 341
    invoke-interface {v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 342
    invoke-interface {v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->setReadTimeout(I)V

    .line 343
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/stickers/b/h;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static b(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->z:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->y:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/stickers/b/h;)Lcom/viber/voip/stickers/r;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->h:Lcom/viber/voip/stickers/r;

    return-object v0
.end method

.method public static c(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->A:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-static {p0, p1}, Lcom/viber/voip/stickers/b/h;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(I)I
    .locals 1
    .parameter

    .prologue
    .line 268
    .line 269
    rem-int/lit8 v0, p0, 0x64

    sub-int v0, p0, v0

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/stickers/b/h;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static d(ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-static {p0, p1}, Lcom/viber/voip/stickers/b/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 316
    invoke-static {}, Lcom/viber/voip/stickers/an;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/stickers/b/h;->c(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 274
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%08d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    monitor-enter p0

    move v2, v1

    .line 90
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/b/e;

    .line 92
    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/e;->b()V

    .line 93
    iget-object v3, p0, Lcom/viber/voip/stickers/b/h;->f:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/b/o;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/o;->b()V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 6
    .parameter

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/viber/voip/stickers/b/l;

    iget-object v3, p0, Lcom/viber/voip/stickers/b/h;->h:Lcom/viber/voip/stickers/r;

    iget-object v4, p0, Lcom/viber/voip/stickers/b/h;->i:Lcom/viber/voip/stickers/b;

    iget-object v5, p0, Lcom/viber/voip/stickers/b/h;->a:Lcom/viber/voip/stickers/d/b;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/stickers/b/l;-><init>(Lcom/viber/voip/stickers/b/h;Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/d/b;)V

    .line 166
    iget-object v1, p0, Lcom/viber/voip/stickers/b/h;->d:Landroid/util/SparseArray;

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/viber/voip/stickers/b/h;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 169
    :cond_0
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/stickers/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 135
    new-instance v1, Lcom/viber/voip/stickers/b/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p1}, Lcom/viber/voip/stickers/b/k;-><init>(Lcom/viber/voip/stickers/b/h;IZI)V

    .line 147
    iget-object v2, p0, Lcom/viber/voip/stickers/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lcom/viber/voip/stickers/b/h;->f:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 149
    monitor-exit p0

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    monitor-exit p0

    move v0, v1

    .line 152
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/viber/voip/stickers/c/d;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    new-instance v3, Lcom/viber/voip/stickers/b/j;

    move-object v0, p1

    check-cast v0, Lcom/viber/voip/stickers/c/e;

    move-object v1, v0

    iget-object v4, p0, Lcom/viber/voip/stickers/b/h;->a:Lcom/viber/voip/stickers/d/b;

    invoke-direct {v3, p0, v1, v4}, Lcom/viber/voip/stickers/b/j;-><init>(Lcom/viber/voip/stickers/b/h;Lcom/viber/voip/stickers/c/e;Lcom/viber/voip/stickers/d/b;)V

    .line 123
    iget-object v1, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/viber/voip/stickers/b/h;->f:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 126
    monitor-exit p0

    move v1, v2

    .line 129
    :goto_0
    return v1

    .line 128
    :cond_0
    monitor-exit p0

    .line 129
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized b()Lcom/viber/voip/stickers/b/m;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 186
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/viber/voip/stickers/b/h;->j:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/viber/voip/stickers/b/h;->j:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-nez v0, :cond_0

    move-object v0, v1

    .line 194
    :goto_0
    monitor-exit p0

    return-object v0

    .line 189
    :cond_0
    :try_start_1
    new-instance v1, Lcom/viber/voip/stickers/b/m;

    invoke-direct {v1}, Lcom/viber/voip/stickers/b/m;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/e;->d()I

    move-result v2

    iput v2, v1, Lcom/viber/voip/stickers/b/m;->b:I

    .line 191
    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/e;->c()Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    iput-object v0, v1, Lcom/viber/voip/stickers/b/m;->a:Lcom/viber/voip/stickers/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 192
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 194
    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/viber/voip/stickers/b/h;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/b/h;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

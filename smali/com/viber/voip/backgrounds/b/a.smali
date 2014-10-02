.class public Lcom/viber/voip/backgrounds/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/backgrounds/a;

.field private c:Lcom/viber/voip/backgrounds/m;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/backgrounds/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/backgrounds/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/backgrounds/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->e:Landroid/util/SparseArray;

    .line 37
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/a;->f:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/a;->b:Lcom/viber/voip/backgrounds/a;

    .line 39
    iput-object p3, p0, Lcom/viber/voip/backgrounds/b/a;->c:Lcom/viber/voip/backgrounds/m;

    .line 41
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xa

    new-instance v2, Lcom/viber/voip/backgrounds/b/b;

    invoke-direct {v2, p0}, Lcom/viber/voip/backgrounds/b/b;-><init>(Lcom/viber/voip/backgrounds/b/a;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 49
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 120
    .line 121
    rem-int/lit8 v0, p0, 0x64

    sub-int v0, p0, v0

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/b/a;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {p0}, Lcom/viber/voip/backgrounds/b/a;->a(I)I

    move-result v0

    .line 131
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->E:Ljava/lang/String;

    .line 133
    const-string/jumbo v2, "%RES%"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%PKG%"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%ID%"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x989701

    if-lt p0, v0, :cond_0

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/viber/voip/backgrounds/b/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0

    .line 133
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 109
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 110
    if-nez v0, :cond_0

    .line 115
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p1, v2}, Lcom/viber/voip/backgrounds/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 104
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/backgrounds/b/a;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 126
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

.method public static b(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->D:Ljava/lang/String;

    .line 143
    const-string/jumbo v1, "%RES%"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "%PKG%"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/b/g;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/b/g;->b()V

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/viber/voip/backgrounds/q;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/viber/voip/backgrounds/b/d;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/a;->b:Lcom/viber/voip/backgrounds/a;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/a;->c:Lcom/viber/voip/backgrounds/m;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/viber/voip/backgrounds/b/d;-><init>(Lcom/viber/voip/backgrounds/b/a;Lcom/viber/voip/backgrounds/q;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V

    .line 91
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/a;->e:Landroid/util/SparseArray;

    iget v2, p1, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :cond_0
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/viber/voip/backgrounds/o;)Z
    .locals 3
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/viber/voip/backgrounds/b/c;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/a;->b:Lcom/viber/voip/backgrounds/a;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/b/a;->c:Lcom/viber/voip/backgrounds/m;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/viber/voip/backgrounds/b/c;-><init>(Lcom/viber/voip/backgrounds/b/a;Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V

    .line 72
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/a;->d:Landroid/util/SparseArray;

    iget v2, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    const/4 v0, 0x1

    monitor-exit p0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    monitor-exit p0

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

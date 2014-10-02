.class public Lcom/viber/voip/util/upload/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private final g:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/viber/voip/util/upload/i;->g:[B

    .line 25
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/voip/util/upload/i;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/viber/voip/util/upload/i;->d:Z

    .line 97
    iput-boolean p1, p0, Lcom/viber/voip/util/upload/i;->e:Z

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/upload/i;->c:Z

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 29
    iget-object v1, p0, Lcom/viber/voip/util/upload/i;->g:[B

    invoke-virtual {p0, v1}, Lcom/viber/voip/util/upload/i;->read([B)I

    move-result v1

    .line 30
    if-ne v1, v0, :cond_0

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/i;->g:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/util/upload/i;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/i;->c:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "File is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/upload/i;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/viber/voip/util/upload/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 52
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/viber/voip/util/upload/i;->a:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/i;->b:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/upload/i;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/viber/voip/util/upload/i;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 58
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/i;->d:Z

    if-eqz v0, :cond_4

    .line 59
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/i;->e:Z

    if-eqz v0, :cond_3

    .line 60
    iget v0, p0, Lcom/viber/voip/util/upload/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/util/upload/i;->f:I

    .line 61
    iget v0, p0, Lcom/viber/voip/util/upload/i;->f:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "read() returned EOF 10 times, forcing exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_2
    const/4 v0, -0x1

    .line 79
    :goto_1
    monitor-exit p0

    return v0

    .line 66
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Download terminated abnormally"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/viber/voip/util/upload/i;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_1
.end method

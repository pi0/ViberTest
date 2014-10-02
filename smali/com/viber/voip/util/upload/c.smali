.class public Lcom/viber/voip/util/upload/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/RandomAccessFile;

.field private c:J

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 17
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/c;->b:Ljava/io/RandomAccessFile;

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/c;->a:Ljava/io/File;

    .line 19
    iput-wide p2, p0, Lcom/viber/voip/util/upload/c;->c:J

    .line 20
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/viber/voip/util/upload/c;->c:J

    iget-object v2, p0, Lcom/viber/voip/util/upload/c;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 25
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 31
    iget-object v0, p0, Lcom/viber/voip/util/upload/c;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 32
    return-void
.end method

.method public mark(I)V
    .locals 2
    .parameter

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 46
    iget-object v1, p0, Lcom/viber/voip/util/upload/c;->d:[B

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/viber/voip/util/upload/c;->d:[B

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/upload/c;->d:[B

    invoke-virtual {p0, v1}, Lcom/viber/voip/util/upload/c;->read([B)I

    move-result v1

    .line 50
    if-ne v1, v0, :cond_1

    .line 53
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/upload/c;->d:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/util/upload/c;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/c;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 60
    iget-wide v3, p0, Lcom/viber/voip/util/upload/c;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v3, v1

    cmp-long v0, v3, v6

    if-gtz v0, :cond_0

    .line 61
    const/4 v0, -0x1

    .line 83
    :goto_0
    monitor-exit p0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x32

    if-ge v0, v3, :cond_2

    .line 65
    :try_start_1
    iget-object v3, p0, Lcom/viber/voip/util/upload/c;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 66
    sub-long/2addr v3, v1

    .line 68
    iget-object v5, p0, Lcom/viber/voip/util/upload/c;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Download finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_1
    cmp-long v5, v3, v6

    if-lez v5, :cond_3

    .line 72
    int-to-long v0, p3

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 73
    long-to-int p3, v3

    .line 83
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/viber/voip/util/upload/c;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 78
    :cond_3
    const-wide/16 v3, 0x64

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 64
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

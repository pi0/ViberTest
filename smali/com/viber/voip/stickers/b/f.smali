.class Lcom/viber/voip/stickers/b/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/viber/voip/stickers/b/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/e;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/viber/voip/stickers/b/f;->b:Lcom/viber/voip/stickers/b/e;

    iput-object p2, p0, Lcom/viber/voip/stickers/b/f;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/f;->b:Lcom/viber/voip/stickers/b/e;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/e;->a(Lcom/viber/voip/stickers/b/e;)Lcom/viber/voip/util/upload/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->d()V

    .line 166
    const-string/jumbo v0, "Downloading stickers finished"

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/stickers/b/f;->b:Lcom/viber/voip/stickers/b/e;

    monitor-enter v1

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/stickers/b/f;->b:Lcom/viber/voip/stickers/b/e;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/viber/voip/stickers/b/f;->b:Lcom/viber/voip/stickers/b/e;

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/e;->a(Lcom/viber/voip/stickers/b/e;Ljava/lang/Exception;)V

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/viber/voip/stickers/b/f;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    const-string/jumbo v1, "exception during download"

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

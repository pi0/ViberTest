.class Lcom/viber/voip/backgrounds/b/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/viber/voip/backgrounds/b/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/g;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/n;->b:Lcom/viber/voip/backgrounds/b/g;

    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/n;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/n;->b:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->c(Lcom/viber/voip/backgrounds/b/g;)Lcom/viber/voip/util/upload/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/n;->b:Lcom/viber/voip/backgrounds/b/g;

    monitor-enter v1

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/n;->b:Lcom/viber/voip/backgrounds/b/g;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/n;->b:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v1, v0}, Lcom/viber/voip/backgrounds/b/g;->a(Lcom/viber/voip/backgrounds/b/g;Ljava/lang/Throwable;)V

    .line 167
    :try_start_2
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/n;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

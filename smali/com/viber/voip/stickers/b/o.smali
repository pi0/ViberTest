.class public abstract Lcom/viber/voip/stickers/b/o;
.super Lcom/viber/voip/stickers/b/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private b:Lcom/viber/voip/stickers/c/a;

.field private c:Lcom/viber/voip/util/upload/d;

.field private d:Lcom/viber/voip/stickers/b;

.field private e:Lcom/viber/voip/stickers/r;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/d/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p4}, Lcom/viber/voip/stickers/b/a;-><init>(Lcom/viber/voip/stickers/d/b;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerDownloadTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/b/o;->a(Ljava/lang/String;)V

    .line 27
    iput-object p3, p0, Lcom/viber/voip/stickers/b/o;->d:Lcom/viber/voip/stickers/b;

    .line 28
    iput-object p2, p0, Lcom/viber/voip/stickers/b/o;->e:Lcom/viber/voip/stickers/r;

    .line 29
    iput-object p1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/stickers/b/o;->f:J

    .line 31
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/viber/voip/stickers/b/o;->f:J

    return-wide v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->f()V

    .line 98
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Downloading sticker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v2, v2, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/b/o;->a(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->b:I

    const-string/jumbo v2, "SVG"

    invoke-static {v1, v2}, Lcom/viber/voip/stickers/b/h;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/bb;->b(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :try_start_1
    invoke-static {v2}, Lcom/viber/voip/stickers/b/h;->b(Ljava/lang/String;)I

    move-result v1

    .line 44
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_1 .. :try_end_1} :catch_2

    .line 45
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 49
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/c/a;->b(Z)V

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->b:I

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SVG"

    :goto_1
    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/h;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bb;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 55
    new-instance v1, Lcom/viber/voip/util/upload/e;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download disallowed by DownloadValve: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_3
    const-string/jumbo v1, "Downloader.DownloadException"

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/b/o;->a(I)V

    .line 88
    :goto_2
    return-void

    .line 46
    :catch_1
    move-exception v1

    .line 47
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error checking svg url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/viber/voip/stickers/b/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 80
    :catch_2
    move-exception v0

    .line 81
    :try_start_5
    const-string/jumbo v1, "StickerController.LowStorageException"

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/b/o;->a(I)V

    goto :goto_2

    .line 51
    :cond_4
    :try_start_6
    sget v0, Lcom/viber/voip/stickers/an;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 58
    :cond_5
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget-object v1, v1, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Lcom/viber/voip/util/upload/d;

    invoke-direct {v3, v0, v1, v2}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    .line 63
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/c/a;->f()V

    .line 64
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->d()V

    .line 65
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bb;->c(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->h()V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 70
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->a()V

    .line 72
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->d:Lcom/viber/voip/stickers/b;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->e:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->b(Lcom/viber/voip/stickers/c/a;)V

    .line 76
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->e:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/c/a;)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->a:Lcom/viber/voip/stickers/d/b;

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_6 .. :try_end_6} :catch_2

    .line 83
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 86
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/b/o;->a(I)V

    goto/16 :goto_2

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v1

    if-eqz v1, :cond_8

    .line 84
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/stickers/b/o;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v3}, Lcom/viber/voip/util/upload/d;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/util/bb;->a(Ljava/lang/String;I)V

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/stickers/b/o;->b:Lcom/viber/voip/stickers/c/a;

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/b/o;->a(I)V

    throw v0
.end method

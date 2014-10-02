.class Lcom/viber/voip/stickers/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;ZZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    iput-boolean p2, p0, Lcom/viber/voip/stickers/t;->a:Z

    iput-boolean p3, p0, Lcom/viber/voip/stickers/t;->b:Z

    iput-object p4, p0, Lcom/viber/voip/stickers/t;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 605
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->g(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/h;->a()V

    .line 606
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->g()Ljava/util/List;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/viber/voip/stickers/e/h;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/stickers/e/h;-><init>(Landroid/content/Context;)V

    .line 609
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 610
    iget-boolean v3, p0, Lcom/viber/voip/stickers/t;->a:Z

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_0

    .line 611
    :cond_1
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/stickers/e/h;->a(I)V

    .line 612
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;)Z

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/stickers/t;->a:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/a/a;->a(Z)V

    .line 616
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 618
    iget-boolean v0, p0, Lcom/viber/voip/stickers/t;->b:Z

    if-eqz v0, :cond_3

    .line 619
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/stickers/b;->g:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/bf;->a()V

    .line 620
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/stickers/b;->h:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/bf;->a()V

    .line 622
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/r;->v()I

    move-result v1

    invoke-static {v0, v1, v6}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;IZ)V

    .line 624
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-static {v0, v6}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 627
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->h(Lcom/viber/voip/stickers/r;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->d:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->h(Lcom/viber/voip/stickers/r;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 629
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    iget-object v0, p0, Lcom/viber/voip/stickers/t;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/stickers/t;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 632
    :cond_4
    return-void

    .line 629
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

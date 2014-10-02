.class Lcom/viber/voip/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/h;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/f;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWriteConversation fName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", threadCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v1}, Lcom/viber/voip/util/f;->a(Lcom/viber/voip/util/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", files.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v1}, Lcom/viber/voip/util/f;->b(Lcom/viber/voip/util/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/f;->a(Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0}, Lcom/viber/voip/util/f;->b(Lcom/viber/voip/util/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0}, Lcom/viber/voip/util/f;->a(Lcom/viber/voip/util/f;)I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v1}, Lcom/viber/voip/util/f;->b(Lcom/viber/voip/util/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0}, Lcom/viber/voip/util/f;->b(Lcom/viber/voip/util/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0}, Lcom/viber/voip/util/f;->b(Lcom/viber/voip/util/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v1}, Lcom/viber/voip/util/f;->a(Lcom/viber/voip/util/f;)I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/viber/voip/util/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/f;->a([Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v2, v0}, Lcom/viber/voip/util/f;->a(Lcom/viber/voip/util/f;[Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0, v1}, Lcom/viber/voip/util/f;->a(Lcom/viber/voip/util/f;Landroid/net/Uri;)V

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0}, Lcom/viber/voip/util/f;->d(Lcom/viber/voip/util/f;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/g;->a:Lcom/viber/voip/util/f;

    invoke-static {v0}, Lcom/viber/voip/util/f;->c(Lcom/viber/voip/util/f;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_2
    :try_start_2
    const-string/jumbo v0, "File size == 0. Nothing to send!"

    invoke-static {v0}, Lcom/viber/voip/util/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.class final Lcom/viber/voip/contacts/c/b;
.super Lcom/viber/voip/contacts/c/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/b;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/r;-><init>(Lcom/viber/voip/contacts/c/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 198
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SYNC Queue onDownloadFail downloadPhotoIdList.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 200
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/s;

    .line 201
    const-string/jumbo v2, "SYNC Queue onDownloadFail"

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 202
    iget-object v2, v0, Lcom/viber/voip/contacts/c/s;->b:Lcom/viber/voip/contacts/c/r;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/c/r;->a()V

    .line 203
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 204
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 205
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/s;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SYNC Queue onDownloadFail try to download next photo id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 207
    iget-object v0, v0, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/viber/voip/contacts/c/b;->a:Z

    invoke-static {v0, v2, p0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    .line 216
    :goto_0
    monitor-exit v1

    .line 217
    return-void

    .line 209
    :cond_0
    const-string/jumbo v2, "SYNC Queue onDownloadFail downloading finished with errors!"

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->a(Z)Z

    .line 211
    iget-object v0, v0, Lcom/viber/voip/contacts/c/s;->b:Lcom/viber/voip/contacts/c/r;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/r;->a()V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 214
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    .line 181
    :try_start_0
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/s;

    .line 182
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 183
    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/c/s;

    .line 184
    iget-object v1, v1, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/viber/voip/contacts/c/b;->a:Z

    invoke-static {v1, v3, p0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    .line 188
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SYNC Queue onDownloadComplete downloadPhotoIdList.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/contacts/c/a;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is downloading = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/contacts/c/a;->b()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 189
    iget-object v1, v0, Lcom/viber/voip/contacts/c/s;->b:Lcom/viber/voip/contacts/c/r;

    if-eqz v1, :cond_0

    .line 190
    iget-object v0, v0, Lcom/viber/voip/contacts/c/s;->b:Lcom/viber/voip/contacts/c/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/r;->a(Ljava/lang/String;)V

    .line 192
    :cond_0
    monitor-exit v2

    .line 193
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->a(Z)Z

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

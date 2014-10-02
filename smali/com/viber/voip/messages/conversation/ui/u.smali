.class Lcom/viber/voip/messages/conversation/ui/u;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupUserIsTyping(JLjava/lang/String;ZIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGroupUserIsTyping groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fromNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startStopFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isSecondaryDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p3, p3}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 213
    new-instance v2, Lcom/viber/voip/messages/conversation/ui/ct;

    invoke-direct {v2, v1, p5, p6}, Lcom/viber/voip/messages/conversation/ui/ct;-><init>(Ljava/lang/String;IZ)V

    .line 214
    if-eqz p4, :cond_0

    .line 215
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    monitor-enter v3

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->f(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ab;

    .line 217
    if-eqz v0, :cond_2

    .line 218
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->j(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->j(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->i(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/m;->h(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->g(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/viber/voip/messages/a/a;->a(Landroid/content/res/Resources;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V

    .line 227
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 220
    :cond_2
    :try_start_1
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ab;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {v0, v4, v1}, Lcom/viber/voip/messages/conversation/ui/ab;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->f(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onUserIsTyping(Ljava/lang/String;ZIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/ct;

    invoke-direct {v1, v0, p3, p4}, Lcom/viber/voip/messages/conversation/ui/ct;-><init>(Ljava/lang/String;IZ)V

    .line 241
    if-eqz p2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    monitor-enter v2

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->k(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ac;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->j(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ui/m;->k(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ac;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->j(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ui/m;->k(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ac;

    move-result-object v3

    const-wide/16 v4, 0x1770

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ui/m;->i(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->h(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/viber/voip/messages/a/a;->a(Landroid/content/res/Resources;Lcom/viber/voip/messages/conversation/ui/ct;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V

    .line 251
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    new-instance v3, Lcom/viber/voip/messages/conversation/ui/ac;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/u;->a:Lcom/viber/voip/messages/conversation/ui/m;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/messages/conversation/ui/ac;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/voip/messages/conversation/ui/n;)V

    invoke-static {v0, v3}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/voip/messages/conversation/ui/ac;)Lcom/viber/voip/messages/conversation/ui/ac;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

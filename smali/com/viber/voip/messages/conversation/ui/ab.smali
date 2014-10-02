.class Lcom/viber/voip/messages/conversation/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/ab;->b:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 178
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->f(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->g(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/messages/a/a;->a(Landroid/content/res/Resources;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ab;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

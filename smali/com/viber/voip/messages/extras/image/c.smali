.class Lcom/viber/voip/messages/extras/image/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/viber/voip/messages/extras/image/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/b;ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/c;->e:Lcom/viber/voip/messages/extras/image/b;

    iput p2, p0, Lcom/viber/voip/messages/extras/image/c;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/extras/image/c;->b:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iput p4, p0, Lcom/viber/voip/messages/extras/image/c;->c:I

    iput p5, p0, Lcom/viber/voip/messages/extras/image/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 96
    const-string/jumbo v0, "notify file ready"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/c;->e:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/c;->e:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/image/e;

    .line 102
    iget v2, p0, Lcom/viber/voip/messages/extras/image/c;->a:I

    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/c;->b:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget v4, p0, Lcom/viber/voip/messages/extras/image/c;->c:I

    iget v5, p0, Lcom/viber/voip/messages/extras/image/c;->d:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/viber/voip/messages/extras/image/e;->a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 104
    :cond_0
    return-void
.end method

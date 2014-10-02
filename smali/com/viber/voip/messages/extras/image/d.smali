.class Lcom/viber/voip/messages/extras/image/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

.field final synthetic c:Lcom/viber/voip/messages/extras/image/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/b;I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/d;->c:Lcom/viber/voip/messages/extras/image/b;

    iput p2, p0, Lcom/viber/voip/messages/extras/image/d;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/extras/image/d;->b:[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    const-string/jumbo v0, "notify all files ready"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/d;->c:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/d;->c:Lcom/viber/voip/messages/extras/image/b;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/image/e;

    .line 119
    iget v2, p0, Lcom/viber/voip/messages/extras/image/d;->a:I

    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/d;->b:[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/messages/extras/image/e;->a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 121
    :cond_0
    return-void
.end method

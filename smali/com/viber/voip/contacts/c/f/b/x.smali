.class Lcom/viber/voip/contacts/c/f/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/ab;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/ab;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/x;->b:Lcom/viber/voip/contacts/c/f/b/u;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/x;->a:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/x;->a:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/f/b/ab;->a(I)V

    .line 495
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/x;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/contacts/c/f/b/u;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/x;->b:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/contacts/c/f/b/u;Z)Z

    .line 497
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/x;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/contacts/c/f/b/u;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/x;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/contacts/c/f/b/u;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/b/ag;

    .line 499
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/x;->b:Lcom/viber/voip/contacts/c/f/b/u;

    iget-object v3, v0, Lcom/viber/voip/contacts/c/f/b/ag;->d:Ljava/util/Set;

    iget-boolean v4, v0, Lcom/viber/voip/contacts/c/f/b/ag;->a:Z

    iget-boolean v5, v0, Lcom/viber/voip/contacts/c/f/b/ag;->b:Z

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/ag;->c:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V

    .line 501
    :cond_0
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

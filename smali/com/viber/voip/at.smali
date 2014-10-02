.class Lcom/viber/voip/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/as;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->b(Lcom/viber/voip/as;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->c(Lcom/viber/voip/as;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->c(Lcom/viber/voip/as;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v1}, Lcom/viber/voip/as;->b(Lcom/viber/voip/as;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->d(Lcom/viber/voip/as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ax;

    .line 91
    iget-object v1, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v1}, Lcom/viber/voip/as;->c(Lcom/viber/voip/as;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/viber/voip/at;->a:Lcom/viber/voip/as;

    invoke-static {v1}, Lcom/viber/voip/as;->c(Lcom/viber/voip/as;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/viber/voip/aw;

    invoke-interface {v0, v4, v1}, Lcom/viber/voip/ax;->a(ILcom/viber/voip/aw;)V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method

.class Lcom/viber/voip/process/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/l;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/viber/voip/process/o;->a:Lcom/viber/voip/process/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/viber/voip/process/o;->a:Lcom/viber/voip/process/l;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/process/o;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->b(Lcom/viber/voip/process/l;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/process/o;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->c(Lcom/viber/voip/process/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/process/p;

    invoke-direct {v2, p0}, Lcom/viber/voip/process/p;-><init>(Lcom/viber/voip/process/o;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :goto_0
    monitor-exit v1

    .line 137
    return-void

    .line 134
    :cond_0
    const-string/jumbo v0, "Check L2 OK"

    invoke-static {v0}, Lcom/viber/voip/process/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

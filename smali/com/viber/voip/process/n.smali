.class Lcom/viber/voip/process/n;
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
    .line 106
    iput-object p1, p0, Lcom/viber/voip/process/n;->a:Lcom/viber/voip/process/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/viber/voip/process/n;->a:Lcom/viber/voip/process/l;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/process/n;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->b(Lcom/viber/voip/process/l;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/process/n;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->c(Lcom/viber/voip/process/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "OOPS, browser process exists though no web activities, will recheck to be sure"

    invoke-static {v0}, Lcom/viber/voip/process/l;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/viber/voip/process/n;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->d(Lcom/viber/voip/process/l;)V

    .line 116
    :goto_0
    monitor-exit v1

    .line 117
    return-void

    .line 114
    :cond_0
    const-string/jumbo v0, "Check L1 OK"

    invoke-static {v0}, Lcom/viber/voip/process/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

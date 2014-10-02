.class Lcom/viber/voip/dj;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/di;

.field private volatile b:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/di;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p1, Lcom/viber/voip/di;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/dj;->b:I

    .line 73
    iput-object p1, p0, Lcom/viber/voip/dj;->a:Lcom/viber/voip/di;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()Lcom/viber/voip/di;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/dj;->a:Lcom/viber/voip/di;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/viber/voip/dj;->b:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 105
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/dj;->b:I

    .line 93
    iget v0, p0, Lcom/viber/voip/dj;->b:I

    iget-object v1, p0, Lcom/viber/voip/dj;->a:Lcom/viber/voip/di;

    iget v1, v1, Lcom/viber/voip/di;->f:I

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 95
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 96
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/dj;->a:Lcom/viber/voip/di;

    iget-boolean v0, v0, Lcom/viber/voip/di;->e:Z

    invoke-virtual {p0, v0}, Lcom/viber/voip/dj;->setDaemon(Z)V

    .line 86
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 87
    return-void
.end method

.class public Lcom/viber/voip/process/a/d;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# static fields
.field private static final PARAM_LOCAL_PROXY_PORT:Ljava/lang/String; = "local_proxy_port"

.field private static final PARAM_USE_LOCAL_PROXY:Ljava/lang/String; = "use_local_proxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/process/a/e;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/process/a/e;-><init>(Lcom/viber/voip/process/a/d;Lcom/viber/voip/process/b;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/pixie/PixieController;->addReadyListener(Lcom/viber/voip/pixie/PixieController$PixieReadyListener;)V

    .line 33
    return-void
.end method

.method public execute(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/process/a/d;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/process/a/d;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onReply(ZI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    const-string/jumbo v0, "use_local_proxy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v0, "local_proxy_port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/process/a/d;->onReply(ZI)V

    .line 43
    return-void
.end method

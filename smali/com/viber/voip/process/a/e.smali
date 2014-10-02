.class Lcom/viber/voip/process/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/pixie/PixieController$PixieReadyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/b;

.field final synthetic b:Lcom/viber/voip/process/a/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/a/d;Lcom/viber/voip/process/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/viber/voip/process/a/e;->b:Lcom/viber/voip/process/a/d;

    iput-object p2, p0, Lcom/viber/voip/process/a/e;->a:Lcom/viber/voip/process/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/pixie/PixieController;->useLocalProxy()Z

    move-result v1

    .line 28
    const-string/jumbo v2, "use_local_proxy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    const-string/jumbo v1, "local_proxy_port"

    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/pixie/PixieController;->getLocalProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v1, p0, Lcom/viber/voip/process/a/e;->a:Lcom/viber/voip/process/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

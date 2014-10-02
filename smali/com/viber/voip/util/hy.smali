.class public Lcom/viber/voip/util/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/viber/voip/util/hy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/hy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/pixie/PixieController;->useLocalProxy()Z

    move-result v0

    .line 28
    const-string/jumbo v1, "use_local_proxy"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getPixieController()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/pixie/PixieController;->getLocalProxyPort()I

    move-result v0

    .line 32
    const-string/jumbo v1, "local_proxy_port"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Intent;Landroid/webkit/WebView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string/jumbo v0, "use_local_proxy"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "local_proxy_port"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    const-string/jumbo v1, "127.0.0.1"

    invoke-static {p1, v1, v0}, Lcom/viber/voip/pixie/WebViewProxy;->setProxy(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    .line 56
    :cond_0
    return-void
.end method

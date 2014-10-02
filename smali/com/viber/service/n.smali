.class Lcom/viber/service/n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/service/VoipConnectorService;


# direct methods
.method constructor <init>(Lcom/viber/service/VoipConnectorService;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    const-string/jumbo v0, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->d(Lcom/viber/service/VoipConnectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/service/o;

    invoke-direct {v1, p0}, Lcom/viber/service/o;-><init>(Lcom/viber/service/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string/jumbo v0, "com.viber.voip.action.KEEP_ALIVE_RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->d(Lcom/viber/service/VoipConnectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/service/p;

    invoke-direct {v1, p0}, Lcom/viber/service/p;-><init>(Lcom/viber/service/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.VERSION_CHECK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v1}, Lcom/viber/service/VoipConnectorService;->e(Lcom/viber/service/VoipConnectorService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 216
    :cond_3
    const-string/jumbo v0, "com.viber.voip.action.SEND_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-virtual {v0, p1, p2}, Lcom/viber/service/VoipConnectorService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    :cond_4
    const-string/jumbo v0, "com.viber.voip.action.SETTINGS_CHANGE_CHECK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->d(Lcom/viber/service/VoipConnectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/service/r;

    invoke-direct {v1, p0}, Lcom/viber/service/r;-><init>(Lcom/viber/service/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 234
    :cond_5
    const-string/jumbo v0, "com.viber.voip.action.APP_ON_FOREGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->d(Lcom/viber/service/VoipConnectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/service/s;

    invoke-direct {v1, p0}, Lcom/viber/service/s;-><init>(Lcom/viber/service/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

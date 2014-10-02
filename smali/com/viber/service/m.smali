.class Lcom/viber/service/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/service/VoipConnectorService;


# direct methods
.method constructor <init>(Lcom/viber/service/VoipConnectorService;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/viber/service/m;->a:Lcom/viber/service/VoipConnectorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 177
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/viber/service/m;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->c(Lcom/viber/service/VoipConnectorService;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/viber/service/m;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->c(Lcom/viber/service/VoipConnectorService;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

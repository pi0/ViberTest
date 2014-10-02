.class Lcom/viber/service/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/n;


# direct methods
.method constructor <init>(Lcom/viber/service/n;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/service/p;->a:Lcom/viber/service/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/service/p;->a:Lcom/viber/service/n;

    iget-object v0, v0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    const-string/jumbo v1, "KeepAlive received , sendind KA"

    invoke-static {v0, v1}, Lcom/viber/service/VoipConnectorService;->a(Lcom/viber/service/VoipConnectorService;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/viber/service/p;->a:Lcom/viber/service/n;

    iget-object v0, v0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/service/VoipConnectorService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/service/q;

    invoke-direct {v1, p0}, Lcom/viber/service/q;-><init>(Lcom/viber/service/p;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 211
    return-void
.end method

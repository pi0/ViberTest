.class Lcom/viber/service/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/VoipConnectorService;


# direct methods
.method constructor <init>(Lcom/viber/service/VoipConnectorService;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/viber/service/k;->a:Lcom/viber/service/VoipConnectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "VoipConnectorService"

    const-string/jumbo v1, "ViberApplication initApplication STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/viber/service/k;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->a(Lcom/viber/service/VoipConnectorService;)V

    .line 107
    :cond_0
    const-string/jumbo v0, "VoipConnectorService"

    const-string/jumbo v1, "ViberApplication initApplication FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

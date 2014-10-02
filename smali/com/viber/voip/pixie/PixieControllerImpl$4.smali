.class Lcom/viber/voip/pixie/PixieControllerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/pixie/PixieControllerImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$4;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewActivationFileLoaded()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pixie: Activation list refreshed."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$4;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    const/4 v1, 0x1

    #calls: Lcom/viber/voip/pixie/PixieControllerImpl;->startPixieIfNeeded(Z)V
    invoke-static {v0, v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1000(Lcom/viber/voip/pixie/PixieControllerImpl;Z)V

    .line 160
    return-void
.end method

.method public onNewEdgeListLoaded()V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pixie: Edge proxy list refreshed. Alerting native."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$4;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$4;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdateEdgeListOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$900(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerReadyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 154
    return-void
.end method

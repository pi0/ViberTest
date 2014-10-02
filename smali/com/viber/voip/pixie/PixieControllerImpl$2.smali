.class Lcom/viber/voip/pixie/PixieControllerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerReadyListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/pixie/PixieControllerImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$2;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pixie: phone controller ready calling native setPixieBundle()"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$2;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$2;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/pixie/PixieServices;->getEdgeProxyBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->setPixieBundle(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$2;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 133
    return-void
.end method

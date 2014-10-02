.class Lcom/viber/voip/pixie/PixieControllerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/pixie/PixieControllerImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$3;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 5
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$3;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-virtual {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->getPixieMode()I

    move-result v0

    .line 141
    const/4 v1, 0x3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pixie: phone controller initialized calling native setPixieMode( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$3;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->setPixieMode(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$3;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 145
    return-void
.end method

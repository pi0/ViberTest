.class Lcom/viber/voip/pixie/PixieControllerImpl$1;
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
    .line 58
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$800(Lcom/viber/voip/pixie/PixieControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;-><init>(Lcom/viber/voip/pixie/PixieControllerImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

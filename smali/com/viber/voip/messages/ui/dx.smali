.class Lcom/viber/voip/messages/ui/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/PttViewController;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dx;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dx;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->a(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/jni/ptt/PttController;)Lcom/viber/jni/ptt/PttController;

    .line 108
    return-void
.end method

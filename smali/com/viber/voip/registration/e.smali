.class Lcom/viber/voip/registration/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ActivationController;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ActivationController;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/voip/registration/e;->a:Lcom/viber/voip/registration/ActivationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    invoke-interface {p1}, Lcom/viber/jni/controller/PhoneController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/viber/voip/registration/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/f;-><init>(Lcom/viber/voip/registration/e;)V

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->a(Lcom/viber/voip/contacts/c/v;)V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/e;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$300(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/e;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->mNetworkListener:Lcom/viber/jni/PhoneControllerDelegateAdapter;
    invoke-static {v1}, Lcom/viber/voip/registration/ActivationController;->access$200(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/registration/e;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$500(Lcom/viber/voip/registration/ActivationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/e;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->waitServiceConnectedTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/viber/voip/registration/ActivationController;->access$400(Lcom/viber/voip/registration/ActivationController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

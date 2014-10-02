.class Lcom/viber/voip/registration/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ActivationController;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ActivationController;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/viber/voip/registration/g;->a:Lcom/viber/voip/registration/ActivationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    const-string/jumbo v0, "resumeActivation waitServiceConnectedTimeout"

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/registration/g;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$300(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/g;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->mNetworkListener:Lcom/viber/jni/PhoneControllerDelegateAdapter;
    invoke-static {v1}, Lcom/viber/voip/registration/ActivationController;->access$200(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 228
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setNeedSyncUserInfo(Z)V

    .line 229
    iget-object v0, p0, Lcom/viber/voip/registration/g;->a:Lcom/viber/voip/registration/ActivationController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 233
    return-void
.end method

.class Lcom/viber/voip/registration/h;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ActivationController;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ActivationController;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/viber/voip/registration/h;->a:Lcom/viber/voip/registration/ActivationController;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 239
    invoke-static {}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->values()[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    aget-object v0, v0, p1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeActivation onServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/viber/voip/registration/n;->a:[I

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 243
    :pswitch_0
    const-string/jumbo v0, "resumeActivation SERVICE_CONNECTED"

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/viber/voip/registration/h;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->app:Lcom/viber/voip/ViberApplication;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$300(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/registration/h;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$500(Lcom/viber/voip/registration/ActivationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/h;->a:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->waitServiceConnectedTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/viber/voip/registration/ActivationController;->access$400(Lcom/viber/voip/registration/ActivationController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    new-instance v0, Lcom/viber/voip/registration/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/i;-><init>(Lcom/viber/voip/registration/h;)V

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->a(Lcom/viber/voip/contacts/c/v;)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

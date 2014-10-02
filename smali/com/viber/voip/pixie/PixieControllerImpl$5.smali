.class Lcom/viber/voip/pixie/PixieControllerImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/pixie/PixieControllerImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 170
    .line 171
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices;->getInstance(Landroid/content/Context;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v4

    #setter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v3, v4}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$402(Lcom/viber/voip/pixie/PixieControllerImpl;Lcom/viber/voip/pixie/PixieServices;)Lcom/viber/voip/pixie/PixieServices;

    .line 173
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pixie: startPixieTask. mPixieSettings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1100()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v3, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_OFF:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1100()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 175
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumberCanonized()Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 177
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v5

    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_ALWAYS_ON:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1100()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    move-result-object v6

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v3, v4, v0}, Lcom/viber/voip/pixie/PixieServices;->shouldUsePixieSystem(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 179
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1200(Lcom/viber/voip/pixie/PixieControllerImpl;)Z

    move-result v0

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 180
    :goto_1
    if-nez v0, :cond_3

    .line 182
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pixie: no change in pixie settings"

    invoke-static {v7, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #calls: Lcom/viber/voip/pixie/PixieControllerImpl;->notifyItsOkayToUseNetwork()V
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$600(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    .line 224
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 178
    goto :goto_0

    :cond_2
    move v0, v2

    .line 179
    goto :goto_1

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #setter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z
    invoke-static {v1, v3}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1202(Lcom/viber/voip/pixie/PixieControllerImpl;Z)Z

    .line 188
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v1

    iget-object v3, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    iget-object v3, v3, Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieListener:Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;

    invoke-virtual {v1, v3}, Lcom/viber/voip/pixie/PixieServices;->setListener(Lcom/viber/voip/pixie/PixieServices$PixieServicesCallback;)V

    .line 191
    :goto_3
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1200(Lcom/viber/voip/pixie/PixieControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pixie: will start pixie when PhoneController is ready."

    invoke-static {v7, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$100(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerReadyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    goto :goto_2

    .line 202
    :cond_4
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Pixie: not in a blocked country. continuing."

    invoke-static {v7, v1, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #calls: Lcom/viber/voip/pixie/PixieControllerImpl;->notifyItsOkayToUseNetwork()V
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$600(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    .line 206
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pixie: startPixieTask mPixieSettings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1100()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pixieSettingsWereChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mShouldUsePixieSystem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z
    invoke-static {v4}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1200(Lcom/viber/voip/pixie/PixieControllerImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_OFF:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1100()Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 208
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mShouldUsePixieSystem:Z
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1200(Lcom/viber/voip/pixie/PixieControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #setter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieWasCalled:Z
    invoke-static {v0, v2}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$1302(Lcom/viber/voip/pixie/PixieControllerImpl;Z)Z

    .line 216
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$5;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdatePixieModeOnPhoneControllerInitialized:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$700(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 217
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 218
    instance-of v1, v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;

    if-eqz v1, :cond_0

    .line 220
    check-cast v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;

    invoke-virtual {v0, v2}, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->redirect(Z)V

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_3
.end method

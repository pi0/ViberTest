.class Lcom/viber/voip/ds;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;


# direct methods
.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/viber/voip/ds;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/dm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/viber/voip/ds;-><init>(Lcom/viber/voip/ViberApplication;)V

    return-void
.end method


# virtual methods
.method public hideCallBack()V
    .locals 1

    .prologue
    .line 1108
    const-string/jumbo v0, "CallBackListener hideCallBack"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public onDebugInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1147
    return-void
.end method

.method public onShouldRegister()V
    .locals 3

    .prologue
    .line 1129
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 1130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->setActivated(Z)V

    .line 1132
    iget-object v0, p0, Lcom/viber/voip/ds;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ActivationController;->setKeyChainDeviceKey(Ljava/lang/String;)V

    .line 1134
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v1, "extra_navigate_should_register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1138
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 1139
    return-void
.end method

.method public showCallBack(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CallBackListener showCallBack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1117
    return-void
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CallBackListener showDialog type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Ctx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/viber/voip/ds;->a:Lcom/viber/voip/ViberApplication;

    #calls: Lcom/viber/voip/ViberApplication;->doShowDialog(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/viber/voip/ViberApplication;->access$200(Lcom/viber/voip/ViberApplication;ILjava/lang/String;)V

    .line 1104
    return-void
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1121
    const-string/jumbo v0, "CallBackListener switchToGSM"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

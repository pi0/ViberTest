.class Lcom/viber/voip/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/viber/voip/cp;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/cp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1014
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/cp;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/cp;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/cp;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v2}, Lcom/viber/voip/sms/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/cp;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 1024
    :goto_1
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    const/4 v1, 0x6

    const-string/jumbo v2, "SystemDialogActivity"

    const-string/jumbo v3, "startActivity"

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/cp;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/SystemDialogActivity;->b(Lcom/viber/voip/SystemDialogActivity;)V

    goto :goto_1
.end method

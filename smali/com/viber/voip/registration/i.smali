.class Lcom/viber/voip/registration/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/v;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/h;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/viber/voip/registration/i;->a:Lcom/viber/voip/registration/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/q;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeActivation ACTIVATION_STEP_CHECK_USER_DATA onInfoReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/viber/voip/contacts/c/q;->a:Lcom/viber/voip/contacts/c/q;

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/viber/voip/registration/i;->a:Lcom/viber/voip/registration/h;

    iget-object v0, v0, Lcom/viber/voip/registration/h;->a:Lcom/viber/voip/registration/ActivationController;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/i;->a:Lcom/viber/voip/registration/h;

    iget-object v0, v0, Lcom/viber/voip/registration/h;->a:Lcom/viber/voip/registration/ActivationController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    goto :goto_0
.end method

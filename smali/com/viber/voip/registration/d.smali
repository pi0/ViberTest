.class Lcom/viber/voip/registration/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/registration/p;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/b;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivationStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/b;->a(Ljava/lang/String;)V

    .line 70
    if-eq p1, v4, :cond_0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-static {v0}, Lcom/viber/voip/registration/b;->c(Lcom/viber/voip/registration/b;)V

    .line 74
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 76
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/viber/voip/registration/ActivationController;->unregisterActivationStateListener(Lcom/viber/voip/registration/p;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivationStateChange ACTIVATION_STEP_COMPLETE insert message tzintukNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-static {v2}, Lcom/viber/voip/registration/b;->d(Lcom/viber/voip/registration/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , activateCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-static {v2}, Lcom/viber/voip/registration/b;->e(Lcom/viber/voip/registration/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/registration/b;->a(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-static {v1}, Lcom/viber/voip/registration/b;->d(Lcom/viber/voip/registration/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-static {v1}, Lcom/viber/voip/registration/b;->e(Lcom/viber/voip/registration/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v1

    const v2, 0x7f0c07a6

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c07d5

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/viber/voip/registration/d;->a:Lcom/viber/voip/registration/b;

    invoke-static {v5}, Lcom/viber/voip/registration/b;->e(Lcom/viber/voip/registration/b;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/sms/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    return-void
.end method

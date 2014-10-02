.class public Lcom/viber/voip/process/a/a;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/process/a/a;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/process/a/a;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/viber/voip/process/a/b;

    invoke-direct {v1, p0, v0, p2}, Lcom/viber/voip/process/a/b;-><init>(Lcom/viber/voip/process/a/a;Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/voip/process/b;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 37
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetBillingToken()Z

    .line 38
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 43
    const-string/jumbo v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/process/a/a;->a(JLjava/lang/String;)V

    .line 45
    return-void
.end method

.class public Lcom/viber/voip/market/a/a;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/market/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v2

    .line 39
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    .line 40
    if-eqz v2, :cond_0

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/market/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/market/a/a;->a:Lcom/viber/voip/market/a/b;

    .line 25
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/market/a/a;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/market/a/a;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string/jumbo v1, "online"

    invoke-direct {p0}, Lcom/viber/voip/market/a/a;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    invoke-interface {p2, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    const-string/jumbo v0, "online"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/viber/voip/market/a/a;->a:Lcom/viber/voip/market/a/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/market/a/b;->a(Z)V

    .line 47
    return-void
.end method

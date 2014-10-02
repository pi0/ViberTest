.class public Lcom/viber/service/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/service/i;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/viber/service/g;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/viber/service/g;-><init>(Lcom/viber/service/f;Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/connection/ConnectionListener;Lcom/viber/service/i;)V

    .line 35
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1}, Lcom/viber/service/i;->a()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/viber/jni/connection/ConnectionDelegate;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    new-instance v3, Lcom/viber/service/h;

    invoke-direct {v3, p0, v1, v2}, Lcom/viber/service/h;-><init>(Lcom/viber/service/f;Lcom/viber/jni/connection/ConnectionListener;Lcom/viber/jni/connection/ConnectionDelegate;)V

    invoke-virtual {v0, v3}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto :goto_0
.end method

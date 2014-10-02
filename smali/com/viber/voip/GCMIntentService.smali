.class public Lcom/viber/voip/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "373969298204"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lcom/viber/voip/b/a;->a()Lcom/viber/voip/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/b/a;->a(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    sget-boolean v0, Lcom/viber/voip/dx;->b:Z

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "GCMIntentService"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/GCMIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/ab;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/ab;-><init>(Lcom/viber/voip/GCMIntentService;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/viber/voip/b/a;->a()Lcom/viber/voip/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    invoke-super {p0, p1, p2}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lcom/viber/voip/b/a;->a()Lcom/viber/voip/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/viber/voip/b/a;->a()Lcom/viber/voip/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/b/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/viber/voip/b/a;->a()Lcom/viber/voip/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

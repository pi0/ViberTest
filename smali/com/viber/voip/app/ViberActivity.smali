.class public abstract Lcom/viber/voip/app/ViberActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "SourceFile"


# static fields
.field public static sLastUsedActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method public static getLastUsedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    sput-object p0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 23
    invoke-static {}, Lcom/viber/voip/process/l;->a()Lcom/viber/voip/process/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/process/l;->a(Landroid/app/Activity;)V

    .line 25
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 63
    invoke-static {}, Lcom/viber/voip/process/l;->a()Lcom/viber/voip/process/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/process/l;->b(Landroid/app/Activity;)V

    .line 64
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/Window;)V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 42
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 31
    instance-of v0, p0, Lcom/viber/voip/WelcomeActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 32
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isUseDelayedLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/app/ViberActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 37
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 47
    sput-object p0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 48
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onStart()V

    .line 50
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->a(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onStop()V

    .line 57
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->b(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

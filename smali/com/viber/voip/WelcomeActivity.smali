.class public Lcom/viber/voip/WelcomeActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/viber/voip/WelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/viber/voip/WelcomeActivity;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 42
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/WelcomeActivity;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/WelcomeActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/viber/voip/WelcomeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/viberout/e;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 80
    invoke-direct {p0}, Lcom/viber/voip/WelcomeActivity;->c()V

    .line 82
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a;->d()V

    .line 86
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v1, "EXTRA_RETURN_TO_HOME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-class v1, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    invoke-static {p0, v0, v3}, Lcom/viber/voip/util/bm;->a(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    const-class v1, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "EXTRA_FROM_LAUNCH_ACTIVITY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/viber/voip/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/viber/voip/WelcomeActivity;->finish()V

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    sget-boolean v1, Lcom/viber/voip/WelcomeActivity;->b:Z

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/viber/voip/WelcomeActivity;->e()V

    .line 131
    sput-boolean v0, Lcom/viber/voip/WelcomeActivity;->b:Z

    .line 134
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v1

    .line 137
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->isActivationCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->d()V

    .line 139
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/service/contacts/sync/a;->e()V

    .line 142
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->resumeActivation()V

    goto :goto_0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "ViberApplication initialization Welcome"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "async_native_lib_load"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/ea;

    invoke-direct {v1, p0}, Lcom/viber/voip/ea;-><init>(Lcom/viber/voip/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 66
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/viber/voip/WelcomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lcom/viber/voip/WelcomeActivity;->setContentView(I)V

    .line 71
    sget-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "ViberApplication initialization Service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    sget-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "ViberApplication initialization Welcome DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 63
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/WelcomeActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 197
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/WelcomeActivity;->c:Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/viber/voip/WelcomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/viber/voip/WelcomeActivity;->b()V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "ViberApplication initialization Welcome RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v0, p0, Lcom/viber/voip/WelcomeActivity;->c:Z

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/WelcomeActivity;->c:Z

    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/WelcomeActivity;->finish()V

    .line 106
    :goto_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onResume()V

    .line 107
    sget-object v0, Lcom/viber/voip/WelcomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "ViberApplication initialization Welcome RESUME DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/WelcomeActivity;->c:Z

    goto :goto_0
.end method

.class public Lcom/viber/voip/rakuten/RakutenRegistrationActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v4/app/DialogFragment;

.field private c:Landroid/os/Handler;

.field private d:Lcom/viber/voip/rakuten/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/viber/voip/rakuten/u;

    invoke-direct {v0, p0}, Lcom/viber/voip/rakuten/u;-><init>(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)V

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->d:Lcom/viber/voip/rakuten/q;

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)Lcom/viber/voip/rakuten/q;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->d:Lcom/viber/voip/rakuten/q;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 89
    const-string/jumbo v0, "showProgressDialog"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->d()V

    .line 91
    invoke-static {}, Lcom/viber/voip/rakuten/y;->a()Lcom/viber/voip/rakuten/y;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    .line 92
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 103
    const-string/jumbo v0, "showConfirmationDialog"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->d()V

    .line 105
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/rakuten/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/rakuten/v;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    .line 106
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 110
    const-string/jumbo v0, "showRegistrationSuccessDialog"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->d()V

    .line 112
    invoke-static {}, Lcom/viber/voip/rakuten/ab;->a()Lcom/viber/voip/rakuten/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    .line 113
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c()V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "hideDialog"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 96
    const-string/jumbo v0, "showRegistrationFailureDialog"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->d()V

    .line 98
    invoke-static {}, Lcom/viber/voip/rakuten/z;->a()Lcom/viber/voip/rakuten/z;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    .line 99
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->b:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    const-string/jumbo v0, "onCreate"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "onPause"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 40
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/rakuten/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/rakuten/s;-><init>(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "onResume"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c(Ljava/lang/String;)V

    .line 52
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/rakuten/t;

    invoke-direct {v1, p0}, Lcom/viber/voip/rakuten/t;-><init>(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

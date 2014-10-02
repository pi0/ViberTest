.class public Lcom/viber/voip/registration/DeActivationActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/registration/ay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 207
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolveIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->b(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "skip_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "402"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->b(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/registration/DeActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/viber/voip/registration/DeActivationActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/DeActivationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/DeActivationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeActivationRejected errorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->b(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/registration/DeActivationActivity;->a(ILjava/lang/String;)V

    .line 165
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, "onDeActivationAccepted"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->b(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    .line 150
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Lcom/viber/voip/registration/ActivationController;->deActivateDone(Landroid/app/Activity;)V

    .line 152
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x3

    const-string/jumbo v1, "DeActivationActivity"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/viber/voip/registration/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/registration/ay;-><init>(Lcom/viber/voip/registration/DeActivationActivity;Lcom/viber/voip/registration/ax;)V

    iput-object v0, p0, Lcom/viber/voip/registration/DeActivationActivity;->a:Lcom/viber/voip/registration/ay;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 183
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    :cond_0
    new-instance v2, Lcom/viber/voip/registration/az;

    invoke-direct {v2}, Lcom/viber/voip/registration/az;-><init>()V

    .line 200
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string/jumbo v4, "dialog_id"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string/jumbo v4, "error_msg_id"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v3}, Lcom/viber/voip/registration/az;->setArguments(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/registration/az;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 186
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/registration/DeActivationActivity;->a(ILjava/lang/String;)V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03012f

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->setContentView(I)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/registration/DeActivationActivity;->a:Lcom/viber/voip/registration/ay;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/viber/voip/registration/DeActivationActivity;->a:Lcom/viber/voip/registration/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ay;->cancel(Z)Z

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 279
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const-string/jumbo v0, "onNewIntent"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->b(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/DeActivationActivity;->a(Landroid/content/Intent;)V

    .line 65
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/registration/DeActivationActivity;->a:Lcom/viber/voip/registration/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/DeActivationActivity;->a:Lcom/viber/voip/registration/ay;

    invoke-virtual {v0}, Lcom/viber/voip/registration/ay;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->finish()V

    .line 174
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "onStart"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->b(Ljava/lang/String;)V

    .line 57
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/registration/DeActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/DeActivationActivity;->a(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.class public Lcom/viber/voip/registration/RegistrationActivity;
.super Lcom/viber/voip/registration/BaseRegistrationActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/registration/o;


# static fields
.field private static f:I


# instance fields
.field protected a:Landroid/support/v4/app/Fragment;

.field private b:Lcom/viber/voip/widget/MessageBar;

.field private c:Lcom/viber/voip/registration/af;

.field private d:Lcom/viber/voip/registration/b;

.field private e:Landroid/widget/TextView;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/registration/BaseRegistrationActivity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->h:I

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    new-instance v0, Lcom/viber/voip/registration/ca;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/registration/ca;-><init>(Lcom/viber/voip/registration/RegistrationActivity;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/RegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/registration/RegistrationActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/RegistrationActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/RegistrationActivity;->b(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 220
    :cond_0
    const v1, 0x7f0703a1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 221
    const v1, 0x7f040002

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 222
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 224
    iput-object p1, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    .line 225
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v0

    .line 104
    iget v1, p0, Lcom/viber/voip/registration/RegistrationActivity;->h:I

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/viber/voip/registration/RegistrationActivity;->j()V

    .line 135
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreen step : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/RegistrationActivity;->b(Ljava/lang/String;)V

    .line 111
    packed-switch v0, :pswitch_data_0

    .line 127
    :pswitch_0
    const-string/jumbo v1, "Activation Completed. Nothing to show"

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/RegistrationActivity;->b(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->finish()V

    .line 132
    :goto_1
    iput v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->h:I

    .line 134
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/rakuten/l;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->e()V

    goto :goto_1

    .line 116
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->b()V

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/RegistrationActivity;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 120
    :pswitch_3
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->f()V

    goto :goto_1

    .line 123
    :pswitch_4
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->c()V

    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->g()V

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "activation_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/viber/voip/registration/t;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/viber/voip/registration/t;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/t;->b(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/viber/voip/registration/t;

    invoke-direct {v0}, Lcom/viber/voip/registration/t;-><init>()V

    .line 176
    invoke-static {p1}, Lcom/viber/voip/registration/RegistrationActivity;->intentToFragmentArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/t;->setArguments(Landroid/os/Bundle;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 178
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->d()V

    .line 179
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/viber/voip/registration/ai;

    invoke-virtual {v0, p1}, Lcom/viber/voip/registration/ai;->a(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->c:Lcom/viber/voip/registration/af;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/viber/voip/registration/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/af;-><init>(Lcom/viber/voip/registration/o;)V

    iput-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->c:Lcom/viber/voip/registration/af;

    .line 149
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->c:Lcom/viber/voip/registration/af;

    invoke-virtual {v0}, Lcom/viber/voip/registration/af;->a()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/viber/voip/registration/b;

    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/registration/b;-><init>(Lcom/viber/voip/registration/o;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    .line 154
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    invoke-virtual {v0}, Lcom/viber/voip/registration/b;->a()V

    .line 156
    :cond_1
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->c:Lcom/viber/voip/registration/af;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->c:Lcom/viber/voip/registration/af;

    invoke-virtual {v0}, Lcom/viber/voip/registration/af;->b()V

    .line 161
    iput-object v1, p0, Lcom/viber/voip/registration/RegistrationActivity;->c:Lcom/viber/voip/registration/af;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    invoke-virtual {v0}, Lcom/viber/voip/registration/b;->b()V

    .line 165
    iput-object v1, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    .line 167
    :cond_1
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 182
    const v0, 0x7f0703a3

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/viber/voip/registration/cb;

    invoke-direct {v0}, Lcom/viber/voip/registration/cb;-><init>()V

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 190
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/viber/voip/registration/bn;

    invoke-direct {v0}, Lcom/viber/voip/registration/bn;-><init>()V

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 194
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/viber/voip/user/UserDataFragment;

    invoke-direct {v0}, Lcom/viber/voip/user/UserDataFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 198
    return-void
.end method

.method public h()Lcom/viber/voip/widget/MessageBar;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->b:Lcom/viber/voip/widget/MessageBar;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    .line 230
    invoke-super {p0}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onBackPressed()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-super {p0}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    const v0, 0x7f0703a2

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020452

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->a:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/viber/voip/user/UserDataFragment;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->g()V

    .line 267
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    :goto_0
    or-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate ACTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",activeInstances:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->b(Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    sget v0, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    .line 55
    sget v0, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.UPDATE_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    :cond_0
    const-string/jumbo v1, "RegistrationActivity"

    const-string/jumbo v2, "sending update screen broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->finish()V

    .line 63
    monitor-exit p0

    .line 92
    :goto_1
    return-void

    .line 45
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 65
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const v0, 0x7f030119

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/viber/voip/registration/RegistrationActivity;->i()V

    .line 71
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lcom/viber/voip/widget/MessageBar;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/MessageBar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->b:Lcom/viber/voip/widget/MessageBar;

    .line 75
    :cond_3
    const v0, 0x7f0702b9

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->e:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/viber/voip/registration/by;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/by;-><init>(Lcom/viber/voip/registration/RegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Lcom/viber/voip/registration/bz;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/bz;-><init>(Lcom/viber/voip/registration/RegistrationActivity;)V

    iput-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->g:Landroid/content/BroadcastReceiver;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.viber.voip.action.UPDATE_SCREEN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/RegistrationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    sget v0, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy activeInstances:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/viber/voip/registration/RegistrationActivity;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->b(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->c()V

    .line 276
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/RegistrationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onDestroy()V

    .line 278
    return-void

    .line 273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 250
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/RegistrationActivity;->finish()V

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/viber/voip/registration/RegistrationActivity;->d:Lcom/viber/voip/registration/b;

    invoke-virtual {v0}, Lcom/viber/voip/registration/b;->c()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/registration/BaseRegistrationActivity;->onPause()V

    .line 100
    return-void
.end method

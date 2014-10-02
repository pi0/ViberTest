.class public Lcom/viber/voip/user/YouActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/user/YouFragment$Callbacks;


# static fields
.field public static final ACTION_EDIT_NAME:I = 0x65

.field public static final ACTION_GET_FACEBOOK_DETAILS:I = 0x64

.field public static final REQUEST_CODE_ACTIONS_FROM_POPUP_MENU:I = 0x4d1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isActionBarWithShadow()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 88
    return-void

    .line 68
    :pswitch_0
    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 70
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment;

    .line 71
    const-string/jumbo v1, "action"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment;->onFacebookDetailsRequested()V

    goto :goto_0

    .line 76
    :pswitch_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment;->showDialog(I)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x4d1
        :pswitch_0
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAnalyticsPageViewChanged()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->h:Lcom/viber/voip/a/ba;

    invoke-virtual {v1}, Lcom/viber/voip/a/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020369

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 30
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->isActionBarWithShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_0
    if-nez p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 37
    const v1, 0x1020002

    new-instance v2, Lcom/viber/voip/user/YouFragment;

    invoke-direct {v2}, Lcom/viber/voip/user/YouFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 38
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 40
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 50
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/YouActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/user/YouActivity;->finish()V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onYouItemSelected(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/viber/voip/user/YouActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

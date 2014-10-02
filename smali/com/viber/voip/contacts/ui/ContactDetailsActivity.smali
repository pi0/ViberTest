.class public Lcom/viber/voip/contacts/ui/ContactDetailsActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/ui/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;-><init>()V

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->finish()V

    .line 106
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 67
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_RETURN_TO_HOME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const-string/jumbo v1, "invalidate_options_menu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    :cond_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->finish()V

    goto :goto_0

    .line 80
    :cond_2
    invoke-super {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->requestViberOutCheck()V

    .line 28
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/d;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->setIntent(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 49
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 61
    :goto_0
    return v1

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string/jumbo v3, "com.viber.voip.action.VIEW_CONTACT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.viber.voip.action.VIEW_CONTACT_DIALOG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 53
    :cond_0
    new-instance v2, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.viber.voip.action.CALL_LOG"

    :goto_1
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const-string/jumbo v0, "invalidate_options_menu"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    :cond_1
    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->finish()V

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.CONTACTS"

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onStart()V

    .line 44
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

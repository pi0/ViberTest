.class public Lcom/viber/voip/contacts/ui/ContactsListActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/ui/bl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a(ZLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;-><init>()V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/d;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->finish()V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

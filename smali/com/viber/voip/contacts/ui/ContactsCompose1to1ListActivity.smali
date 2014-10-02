.class public Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/ui/bl;


# instance fields
.field private b:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public a(ZLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/viber/voip/contacts/ui/al;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/al;-><init>()V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->u:Lcom/viber/voip/a/i;

    invoke-virtual {v1}, Lcom/viber/voip/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 44
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/d;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    return v0

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsCompose1to1ListActivity;->finish()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

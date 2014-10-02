.class public Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/ui/bc;


# instance fields
.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->finish()V

    .line 124
    return-void
.end method

.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/contacts/ui/cp;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/cp;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/ap;-><init>()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->t:Lcom/viber/voip/a/j;

    invoke-virtual {v1}, Lcom/viber/voip/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_public_group_compose"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.viber.voip.action.PUBLIC_GROUP_ADD_PARTICIPANTS"

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_1
    iput-boolean v3, p0, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->c:Z

    .line 50
    :cond_2
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/d;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 103
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

    .line 75
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    return v0

    .line 77
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 78
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->finish()V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

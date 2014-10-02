.class public abstract Lcom/viber/voip/app/ViberSingleFragmentActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# instance fields
.field protected a:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Landroid/support/v4/app/Fragment;
.end method

.method public c()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/app/ViberSingleFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    if-nez p1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/app/ViberSingleFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    .line 39
    iget-object v0, p0, Lcom/viber/voip/app/ViberSingleFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->intentToFragmentArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070094

    iget-object v2, p0, Lcom/viber/voip/app/ViberSingleFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "single_pane"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    :goto_1
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "single_pane"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/app/ViberSingleFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

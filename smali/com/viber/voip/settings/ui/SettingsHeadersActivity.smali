.class public Lcom/viber/voip/settings/ui/SettingsHeadersActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/ui/bi;
.implements Lcom/viber/voip/settings/ui/by;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field protected b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "preference_category_extra"

    sput-object v0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    .line 189
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    const-string/jumbo v0, "selected_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "selected_item"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    .line 63
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    iget v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a(I)V

    .line 65
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a()V

    .line 67
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 112
    :cond_1
    const v1, 0x7f07009d

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 117
    iput-object p1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 155
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    if-eq v0, v1, :cond_0

    .line 156
    iput v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    .line 157
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c03d8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0203d2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 160
    new-instance v0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    .line 161
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 91
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    invoke-static {v0}, Lcom/viber/voip/settings/ui/ca;->a(I)Lcom/viber/voip/user/YouFragment$PreferenceItem;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedSettingsTitle mSelectedSettingsItemId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",preferenceItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget v2, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->title:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->barIcon:I

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 101
    :cond_0
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceAttached root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", xmlId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSettingsItemSelected position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 123
    iput p2, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    .line 125
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a()V

    .line 126
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    .line 171
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/viber/voip/settings/ui/bv;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0203d2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 46
    new-instance v0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    .line 47
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->setIntent(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->onBackPressed()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string/jumbo v0, "com.viber.voip.settings.ui.SettingsHeadersActivity.selectedItemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    .line 79
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->c:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    iget v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a(I)V

    .line 81
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->a()V

    .line 83
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    const-string/jumbo v0, "com.viber.voip.settings.ui.SettingsHeadersActivity.selectedItemId"

    iget v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

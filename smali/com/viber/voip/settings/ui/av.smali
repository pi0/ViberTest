.class public Lcom/viber/voip/settings/ui/av;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/viber/voip/settings/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f050007

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 33
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Lcom/viber/voip/settings/ui/aw;

    invoke-direct {v0, p0}, Lcom/viber/voip/settings/ui/aw;-><init>(Lcom/viber/voip/settings/ui/av;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 115
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a;->e()V

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/viber/voip/settings/ui/av;->e()V

    .line 121
    return-void
.end method

.method private static e()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/viber/voip/backgrounds/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a;->d()V

    .line 96
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/av;->a(Landroid/app/Activity;Z)V

    .line 125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "portraitUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "landscapeUri"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    const/4 v2, 0x3

    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult: action(portrait img uri): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", landscape img uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/backgrounds/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/av;->a(Landroid/app/Activity;Z)V

    .line 90
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/settings/ui/bv;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    return-void

    .line 85
    :cond_1
    const-string/jumbo v0, "remove_conversation_background"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/viber/voip/settings/ui/av;->e()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/viber/voip/settings/j;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/av;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 40
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 53
    invoke-static {}, Lcom/viber/voip/settings/j;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.BACKGROUND_GALLERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "has_background"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x7d4

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bv;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/av;->a(Landroid/app/Activity;Z)V

    .line 47
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/av;->a(Landroid/app/Activity;Z)V

    .line 72
    :cond_0
    return-void
.end method

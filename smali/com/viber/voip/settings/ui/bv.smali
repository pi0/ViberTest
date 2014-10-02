.class public abstract Lcom/viber/voip/settings/ui/bv;
.super Lcom/viber/voip/settings/ui/bg;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/viber/voip/settings/m;


# instance fields
.field protected d:Landroid/app/Activity;

.field e:Landroid/preference/PreferenceScreen;

.field f:Lcom/viber/voip/settings/l;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/ui/bg;-><init>(I)V

    .line 193
    iput-object v0, p0, Lcom/viber/voip/settings/ui/bv;->e:Landroid/preference/PreferenceScreen;

    .line 194
    iput-object v0, p0, Lcom/viber/voip/settings/ui/bv;->f:Lcom/viber/voip/settings/l;

    .line 202
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bv;->f:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p4, p3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 260
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 262
    invoke-virtual {p0, p4}, Lcom/viber/voip/settings/ui/bv;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 263
    instance-of v2, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 265
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    :cond_0
    return-void

    :cond_1
    move-object p1, p2

    .line 260
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bg;->onActivityCreated(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bv;->d:Landroid/app/Activity;

    .line 219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bg;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bv;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bv;->e:Landroid/preference/PreferenceScreen;

    .line 209
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bv;->f:Lcom/viber/voip/settings/l;

    .line 210
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bv;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bg;->onPause()V

    .line 231
    const-string/jumbo v0, "onPause"

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bv;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceClick preference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bv;->a(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bg;->onResume()V

    .line 224
    const-string/jumbo v0, "onResume"

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bv;->a(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bv;->f:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 226
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferencesStorageChanged key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bv;->a(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bg;->onStop()V

    .line 238
    const-string/jumbo v0, "onStop"

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bv;->a(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bv;->f:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->b(Lcom/viber/voip/settings/m;)V

    .line 240
    return-void
.end method

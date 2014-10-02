.class public Lcom/viber/voip/settings/ui/ax;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f050008

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 38
    return-void
.end method

.method public static a(Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter

    .prologue
    .line 271
    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->X()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 272
    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->z()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 273
    invoke-static {}, Lcom/viber/voip/settings/j;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->T()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 274
    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->u()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 275
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const v7, 0x7f0c03e9

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ax;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 163
    new-array v1, v3, [Ljava/lang/String;

    const v2, 0x7f0c03ea

    invoke-virtual {p0, v2}, Lcom/viber/voip/settings/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0c03ec

    invoke-virtual {p0, v2}, Lcom/viber/voip/settings/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 164
    new-array v2, v3, [Ljava/lang/String;

    const v3, 0x7f0c03eb

    invoke-virtual {p0, v3}, Lcom/viber/voip/settings/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0c03ed

    invoke-virtual {p0, v3}, Lcom/viber/voip/settings/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 166
    new-instance v3, Lcom/viber/voip/settings/ui/ba;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ax;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/viber/voip/settings/ui/ba;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    .line 168
    const-string/jumbo v5, "ara"

    .line 169
    const-string/jumbo v5, "ara"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    const v4, 0x7f0300c4

    invoke-virtual {v3, v4}, Lcom/viber/voip/settings/ui/ba;->setLayoutResource(I)V

    .line 174
    :goto_0
    invoke-static {}, Lcom/viber/voip/settings/j;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/settings/ui/ba;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, v1}, Lcom/viber/voip/settings/ui/ba;->setEntries([Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v3, v1}, Lcom/viber/voip/settings/ui/ba;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v3, v2}, Lcom/viber/voip/settings/ui/ba;->a([Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v3, v7}, Lcom/viber/voip/settings/ui/ba;->setDialogTitle(I)V

    .line 179
    invoke-virtual {v3, v7}, Lcom/viber/voip/settings/ui/ba;->setTitle(I)V

    .line 180
    aget-object v1, v1, v6

    invoke-virtual {v3, v1}, Lcom/viber/voip/settings/ui/ba;->setDefaultValue(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    new-instance v0, Lcom/viber/voip/settings/ui/ay;

    invoke-direct {v0, p0}, Lcom/viber/voip/settings/ui/ay;-><init>(Lcom/viber/voip/settings/ui/ax;)V

    invoke-virtual {v3, v0}, Lcom/viber/voip/settings/ui/ba;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    return-void

    .line 172
    :cond_0
    const v4, 0x7f030013

    invoke-virtual {v3, v4}, Lcom/viber/voip/settings/ui/ba;->setLayoutResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->d()V

    .line 280
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/ax;->b()V

    .line 46
    invoke-static {}, Lcom/viber/voip/registration/dj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ax;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/ax;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ax;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/ax;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 56
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/ax;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 63
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/ax;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    .line 68
    :cond_0
    return v2
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->i(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->i(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->z()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/ax;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->b(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->b(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->u()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/ax;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->d()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->k(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->k(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->H()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/ax;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0
.end method

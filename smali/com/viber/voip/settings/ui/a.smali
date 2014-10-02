.class public Lcom/viber/voip/settings/ui/a;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/viber/voip/settings/m;


# instance fields
.field private b:Lcom/viber/voip/messages/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f050005

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 53
    return-void
.end method

.method public static a(Lcom/viber/voip/settings/l;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 267
    invoke-static {}, Lcom/viber/voip/settings/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->e()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 268
    invoke-static {}, Lcom/viber/voip/settings/j;->e()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/viber/voip/sms/s;->a(ZZ)V

    .line 270
    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 272
    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 273
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 277
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "settings_viber_in_syncing"

    invoke-interface {v2, v3, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 278
    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v2

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangeSettings(IZZZ)Z

    .line 281
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/settings/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/settings/ui/a;)Lcom/viber/voip/messages/i;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/settings/ui/a;->b:Lcom/viber/voip/messages/i;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fe;->b(Landroid/content/Context;)Lcom/viber/voip/util/fe;

    move-result-object v0

    .line 245
    const/16 v1, 0x30c

    sget-object v3, Lcom/viber/provider/messages/b/d;->a:Landroid/net/Uri;

    new-instance v8, Lcom/viber/voip/settings/ui/i;

    invoke-direct {v8, p0}, Lcom/viber/voip/settings/ui/i;-><init>(Lcom/viber/voip/settings/ui/a;)V

    const/4 v9, 0x1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;Z)V

    .line 257
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/settings/ui/a;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/LongSummaryCheckbBoxPreference;

    .line 261
    if-eqz v0, :cond_0

    .line 262
    const v1, 0x7f0c04f8

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/LongSummaryCheckbBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 286
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 287
    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 290
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    :goto_0
    invoke-static {}, Lcom/viber/voip/settings/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    invoke-static {}, Lcom/viber/voip/settings/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    invoke-static {}, Lcom/viber/voip/settings/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    const-string/jumbo v0, "sound_settings_video"

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 70
    invoke-static {}, Lorg/webrtc/videoengine/ViEVideoSupport;->isVideoCallSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    invoke-static {}, Lcom/viber/voip/sms/s;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_0
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/a;->b:Lcom/viber/voip/messages/i;

    .line 87
    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/a;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/settings/ui/a;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bv;->onPause()V

    .line 100
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 106
    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v3

    .line 111
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v4

    .line 112
    invoke-virtual {v3}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v5

    move-object v0, p1

    .line 113
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 114
    if-nez v4, :cond_2

    .line 115
    check-cast p1, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    if-eqz v4, :cond_4

    sget-object v4, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-eq v5, v4, :cond_4

    .line 119
    check-cast p1, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move v1, v2

    .line 121
    goto :goto_1

    :cond_3
    move v1, v2

    .line 119
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {v3}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v4

    .line 127
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v5

    const-string/jumbo v6, "settings_viber_in_syncing"

    invoke-interface {v5, v6, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 128
    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v1, v1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangeSettings(IZZZ)Z

    move-result v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 128
    goto :goto_3

    .line 135
    :cond_6
    invoke-static {}, Lcom/viber/voip/settings/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 137
    invoke-static {}, Lcom/viber/voip/sms/s;->f()V

    .line 138
    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(Z)V

    goto :goto_1

    .line 140
    :cond_7
    invoke-static {}, Lcom/viber/voip/settings/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v3, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v3, v3, Lcom/viber/voip/a/an;->b:Lcom/viber/voip/a/c;

    invoke-virtual {v3}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/viber/voip/util/f;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/viber/voip/util/f;-><init>(Landroid/content/Context;)V

    .line 144
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/viber/voip/util/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 147
    :cond_8
    invoke-static {}, Lcom/viber/voip/settings/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "401"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c04ef

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c04f0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c02b6

    new-instance v3, Lcom/viber/voip/settings/ui/e;

    invoke-direct {v3, p0}, Lcom/viber/voip/settings/ui/e;-><init>(Lcom/viber/voip/settings/ui/a;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0325

    new-instance v3, Lcom/viber/voip/settings/ui/c;

    invoke-direct {v3, p0}, Lcom/viber/voip/settings/ui/c;-><init>(Lcom/viber/voip/settings/ui/a;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/settings/ui/b;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/b;-><init>(Lcom/viber/voip/settings/ui/a;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 192
    :cond_9
    invoke-static {}, Lcom/viber/voip/settings/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/settings/ui/f;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/f;-><init>(Lcom/viber/voip/settings/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bv;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/a;->b()V

    .line 94
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/a;->e()V

    .line 95
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v0, p0, Lcom/viber/voip/settings/ui/a;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 214
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/settings/ui/g;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/settings/ui/g;-><init>(Lcom/viber/voip/settings/ui/a;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    sget-object v2, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/an;->h(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v2, v1}, Lcom/viber/voip/a/an;->h(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->e()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/a;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    const-string/jumbo v2, "sound_settings_video"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "sound_settings_video"

    const-string/jumbo v4, "1"

    invoke-interface {p1, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 229
    :goto_1
    if-eqz v0, :cond_4

    .line 230
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-static {v2}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    .line 234
    :goto_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/settings/ui/h;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/settings/ui/h;-><init>(Lcom/viber/voip/settings/ui/a;Z)V

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 228
    goto :goto_1

    .line 232
    :cond_4
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v2

    and-int/lit8 v2, v2, -0x41

    invoke-static {v2}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    goto :goto_2
.end method

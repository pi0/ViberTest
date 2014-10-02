.class public Lcom/viber/voip/settings/ui/bj;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/viber/voip/settings/m;


# static fields
.field static final b:Landroid/content/Intent;

.field static volatile c:Landroid/app/PendingIntent;


# instance fields
.field private g:Lcom/viber/voip/messages/extras/twitter/l;

.field private h:Lcom/viber/jni/settings/SettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SETTINGS_CHANGE_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/viber/voip/settings/ui/bj;->b:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const v0, 0x7f05000b

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 46
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getSettingsController()Lcom/viber/jni/settings/SettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bj;->h:Lcom/viber/jni/settings/SettingsController;

    .line 47
    return-void
.end method

.method static synthetic a(JLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/viber/voip/settings/ui/bj;->b(JLandroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/viber/voip/settings/l;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 293
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getSettingsController()Lcom/viber/jni/settings/SettingsController;

    move-result-object v3

    .line 294
    const-string/jumbo v0, "last_online_last_changed_time"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v0, v4, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 295
    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v6

    invoke-interface {p1, v0, v6}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 296
    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v6

    if-eq v0, v6, :cond_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    .line 298
    invoke-static {v4, v5, p0}, Lcom/viber/voip/settings/ui/bj;->b(JLandroid/app/Activity;)V

    .line 306
    :cond_0
    :goto_0
    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 307
    invoke-static {}, Lcom/viber/voip/settings/j;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-interface {v3, v1}, Lcom/viber/jni/settings/SettingsController;->handleChangeReadNotificationsSettings(I)Z

    .line 310
    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->K()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 311
    return-void

    .line 300
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 301
    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/viber/jni/settings/SettingsController;->handleChangeLastOnlineSettings(I)Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 307
    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/settings/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bj;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bj;->g:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/viber/voip/settings/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x7f0c04de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/settings/ui/bj;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    return-void

    .line 268
    :cond_0
    const v0, 0x7f0c04dd

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(JLandroid/app/Activity;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    .line 250
    const-wide/32 v0, 0x5265c00

    add-long v1, p0, v0

    .line 252
    :try_start_0
    sget-object v0, Lcom/viber/voip/settings/ui/bj;->c:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    sget-object v3, Lcom/viber/voip/settings/ui/bj;->b:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {p2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/settings/ui/bj;->c:Landroid/app/PendingIntent;

    .line 256
    :cond_0
    const-string/jumbo v0, "alarm"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 257
    const/4 v3, 0x0

    sget-object v4, Lcom/viber/voip/settings/ui/bj;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 259
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "last_online_settings_enable_alarmed"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 260
    const/4 v0, 0x3

    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ChangeSettingsEnable Daemon sleep current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ChangeSettingsEnable Daemon sleep error (!) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/settings/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bj;->e()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/settings/ui/bj;)Lcom/viber/voip/messages/extras/twitter/l;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bj;->g:Lcom/viber/voip/messages/extras/twitter/l;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/settings/ui/bu;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/bu;-><init>(Lcom/viber/voip/settings/ui/bj;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bj;->e()V

    .line 316
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bj;->b()V

    .line 318
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/settings/ui/bv;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bj;->g:Lcom/viber/voip/messages/extras/twitter/l;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bj;->g:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v1, Lcom/viber/voip/settings/ui/bk;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/bk;-><init>(Lcom/viber/voip/settings/ui/bj;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/ab;)V

    .line 67
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    :goto_0
    invoke-static {}, Lcom/viber/voip/settings/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    invoke-static {}, Lcom/viber/voip/settings/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    invoke-static {}, Lcom/viber/voip/settings/j;->ax()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    invoke-static {}, Lcom/viber/voip/settings/j;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 110
    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "last_online_last_changed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v3

    move-object v0, p1

    .line 112
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 116
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0404

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c02b5

    new-instance v7, Lcom/viber/voip/settings/ui/bm;

    invoke-direct {v7, p0, v3, v4}, Lcom/viber/voip/settings/ui/bm;-><init>(Lcom/viber/voip/settings/ui/bj;J)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 127
    check-cast p1, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 127
    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/settings/ui/bj;->h:Lcom/viber/jni/settings/SettingsController;

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v3, v2}, Lcom/viber/jni/settings/SettingsController;->handleChangeLastOnlineSettings(I)Z

    .line 132
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "last_online_last_changed_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    goto :goto_1

    .line 135
    :cond_3
    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 138
    iget-object v3, p0, Lcom/viber/voip/settings/ui/bj;->h:Lcom/viber/jni/settings/SettingsController;

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    invoke-interface {v3, v2}, Lcom/viber/jni/settings/SettingsController;->handleChangeReadNotificationsSettings(I)Z

    goto :goto_1

    .line 140
    :cond_5
    invoke-static {}, Lcom/viber/voip/settings/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/messages/extras/fb/ah;->d:Lcom/viber/voip/messages/extras/fb/ah;

    if-eq v3, v4, :cond_6

    .line 144
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/fb/s;->f()Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c044e

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/viber/voip/settings/ui/bj;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c02b6

    new-instance v4, Lcom/viber/voip/settings/ui/bp;

    invoke-direct {v4, p0}, Lcom/viber/voip/settings/ui/bp;-><init>(Lcom/viber/voip/settings/ui/bj;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c044f

    new-instance v4, Lcom/viber/voip/settings/ui/bn;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/settings/ui/bn;-><init>(Lcom/viber/voip/settings/ui/bj;Lcom/viber/voip/messages/extras/fb/s;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 177
    :cond_6
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/settings/ui/bq;

    invoke-direct {v4, p0}, Lcom/viber/voip/settings/ui/bq;-><init>(Lcom/viber/voip/settings/ui/bj;)V

    invoke-virtual {v0, v3, v4, v2}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    goto/16 :goto_1

    .line 186
    :cond_7
    invoke-static {}, Lcom/viber/voip/settings/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bj;->g:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/l;->c()Z

    move-result v0

    .line 188
    iget-object v2, p0, Lcom/viber/voip/settings/ui/bj;->g:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/settings/ui/br;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/settings/ui/br;-><init>(Lcom/viber/voip/settings/ui/bj;Z)V

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V

    goto/16 :goto_1

    .line 203
    :cond_8
    invoke-static {}, Lcom/viber/voip/settings/j;->ax()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 204
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    :cond_9
    :goto_2
    move v1, v2

    .line 214
    goto/16 :goto_1

    .line 205
    :cond_a
    invoke-static {}, Lcom/viber/voip/settings/j;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bj;->f:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->b(Lcom/viber/voip/settings/m;)V

    .line 211
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/viber/voip/registration/ActivationController;->deActivate(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bv;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bj;->b()V

    .line 91
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bj;->e()V

    .line 97
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 219
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/settings/ui/bs;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/settings/ui/bs;-><init>(Lcom/viber/voip/settings/ui/bj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v3}, Lcom/viber/voip/a/an;->j(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->j(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->K()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bj;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v3}, Lcom/viber/voip/a/an;->o(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->o(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ab()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bj;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bj;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 238
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/settings/ui/bt;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/bt;-><init>(Lcom/viber/voip/settings/ui/bj;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

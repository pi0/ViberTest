.class public Lcom/viber/voip/settings/ui/j;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/viber/voip/settings/m;


# instance fields
.field private b:Landroid/preference/ListPreference;

.field private c:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f050006

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 67
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 312
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    return-object v0
.end method

.method private a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 301
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 302
    const v1, 0x7f030104

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 303
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    return-object v0
.end method

.method private a(Landroid/preference/PreferenceCategory;)V
    .locals 4
    .parameter

    .prologue
    .line 540
    const-string/jumbo v0, "Use WebRTC EC"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 541
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "webrtc_ec_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 542
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 543
    new-instance v1, Lcom/viber/voip/settings/ui/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/s;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 554
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Your number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 327
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    invoke-direct {p0, p2}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 785
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-interface {v1, p3, p4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 786
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 787
    new-instance v1, Lcom/viber/voip/settings/ui/aj;

    invoke-direct {v1, p0, p3}, Lcom/viber/voip/settings/ui/aj;-><init>(Lcom/viber/voip/settings/ui/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 795
    return-void
.end method

.method private a(Lcom/viber/voip/settings/l;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 272
    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/j;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 273
    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current server type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-interface {p1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    const-string/jumbo v0, "use_as_secondary"

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/j;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 279
    if-eqz v0, :cond_1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current device type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "use_as_secondary"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "secondary"

    :goto_0
    invoke-interface {p1, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->b:Landroid/preference/ListPreference;

    .line 286
    if-eqz v0, :cond_2

    .line 287
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSummaries, showing VO installation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->c:Landroid/preference/ListPreference;

    .line 292
    if-eqz v0, :cond_3

    .line 293
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSummaries, vibes state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_3
    return-void

    .line 280
    :cond_4
    const-string/jumbo v1, "primary"

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/settings/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/j;->b()V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;
    .locals 2
    .parameter

    .prologue
    .line 318
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 322
    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 485
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 486
    const-string/jumbo v1, "viber"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 487
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/viber/voip/contacts/c/f/a;->a(IZ)V

    .line 491
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Z)V

    .line 493
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->setActivated(Z)V

    .line 494
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->h()V

    .line 496
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    .line 497
    return-void
.end method

.method private b(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    new-array v0, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "Prod"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Int"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Dev"

    aput-object v1, v0, v5

    .line 331
    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "prod"

    aput-object v2, v1, v3

    const-string/jumbo v2, "int"

    aput-object v2, v1, v4

    const-string/jumbo v2, "dev"

    aput-object v2, v1, v5

    .line 332
    new-instance v2, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 336
    const-string/jumbo v0, "Server"

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 337
    const-string/jumbo v0, "Server config"

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    const v0, 0x7f030013

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 339
    const-string/jumbo v0, "int"

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    new-instance v0, Lcom/viber/voip/settings/ui/as;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/settings/ui/as;-><init>(Lcom/viber/voip/settings/ui/j;Landroid/preference/ListPreference;)V

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    return-void
.end method

.method private c(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    new-array v0, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "Primary"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Secondary"

    aput-object v1, v0, v4

    .line 357
    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "primary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "secondary"

    aput-object v2, v1, v4

    .line 358
    new-instance v2, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 361
    const-string/jumbo v3, "use_as_secondary"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 364
    const-string/jumbo v0, "Type"

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 365
    const-string/jumbo v0, "Device type"

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    const v0, 0x7f030013

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 367
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "secondary"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 371
    new-instance v0, Lcom/viber/voip/settings/ui/at;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/settings/ui/at;-><init>(Lcom/viber/voip/settings/ui/j;Landroid/preference/ListPreference;)V

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    return-void

    .line 367
    :cond_0
    const-string/jumbo v0, "primary"

    goto :goto_0
.end method

.method private d(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 385
    invoke-static {}, Lcom/viber/voip/sms/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v0, "Remove native SMS notification"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 387
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 388
    const-string/jumbo v1, "viber_hide_native_sms"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v1, "Hide system notification when SMS received"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_0
    return-void
.end method

.method private e(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f030013

    .line 395
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 396
    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    .line 397
    const-string/jumbo v1, "pref_ptt_autoclean_dirsize_key"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 398
    const-wide/32 v1, 0x9600000

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 399
    const-string/jumbo v1, "Ptt memory limit"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    const-string/jumbo v1, "Set max PTT-dirrectory size. Default: 150MB"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v1, Lcom/viber/voip/settings/ui/au;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/au;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 415
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 416
    const-string/jumbo v1, "Clear Ptt Autoclean"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    const-string/jumbo v1, "Clear Ptt autoclean flag value to display autoclean dialog"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 419
    new-instance v1, Lcom/viber/voip/settings/ui/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/l;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 429
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 432
    const-string/jumbo v1, "Clear RakutenID"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    const-string/jumbo v1, "This will clear rakuten id and reset integration state (can\'t be undone)"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 435
    new-instance v1, Lcom/viber/voip/settings/ui/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/m;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 444
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    return-void
.end method

.method private f(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 449
    const-string/jumbo v0, "Proximity turn off screen"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 450
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 451
    const-string/jumbo v1, "proximity_turn_off_screen"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 453
    new-instance v1, Lcom/viber/voip/settings/ui/n;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/n;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 464
    const-string/jumbo v0, " Disable proximity white list"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 465
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 466
    const-string/jumbo v1, "proximity_disable_white_list"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 468
    new-instance v1, Lcom/viber/voip/settings/ui/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/o;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 480
    return-void
.end method

.method private g(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 500
    const-string/jumbo v0, "Show profile screen"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 501
    new-instance v1, Lcom/viber/voip/settings/ui/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/p;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 508
    return-void
.end method

.method private h(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 511
    invoke-static {}, Lcom/viber/voip/sms/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string/jumbo v0, "Show Grow SMS"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/viber/voip/settings/ui/q;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/q;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 525
    :cond_0
    return-void
.end method

.method private i(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 528
    const-string/jumbo v0, "Show Country List"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 529
    new-instance v1, Lcom/viber/voip/settings/ui/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/r;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 537
    return-void
.end method

.method private j(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 558
    const-string/jumbo v0, "Backup Messages"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 559
    const-string/jumbo v1, "Copy into viber/.db/viber_messages.sqlite"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    new-instance v1, Lcom/viber/voip/settings/ui/t;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/t;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 570
    return-void
.end method

.method private k(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 573
    const-string/jumbo v0, "Backup Contacts"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 574
    const-string/jumbo v1, "Copy into viber/.db/viber_data.sqlite"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    new-instance v1, Lcom/viber/voip/settings/ui/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/u;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 585
    return-void
.end method

.method private l(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 588
    const-string/jumbo v0, "Restore Messages"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 589
    const-string/jumbo v1, "Restore from viber/.db/viber_messages.sqlite"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    new-instance v1, Lcom/viber/voip/settings/ui/w;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/w;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 600
    return-void
.end method

.method private m(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 603
    const-string/jumbo v0, "Restore Contacts"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 604
    const-string/jumbo v1, "Restore from viber/.db/viber_data.sqlite"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    new-instance v1, Lcom/viber/voip/settings/ui/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/x;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 616
    return-void
.end method

.method private n(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 619
    const-string/jumbo v0, "ViberOut"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 620
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 621
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 622
    new-instance v1, Lcom/viber/voip/settings/ui/y;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/y;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 631
    return-void
.end method

.method private o(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter

    .prologue
    .line 635
    const-string/jumbo v0, "ViberIn"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 636
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "viber_in_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 637
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 638
    new-instance v1, Lcom/viber/voip/settings/ui/z;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/z;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 647
    return-void
.end method

.method private p(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 651
    const-string/jumbo v0, "show ACTION_PROMO_SCREEN_FREE_CALL"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 652
    new-instance v1, Lcom/viber/voip/settings/ui/aa;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/aa;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 660
    const-string/jumbo v0, "show ACTION_PROMO_SCREEN_NO_FREE_CALL"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 661
    new-instance v1, Lcom/viber/voip/settings/ui/ab;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ab;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 669
    const-string/jumbo v0, "show ACTION_PROMO_SCREEN_CONTACTS"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 670
    new-instance v1, Lcom/viber/voip/settings/ui/ac;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ac;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 678
    const-string/jumbo v0, "show ACTION_PROMO_SCREEN_CONTACT_INFO"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 679
    new-instance v1, Lcom/viber/voip/settings/ui/ad;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ad;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 687
    const-string/jumbo v0, "show ACTION_PROMO_SCREEN_END_OF_TRIAL"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/viber/voip/settings/ui/ae;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ae;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 696
    const-string/jumbo v0, "show dialog 381"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 697
    new-instance v1, Lcom/viber/voip/settings/ui/af;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/af;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 706
    return-void
.end method

.method private q(Landroid/preference/PreferenceGroup;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 709
    new-instance v3, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 710
    iput-object v3, p0, Lcom/viber/voip/settings/ui/j;->b:Landroid/preference/ListPreference;

    .line 711
    const-string/jumbo v4, "VO exposure type"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 712
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "Automatic"

    aput-object v5, v4, v2

    const-string/jumbo v5, "Fresh Install"

    aput-object v5, v4, v0

    const-string/jumbo v5, "Upgrade"

    aput-object v5, v4, v1

    .line 713
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 715
    const v5, 0x7f030013

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 717
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v5

    const-string/jumbo v6, "PREF_VO_MANUAL_EXPOSURE_ENABLED"

    invoke-interface {v5, v6, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v5

    .line 718
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v6

    const-string/jumbo v7, "vo_exposure"

    invoke-interface {v6, v7, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v6

    .line 721
    if-eqz v5, :cond_1

    .line 722
    if-ne v6, v0, :cond_0

    .line 724
    :goto_0
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read VO installation type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 726
    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/viber/voip/settings/ui/ah;

    invoke-direct {v0, p0, v4}, Lcom/viber/voip/settings/ui/ah;-><init>(Lcom/viber/voip/settings/ui/j;[Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 761
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 762
    return-void

    :cond_0
    move v0, v1

    .line 722
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private r(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 765
    const-string/jumbo v0, "Grow ViberOut DEBUG"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 766
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/e;->f()Lcom/viber/voip/viberout/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 767
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 768
    new-instance v1, Lcom/viber/voip/settings/ui/ai;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ai;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 776
    return-void
.end method

.method private s(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 779
    const-string/jumbo v0, "Consume prods on del pkgs"

    const-string/jumbo v1, "PREF_MARKET_CONSUME_ON_DELETE_STICKER_PACKAGES"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 780
    const-string/jumbo v0, "Enable URL change"

    const-string/jumbo v1, "PREF_MARKET_ENABLE_URL_CHANGE"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 781
    return-void
.end method

.method private t(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 800
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "UA-18303830-25"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UA-18303830-13"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "UA-18303830-15"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UA-43943434-1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "UA-18303830-12"

    aput-object v2, v0, v1

    .line 805
    new-instance v1, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 806
    invoke-static {}, Lcom/viber/voip/settings/j;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 808
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 809
    const-string/jumbo v0, "Analytics"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 810
    const-string/jumbo v0, "Analytics config"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 812
    const-string/jumbo v0, "UA-18303830-12"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 813
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 814
    return-void
.end method

.method private u(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 818
    const-string/jumbo v0, "Zoobe"

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 819
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/k/a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 820
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 821
    new-instance v1, Lcom/viber/voip/settings/ui/ak;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ak;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 830
    return-void
.end method

.method private v(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter

    .prologue
    .line 834
    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 835
    iput-object v0, p0, Lcom/viber/voip/settings/ui/j;->c:Landroid/preference/ListPreference;

    .line 836
    const-string/jumbo v1, "Vibes state"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 837
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Disabled"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "No create"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "Full"

    aput-object v3, v1, v2

    .line 838
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 840
    const v2, 0x7f030013

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 842
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/j/a;->c()I

    move-result v2

    .line 843
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 844
    new-instance v2, Lcom/viber/voip/settings/ui/al;

    invoke-direct {v2, p0, v1, v0}, Lcom/viber/voip/settings/ui/al;-><init>(Lcom/viber/voip/settings/ui/j;[Ljava/lang/String;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 865
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 880
    return-void
.end method

.method private w(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 887
    const-string/jumbo v0, "Show gallery_empty_album_message"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 888
    new-instance v1, Lcom/viber/voip/settings/ui/am;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/am;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 896
    const-string/jumbo v0, "Show dialog_339_oops_create_group_body"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 897
    new-instance v1, Lcom/viber/voip/settings/ui/an;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/an;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 905
    const-string/jumbo v0, "Show get_viber_desktop"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 906
    new-instance v1, Lcom/viber/voip/settings/ui/ao;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/ao;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 916
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v3, 0x7f030013

    .line 71
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Settings (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->b(Landroid/preference/PreferenceGroup;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->c(Landroid/preference/PreferenceGroup;)V

    .line 77
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->d(Landroid/preference/PreferenceGroup;)V

    .line 78
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->e(Landroid/preference/PreferenceGroup;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->f(Landroid/preference/PreferenceGroup;)V

    .line 81
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    const-string/jumbo v2, "Clear Gallery Coach"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    const-string/jumbo v2, "Clear Gallery Coach shown flag"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 85
    new-instance v2, Lcom/viber/voip/settings/ui/k;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/k;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 95
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 96
    const-string/jumbo v2, "Clear Last Online"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    const-string/jumbo v2, "Clear Last Online timer"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 99
    new-instance v2, Lcom/viber/voip/settings/ui/v;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/v;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 110
    const-string/jumbo v2, "New Stickers package"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    const-string/jumbo v2, "Increment new stickers pakages count"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 113
    new-instance v2, Lcom/viber/voip/settings/ui/ag;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/ag;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 124
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Start performance (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "Async loading of native library"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "async_native_lib_load"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 128
    const-string/jumbo v2, "Will be applied after application restart"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    const-string/jumbo v1, "Database performance"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    const-string/jumbo v0, "Delay for every query 2sec"

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Open Screen (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->g(Landroid/preference/PreferenceGroup;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->h(Landroid/preference/PreferenceGroup;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->i(Landroid/preference/PreferenceGroup;)V

    .line 149
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Sound (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "Sound Settings"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/viber/voip/SoundSettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceCategory;)V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Multi-device (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "Show deleted conversations"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 156
    invoke-static {}, Lcom/viber/voip/settings/j;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v2, "Will be applied after reopen Home screen"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    const-string/jumbo v1, "Show deleted messages"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 160
    invoke-static {}, Lcom/viber/voip/settings/j;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v2, "Will be applied after reopen Conversation screen"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Database (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->j(Landroid/preference/PreferenceGroup;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->l(Landroid/preference/PreferenceGroup;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->k(Landroid/preference/PreferenceGroup;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->m(Landroid/preference/PreferenceGroup;)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "ViberOut & ViberIn (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->n(Landroid/preference/PreferenceGroup;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->o(Landroid/preference/PreferenceGroup;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->p(Landroid/preference/PreferenceGroup;)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "ViberOut Trial (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->q(Landroid/preference/PreferenceGroup;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->r(Landroid/preference/PreferenceGroup;)V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Market (Debug options)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->s(Landroid/preference/PreferenceGroup;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Analytics (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->t(Landroid/preference/PreferenceGroup;)V

    .line 185
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Zoobe (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 186
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->u(Landroid/preference/PreferenceGroup;)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Vibes (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->v(Landroid/preference/PreferenceGroup;)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Sticker layout (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "Center sticker menu icon"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 193
    invoke-static {}, Lcom/viber/voip/settings/j;->ai()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/viber/voip/settings/j;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "Will center sticker menu item, when it is selected"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Conversation (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "Show Sticker Menu icon animation"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/viber/voip/settings/ui/ap;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/ap;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    const-string/jumbo v1, "Generate Rakuten System Message"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/viber/voip/settings/ui/aq;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/aq;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Developer tool (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "Enable Strict Mode"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 225
    invoke-static {}, Lcom/viber/voip/settings/j;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 226
    new-instance v2, Lcom/viber/voip/settings/ui/ar;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/ar;-><init>(Lcom/viber/voip/settings/ui/j;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Goolge Maps Version (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "Use v1 (old)"

    invoke-direct {p0, v1}, Lcom/viber/voip/settings/ui/j;->b(Ljava/lang/CharSequence;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 237
    invoke-static {}, Lcom/viber/voip/settings/j;->ak()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/viber/voip/settings/j;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v2, "Will use google maps v1 (deprecated from google)"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->e:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "Localization Tests (Debug option)"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/settings/ui/j;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 243
    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->w(Landroid/preference/PreferenceGroup;)V

    .line 249
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/viber/voip/settings/ui/bv;->onResume()V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->f:Lcom/viber/voip/settings/l;

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->a(Lcom/viber/voip/settings/l;)V

    .line 255
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/viber/voip/settings/ui/j;->f:Lcom/viber/voip/settings/l;

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/j;->a(Lcom/viber/voip/settings/l;)V

    .line 269
    return-void
.end method

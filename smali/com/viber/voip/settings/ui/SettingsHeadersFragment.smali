.class public Lcom/viber/voip/settings/ui/SettingsHeadersFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/user/YouFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/viber/voip/settings/ui/bz;

.field private c:Lcom/viber/voip/settings/ui/by;

.field private d:Lcom/viber/voip/settings/ui/bv;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->c()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d()V

    return-void
.end method

.method private c()V
    .locals 16

    .prologue
    .line 208
    const-string/jumbo v0, "Settings.restoreDefaultPref"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->a()V

    .line 213
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/l;->a()V

    .line 215
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/viber/voip/settings/j;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->H()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 217
    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 221
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getAlphaCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumberCanonized()Ljava/lang/String;

    move-result-object v7

    .line 228
    const-string/jumbo v8, "ViberAccountVersion"

    const/4 v9, 0x1

    invoke-interface {v0, v8, v9}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v8

    .line 229
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getAddressBookVersion()I

    move-result v9

    int-to-short v9, v9

    .line 230
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/viber/voip/registration/ActivationController;->getDeviceKey()Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v11

    .line 232
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v12

    .line 233
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v13

    .line 234
    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "int"

    invoke-interface {v0, v14, v15}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v15

    invoke-static {v15, v1}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/voip/registration/ActivationController;->storeRegValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v3, v7}, Lcom/viber/voip/registration/ActivationController;->storeRegNumberCanonized(Ljava/lang/String;)V

    .line 240
    const-string/jumbo v1, "pref_clear_prefs"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 241
    const-string/jumbo v1, "pref_started_before"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 242
    const-string/jumbo v1, "ViberAccountVersion"

    invoke-interface {v0, v1, v8}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 243
    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 244
    invoke-virtual {v2, v9}, Lcom/viber/voip/ViberApplication;->setAddressBookVersion(I)V

    .line 245
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/viber/voip/registration/ActivationController;->setDeviceKey(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 248
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgainSms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 250
    invoke-static {v11}, Lcom/viber/voip/sms/s;->a(Z)V

    .line 251
    invoke-static {v12, v13}, Lcom/viber/voip/user/UserData;->setUserData(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/viber/voip/settings/ui/ax;->a(Lcom/viber/voip/settings/l;)V

    .line 258
    invoke-static {v0}, Lcom/viber/voip/settings/ui/bb;->a(Lcom/viber/voip/settings/l;)V

    .line 259
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/settings/ui/bj;->a(Landroid/app/Activity;Lcom/viber/voip/settings/l;)V

    .line 260
    invoke-static {v0}, Lcom/viber/voip/settings/ui/bf;->a(Lcom/viber/voip/settings/l;)V

    .line 261
    invoke-static {v0}, Lcom/viber/voip/settings/ui/a;->a(Lcom/viber/voip/settings/l;)V

    .line 262
    invoke-static {}, Lcom/viber/voip/settings/ui/av;->b()V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/bv;->a()V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c029e

    if-ne v0, v1, :cond_1

    .line 189
    new-instance v0, Lcom/viber/voip/settings/ui/bj;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/bj;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    return-object v0

    .line 190
    :cond_1
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c029f

    if-ne v0, v1, :cond_2

    .line 191
    new-instance v0, Lcom/viber/voip/settings/ui/bf;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/bf;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    goto :goto_0

    .line 192
    :cond_2
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c02a0

    if-ne v0, v1, :cond_3

    .line 193
    new-instance v0, Lcom/viber/voip/settings/ui/a;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    goto :goto_0

    .line 194
    :cond_3
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c02a1

    if-ne v0, v1, :cond_4

    .line 195
    new-instance v0, Lcom/viber/voip/settings/ui/bb;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/bb;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    goto :goto_0

    .line 196
    :cond_4
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c02a2

    if-ne v0, v1, :cond_5

    .line 197
    new-instance v0, Lcom/viber/voip/settings/ui/av;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/av;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    goto :goto_0

    .line 198
    :cond_5
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c02a3

    if-ne v0, v1, :cond_6

    .line 199
    new-instance v0, Lcom/viber/voip/settings/ui/ax;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/ax;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    goto :goto_0

    .line 200
    :cond_6
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c02a4

    if-ne v0, v1, :cond_0

    .line 201
    new-instance v0, Lcom/viber/voip/settings/ui/j;

    invoke-direct {v0}, Lcom/viber/voip/settings/ui/j;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->d:Lcom/viber/voip/settings/ui/bv;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput p1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    .line 270
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    return-void

    .line 276
    :cond_1
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    iget v2, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    if-ne v0, v2, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 277
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->b()V

    .line 137
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 142
    instance-of v0, p1, Lcom/viber/voip/settings/ui/by;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    check-cast p1, Lcom/viber/voip/settings/ui/by;

    iput-object p1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->c:Lcom/viber/voip/settings/ui/by;

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->setRetainInstance(Z)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 125
    new-instance v0, Lcom/viber/voip/settings/ui/bz;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a:Ljava/util/List;

    const v4, 0x7f030120

    invoke-direct {v0, v1, v3, v4}, Lcom/viber/voip/settings/ui/bz;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->b:Lcom/viber/voip/settings/ui/bz;

    .line 126
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->b:Lcom/viber/voip/settings/ui/bz;

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 128
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 130
    return-object v2

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    .line 151
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroyView()V

    .line 152
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 157
    long-to-int v0, p4

    iput v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    .line 159
    iget v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    const v1, 0x7f0c028e

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b6

    new-instance v2, Lcom/viber/voip/settings/ui/bx;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/settings/ui/bx;-><init>(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ae

    new-instance v2, Lcom/viber/voip/settings/ui/bw;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/settings/ui/bw;-><init>(Lcom/viber/voip/settings/ui/SettingsHeadersFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->c:Lcom/viber/voip/settings/ui/by;

    iget v1, p0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->e:I

    invoke-interface {v0, p3, v1}, Lcom/viber/voip/settings/ui/by;->b(II)V

    goto :goto_0
.end method

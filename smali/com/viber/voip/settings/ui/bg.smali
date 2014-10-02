.class public Lcom/viber/voip/settings/ui/bg;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "SourceFile"


# instance fields
.field protected a:Z

.field private b:Landroid/preference/PreferenceManager;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/ListView;

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/settings/ui/bg;->a:Z

    .line 41
    new-instance v0, Lcom/viber/voip/settings/ui/bh;

    invoke-direct {v0, p0}, Lcom/viber/voip/settings/ui/bh;-><init>(Lcom/viber/voip/settings/ui/bg;)V

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bg;->c:Landroid/os/Handler;

    .line 56
    iput p1, p0, Lcom/viber/voip/settings/ui/bg;->e:I

    .line 57
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/settings/ui/bg;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bg;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->d()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 157
    :cond_0
    return-void
.end method

.method private e()Landroid/preference/PreferenceManager;
    .locals 4

    .prologue
    .line 166
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 168
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 237
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string/jumbo v1, "inflateFromResource"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/preference/PreferenceScreen;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 239
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->d()Landroid/preference/PreferenceScreen;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 240
    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bg;->a(Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    .line 192
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string/jumbo v1, "setPreferences"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/preference/PreferenceScreen;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 194
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 195
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bg;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public d()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 211
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string/jumbo v1, "getPreferenceScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 212
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 129
    const-string/jumbo v0, "PreferenceListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string/jumbo v1, "dispatchActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 135
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string/jumbo v0, "xml"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/settings/ui/bg;->e:I

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bg;->e()Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 87
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/settings/k;->a:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lcom/viber/voip/settings/n;->a(Lcom/viber/voip/settings/ui/bg;Lcom/viber/voip/settings/l;Ljava/util/Set;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/settings/ui/bg;->a:Z

    .line 88
    const/4 v0, 0x3

    const-string/jumbo v1, "PreferenceListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate preferencesStorageLinked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/viber/voip/settings/ui/bg;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/viber/voip/settings/ui/bg;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/viber/voip/settings/ui/bg;->e:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bg;->a(I)V

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bg;->a()V

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/ui/bi;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->d()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/settings/ui/bg;->e:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/ui/bi;->a(Landroid/preference/PreferenceScreen;I)V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/voip/settings/ui/bg;->a()V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    .line 112
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string/jumbo v1, "dispatchActivityDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroyView()V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    const-string/jumbo v0, "xml"

    iget v1, p0, Lcom/viber/voip/settings/ui/bg;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onStop()V

    .line 99
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string/jumbo v1, "dispatchActivityStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bg;->b:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

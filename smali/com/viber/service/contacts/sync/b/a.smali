.class public Lcom/viber/service/contacts/sync/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/ViberApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/service/contacts/sync/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/sync/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    check-cast p1, Lcom/viber/voip/ViberApplication;

    iput-object p1, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    .line 31
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/accounts/Account;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string/jumbo v2, "authAccount"

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v2, "accountType"

    const-string/jumbo v3, "com.viber.voip.account"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "ViberAccountVersion"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    .line 68
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/b/a;->d()V

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Landroid/accounts/Account;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getSyncAccountName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.viber.voip.account"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v0, v3, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    const-string/jumbo v3, "com.android.contacts"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 90
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    const-string/jumbo v4, "ViberAccountVersion"

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 92
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.ACTION_SYNC_ACCOUNT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v4, v3}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    :cond_0
    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/service/contacts/sync/b/a;->a(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/registration/dj;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 44
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/b/a;->d()V

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/viber/service/contacts/sync/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_3
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/b/a;->f()Landroid/accounts/Account;

    move-result-object v1

    .line 53
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 56
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 57
    invoke-direct {p0, p1, v1}, Lcom/viber/service/contacts/sync/b/a;->a(Landroid/content/Intent;Landroid/accounts/Account;)V

    goto :goto_0

    .line 53
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/b/a;->d()V

    goto :goto_0
.end method

.method public b()Landroid/accounts/Account;
    .locals 7

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSyncAccountName()Ljava/lang/String;

    move-result-object v3

    .line 117
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "com.viber.voip.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 119
    const/4 v1, 0x0

    .line 121
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 122
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    :goto_1
    return-object v0

    .line 121
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    const v2, 0x7f0c07ad

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/a;->b:Lcom/viber/voip/ViberApplication;

    const v2, 0x7f0c07ad

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 145
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 146
    invoke-virtual {v1, v4, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

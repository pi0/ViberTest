.class public Lcom/viber/service/contacts/authentication/a;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/service/contacts/sync/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/viber/service/contacts/authentication/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/authentication/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/viber/service/contacts/sync/b/a;

    invoke-direct {v0, p1}, Lcom/viber/service/contacts/sync/b/a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/viber/service/contacts/authentication/a;->b:Lcom/viber/service/contacts/sync/b/a;

    .line 29
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-static {}, Lcom/viber/voip/registration/dj;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.DEFAULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/viber/service/contacts/authentication/a;->b:Lcom/viber/service/contacts/sync/b/a;

    invoke-virtual {v1}, Lcom/viber/service/contacts/sync/b/a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.SYNC_ACCOUNT_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 45
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.NO_MULTI_SYNC_ACCOUNTS_ALLOWED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    const-string/jumbo v0, "booleanResult"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "booleanResult"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 67
    :cond_0
    return-object v1

    .line 63
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->X()Z

    move-result v0

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

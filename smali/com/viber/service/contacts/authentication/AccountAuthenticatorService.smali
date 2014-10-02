.class public Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/service/contacts/authentication/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Lcom/viber/service/contacts/authentication/a;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;->a:Lcom/viber/service/contacts/authentication/a;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/viber/service/contacts/authentication/a;

    invoke-virtual {p0}, Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/service/contacts/authentication/a;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;->a:Lcom/viber/service/contacts/authentication/a;

    .line 15
    :cond_0
    sget-object v0, Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;->a:Lcom/viber/service/contacts/authentication/a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/viber/service/contacts/authentication/AccountAuthenticatorService;->a()Lcom/viber/service/contacts/authentication/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/authentication/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

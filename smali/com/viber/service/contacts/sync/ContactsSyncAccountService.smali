.class public Lcom/viber/service/contacts/sync/ContactsSyncAccountService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/service/contacts/sync/ContactsSyncAccountService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/sync/ContactsSyncAccountService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/service/contacts/sync/ContactsSyncAccountService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/ContactsSyncAccountService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    .line 36
    const-string/jumbo v1, "com.viber.voip.action.ACTION_CHECK_ACCOUNT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Lcom/viber/service/contacts/sync/b/a;

    invoke-direct {v1, v0}, Lcom/viber/service/contacts/sync/b/a;-><init>(Landroid/app/Application;)V

    invoke-virtual {v1}, Lcom/viber/service/contacts/sync/b/a;->a()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string/jumbo v1, "com.viber.voip.action.ACTION_REMOVE_ACCOUNT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v1, Lcom/viber/service/contacts/sync/b/a;

    invoke-direct {v1, v0}, Lcom/viber/service/contacts/sync/b/a;-><init>(Landroid/app/Application;)V

    invoke-virtual {v1}, Lcom/viber/service/contacts/sync/b/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 42
    :cond_2
    :try_start_1
    const-string/jumbo v1, "com.viber.voip.action.ACTION_SYNC_ACCOUNT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/viber/service/contacts/sync/a/a/b/b;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSyncAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/viber/service/contacts/sync/a/a/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 47
    :goto_1
    new-instance v1, Lcom/viber/service/contacts/sync/b/b;

    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/ContactsSyncAccountService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/viber/service/contacts/sync/b/b;-><init>(Landroid/app/Application;Lcom/viber/service/contacts/sync/a/a;)V

    invoke-virtual {v1}, Lcom/viber/service/contacts/sync/b/b;->a()V

    goto :goto_0

    .line 44
    :cond_3
    new-instance v1, Lcom/viber/service/contacts/sync/a/a/a/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSyncAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/viber/service/contacts/sync/a/a/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1
.end method

.class public Lcom/viber/service/contacts/sync/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/service/contacts/sync/b/a;

.field private c:Lcom/viber/service/contacts/sync/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/service/contacts/sync/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/sync/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/viber/service/contacts/sync/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/viber/service/contacts/sync/b/a;

    invoke-direct {v0, p1}, Lcom/viber/service/contacts/sync/b/a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/b/b;->b:Lcom/viber/service/contacts/sync/b/a;

    .line 22
    iput-object p2, p0, Lcom/viber/service/contacts/sync/b/b;->c:Lcom/viber/service/contacts/sync/a/a;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/b;->b:Lcom/viber/service/contacts/sync/b/a;

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/b/a;->b()Landroid/accounts/Account;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_CONTCATS_SYNC_ACCOUT_SYNCING"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 29
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_CONTCATS_SYNC_ACCOUT_REQUEST"

    invoke-interface {v1, v2, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 30
    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_CONTCATS_SYNC_ACCOUT_SYNCING"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 48
    return-void

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/b;->c:Lcom/viber/service/contacts/sync/a/a;

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/a;->a()Lcom/viber/service/contacts/sync/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/service/contacts/sync/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/viber/service/contacts/sync/b/b;->b:Lcom/viber/service/contacts/sync/b/a;

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/b/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

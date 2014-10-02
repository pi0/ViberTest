.class Lcom/viber/service/contacts/sync/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/contacts/sync/a;


# direct methods
.method constructor <init>(Lcom/viber/service/contacts/sync/a;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_CONTCATS_SYNC_ACCOUT_REQUEST"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_CONTCATS_SYNC_ACCOUT_SYNCING"

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/viber/service/contacts/sync/a;->a(Lcom/viber/service/contacts/sync/a;Z)Z

    .line 83
    iget-object v2, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    invoke-static {v2}, Lcom/viber/service/contacts/sync/a;->b(Lcom/viber/service/contacts/sync/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    invoke-virtual {v2}, Lcom/viber/service/contacts/sync/a;->d()V

    .line 85
    :cond_0
    if-eqz v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    invoke-static {v0}, Lcom/viber/service/contacts/sync/a;->c(Lcom/viber/service/contacts/sync/a;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    invoke-static {v1}, Lcom/viber/service/contacts/sync/a;->d(Lcom/viber/service/contacts/sync/a;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/viber/service/contacts/sync/e;->a:Lcom/viber/service/contacts/sync/a;

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->c()V

    goto :goto_0
.end method

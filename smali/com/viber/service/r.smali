.class Lcom/viber/service/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/n;


# direct methods
.method constructor <init>(Lcom/viber/service/n;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/viber/service/r;->a:Lcom/viber/service/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    .line 225
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/viber/service/r;->a:Lcom/viber/service/n;

    iget-object v0, v0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-virtual {v0}, Lcom/viber/service/VoipConnectorService;->b()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "last_online_last_changed_time"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

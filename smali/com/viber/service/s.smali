.class Lcom/viber/service/s;
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
    .line 235
    iput-object p1, p0, Lcom/viber/service/s;->a:Lcom/viber/service/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "last_online_show_change_settings_dialog"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const-string/jumbo v1, "last_online_show_change_settings_dialog"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 245
    iget-object v0, p0, Lcom/viber/service/s;->a:Lcom/viber/service/n;

    iget-object v0, v0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-virtual {v0}, Lcom/viber/service/VoipConnectorService;->b()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string/jumbo v1, "last_online_settings_enable_alarmed"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "last_online_last_changed_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/viber/service/s;->a:Lcom/viber/service/n;

    iget-object v0, v0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-virtual {v0}, Lcom/viber/service/VoipConnectorService;->b()V

    goto :goto_0
.end method

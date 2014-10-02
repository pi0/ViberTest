.class public Lcom/viber/voip/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/viber/voip/g/a;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "proximity_turn_off_screen"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getDevicesManager()Lcom/viber/voip/registration/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/bh;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lcom/viber/voip/g/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/g/h;-><init>(Landroid/content/Context;)V

    .line 22
    :goto_1
    return-object v0

    .line 17
    :cond_1
    if-eqz v1, :cond_0

    goto :goto_0

    .line 22
    :cond_2
    new-instance v0, Lcom/viber/voip/g/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/g/c;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

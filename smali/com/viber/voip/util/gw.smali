.class public Lcom/viber/voip/util/gw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 92
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/a/k;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Landroid/content/Intent;ZLcom/viber/voip/a/k;)V

    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/viber/voip/a/k;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    if-eqz p2, :cond_0

    const-string/jumbo v1, "viber_out"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-static {p0, v0, v4, p3}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Landroid/content/Intent;ZLcom/viber/voip/a/k;)V

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIDEO_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "is_initiator"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-static {p0, v0}, Lcom/viber/voip/util/gw;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/viber/voip/phone/call/k;->l()Lcom/viber/voip/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/au;->s()Lcom/viber/voip/a/x;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 88
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/viber/voip/phone/call/k;->l()Lcom/viber/voip/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/au;->t()Lcom/viber/voip/a/x;

    move-result-object v0

    goto :goto_0
.end method

.class public Lcom/viber/voip/util/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 361
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/viber/voip/util/hc;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/hc;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/user/YouActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/user/YouDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 373
    invoke-static {p0}, Lcom/viber/voip/util/hc;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    invoke-static {p0}, Lcom/viber/voip/util/hc;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

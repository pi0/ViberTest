.class public Lcom/viber/voip/util/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ABOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Landroid/content/Intent;ZLcom/viber/voip/a/k;)V

    .line 141
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/error/report/ErrorReportDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Landroid/content/Intent;ZLcom/viber/voip/a/k;)V

    .line 146
    return-void
.end method

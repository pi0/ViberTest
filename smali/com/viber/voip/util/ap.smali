.class public Lcom/viber/voip/util/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/viber/voip/util/as;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "108"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 26
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "preff_dialog_failed_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 27
    const v1, 0x7f0c0331

    const v2, 0x7f0c0332

    new-instance v3, Lcom/viber/voip/util/aq;

    invoke-direct {v3, p1}, Lcom/viber/voip/util/aq;-><init>(Lcom/viber/voip/util/as;)V

    new-instance v4, Lcom/viber/voip/util/ar;

    invoke-direct {v4, p1}, Lcom/viber/voip/util/ar;-><init>(Lcom/viber/voip/util/as;)V

    const v5, 0x7f0c0334

    const v6, 0x7f0c0333

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 53
    return-void
.end method

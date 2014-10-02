.class public Lcom/viber/voip/util/gy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 928
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    invoke-static {v0}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 932
    return-void
.end method

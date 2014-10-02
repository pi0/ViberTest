.class Lcom/viber/voip/backgrounds/ui/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/viber/voip/backgrounds/ui/d;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 360
    aget-object v0, p1, v5

    check-cast v0, Lcom/viber/voip/backgrounds/q;

    .line 361
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/d;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v2}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->h(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/viber/voip/a/q;

    move-result-object v2

    iget v3, v0, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/q;->a(I)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 363
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;)[Landroid/net/Uri;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    aget-object v2, v1, v5

    if-eqz v2, :cond_0

    .line 365
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string/jumbo v3, "landscapeUri"

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v3, "portraitUri"

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "backgroundUri"

    iget-object v0, v0, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/d;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 370
    const-string/jumbo v0, ""

    .line 372
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/d;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->i(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 380
    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/d;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->finish()V

    .line 383
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/d;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->g(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 356
    return-void
.end method

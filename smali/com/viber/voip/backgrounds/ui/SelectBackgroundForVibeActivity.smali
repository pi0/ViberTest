.class public Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;
.super Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 33
    if-ne p2, v3, :cond_0

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uriFromIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->a(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->a:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 43
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string/jumbo v2, "backgroundUri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->setResult(ILandroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->finish()V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string/jumbo v1, "backgroundUri"

    iget-object v2, p0, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->finish()V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 23
    const v0, 0x7f020002

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->b:Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v0, p3}, Lcom/viber/voip/backgrounds/a/a;->a(I)Lcom/viber/voip/backgrounds/q;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string/jumbo v2, "backgroundId"

    iget v0, v0, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    const/4 v0, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->setResult(ILandroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/ui/SelectBackgroundForVibeActivity;->finish()V

    .line 29
    return-void
.end method

.class Lcom/viber/voip/messages/ui/media/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/image/e;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    iput p2, p0, Lcom/viber/voip/messages/ui/media/ag;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/ui/media/ag;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/viber/voip/messages/ui/media/ag;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 263
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ag;->a:I

    if-eq v0, p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/e;)V

    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    aget-object v1, p2, v3

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    .line 267
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAllFilesReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->setResult(I)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->finish()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Landroid/net/Uri;Z)V

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->g(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    goto :goto_0

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    invoke-static {v0, v1, v3}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->b:Landroid/content/Intent;

    const-string/jumbo v1, "is_public_group"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    const-string/jumbo v1, "handleIntent(), uri is from public group, skipping pre-upload"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ag;->d:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    const-string/jumbo v1, "check this value"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ag;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    goto/16 :goto_0
.end method

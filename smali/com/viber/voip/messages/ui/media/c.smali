.class Lcom/viber/voip/messages/ui/media/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/viber/voip/messages/ui/media/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;Landroid/graphics/Bitmap;Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/c;->e:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/c;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/viber/voip/messages/ui/media/c;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/viber/voip/messages/ui/media/c;->c:Z

    iput-object p5, p0, Lcom/viber/voip/messages/ui/media/c;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 373
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/c;->a:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Lcom/viber/voip/messages/extras/image/l;)Landroid/net/Uri;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 376
    new-instance v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-direct {v1}, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;-><init>()V

    .line 378
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/c;->e:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v2, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v2

    .line 380
    if-eqz v2, :cond_0

    .line 382
    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/c;->e:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v3

    .line 383
    new-instance v4, Lcom/viber/voip/util/b/z;

    invoke-direct {v4}, Lcom/viber/voip/util/b/z;-><init>()V

    new-instance v5, Lcom/viber/voip/util/b/b/f;

    iget-object v6, p0, Lcom/viber/voip/messages/ui/media/c;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/viber/voip/util/b/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v4

    .line 387
    iget-object v5, v2, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)V

    .line 389
    iget v3, v2, Lcom/viber/voip/messages/extras/image/a;->c:I

    iput v3, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->h:I

    .line 390
    iget v3, v2, Lcom/viber/voip/messages/extras/image/a;->b:I

    iput v3, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->g:I

    .line 391
    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    iput-object v2, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/c;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->f:J

    .line 395
    iput-object v0, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    .line 396
    iput-object v0, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    .line 397
    const-string/jumbo v0, "image"

    iput-object v0, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    .line 398
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/c;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->i:I

    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    const-string/jumbo v2, "data_container"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/c;->e:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->setResult(ILandroid/content/Intent;)V

    .line 405
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void

    .line 398
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

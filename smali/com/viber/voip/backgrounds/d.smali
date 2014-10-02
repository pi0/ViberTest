.class Lcom/viber/voip/backgrounds/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/viber/voip/backgrounds/d;->a:Lcom/viber/voip/backgrounds/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 383
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_DEFAULT_IMAGE_VERSION"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_3

    new-instance v0, Lcom/viber/voip/backgrounds/q;

    const v1, 0x9896f0

    invoke-direct {v0, v1}, Lcom/viber/voip/backgrounds/q;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/backgrounds/q;->a(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    const-string/jumbo v0, ""

    .line 394
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkDefaultBackground portraitImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", not exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 399
    const-string/jumbo v0, ""

    .line 403
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    const-string/jumbo v0, "checkDefaultBackground first start need to crop default background"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/viber/voip/backgrounds/q;

    const v1, 0x9896f2

    const v2, 0x9896e4

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/backgrounds/q;-><init>(II)V

    .line 406
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    iget-object v2, p0, Lcom/viber/voip/backgrounds/d;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;Landroid/content/Context;Ljava/io/File;Lcom/viber/voip/backgrounds/q;)V

    .line 411
    iget-object v0, p0, Lcom/viber/voip/backgrounds/d;->a:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a;->e()V

    .line 429
    :cond_2
    :goto_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_DEFAULT_IMAGE_VERSION"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto/16 :goto_0

    .line 391
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 415
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 416
    const-string/jumbo v2, "bg/10000114.jpg"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/viber/voip/backgrounds/d;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/viber/voip/backgrounds/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_3
    iget-object v1, p0, Lcom/viber/voip/backgrounds/d;->a:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v1}, Lcom/viber/voip/backgrounds/a;->e()V

    .line 425
    iget-object v1, p0, Lcom/viber/voip/backgrounds/d;->a:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/q;)V

    goto :goto_2

    .line 418
    :catch_0
    move-exception v1

    .line 419
    const-string/jumbo v1, "Error loading default background from asset: bg/10000114.jpg"

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    goto :goto_3
.end method

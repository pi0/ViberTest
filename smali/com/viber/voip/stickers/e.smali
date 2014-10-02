.class Lcom/viber/voip/stickers/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/bi;


# instance fields
.field a:Lcom/viber/voip/util/fd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/fd",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/viber/voip/stickers/b;


# direct methods
.method private constructor <init>(Lcom/viber/voip/stickers/b;)V
    .locals 4
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/viber/voip/stickers/e;->b:Lcom/viber/voip/stickers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    new-instance v0, Lcom/viber/voip/stickers/f;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "StickerBitmapLoader.ArbitraryThumbCacheBackend"

    const/high16 v3, 0x3c00

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/viber/voip/stickers/f;-><init>(Lcom/viber/voip/stickers/e;Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/viber/voip/stickers/e;->a:Lcom/viber/voip/util/fd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/e;-><init>(Lcom/viber/voip/stickers/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/viber/voip/stickers/e;->a:Lcom/viber/voip/util/fd;

    iget-object v1, p1, Lcom/viber/voip/stickers/c/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/fd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/viber/voip/stickers/e;->a:Lcom/viber/voip/util/fd;

    invoke-virtual {v0}, Lcom/viber/voip/util/fd;->evictAll()V

    .line 712
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 702
    iget-object v0, p1, Lcom/viber/voip/stickers/c/a;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 703
    :cond_0
    const-string/jumbo v0, "Can\'t put bitmap to ArbitraryThumbCache"

    invoke-static {v0}, Lcom/viber/voip/stickers/b;->b(Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/e;->a:Lcom/viber/voip/util/fd;

    iget-object v1, p1, Lcom/viber/voip/stickers/c/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/viber/voip/util/fd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

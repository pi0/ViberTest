.class Lcom/viber/voip/gallery/preview/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/viber/voip/gallery/preview/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/o;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/r;->c:Lcom/viber/voip/gallery/preview/o;

    iput-object p2, p0, Lcom/viber/voip/gallery/preview/r;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/viber/voip/gallery/preview/r;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/r;->c:Lcom/viber/voip/gallery/preview/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;Lcom/viber/voip/gallery/preview/u;)Lcom/viber/voip/gallery/preview/u;

    .line 304
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/r;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/gallery/preview/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/r;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/gallery/preview/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/r;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/r;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/gallery/preview/n;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 307
    :cond_0
    return-void
.end method

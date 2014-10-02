.class public Lcom/viber/voip/util/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/l;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/util/b/b/b;->b:I

    .line 26
    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/util/b/b/b;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    iget v1, p0, Lcom/viber/voip/util/b/b/b;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 35
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/viber/voip/util/b/b/b;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/viber/voip/util/b/b/b;->b:I

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/viber/voip/util/b/b/b;->a:I

    int-to-float v3, v3

    iget v4, p0, Lcom/viber/voip/util/b/b/b;->a:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 36
    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    return-object v0
.end method

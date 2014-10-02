.class public Lcom/viber/voip/messages/extras/image/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    .line 1206
    iput p2, p0, Lcom/viber/voip/messages/extras/image/k;->b:I

    .line 1207
    iput p3, p0, Lcom/viber/voip/messages/extras/image/k;->c:I

    .line 1208
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    .line 1200
    iput p2, p0, Lcom/viber/voip/messages/extras/image/k;->b:I

    .line 1201
    iput p3, p0, Lcom/viber/voip/messages/extras/image/k;->c:I

    .line 1202
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 1211
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/messages/extras/image/k;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x2

    .line 1215
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1216
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1217
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 1218
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/extras/image/k;->b:I

    .line 1219
    iget v1, p0, Lcom/viber/voip/messages/extras/image/k;->c:I

    .line 1220
    iget v4, p0, Lcom/viber/voip/messages/extras/image/k;->b:I

    and-int/lit8 v4, v4, -0x2

    if-ne v5, v4, :cond_1

    .line 1221
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 1223
    :cond_1
    iget v4, p0, Lcom/viber/voip/messages/extras/image/k;->c:I

    and-int/lit8 v4, v4, -0x2

    if-ne v5, v4, :cond_2

    .line 1224
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 1226
    :cond_2
    const/4 v4, -0x3

    iget v5, p0, Lcom/viber/voip/messages/extras/image/k;->c:I

    and-int/lit8 v5, v5, -0x3

    if-ne v4, v5, :cond_3

    .line 1227
    iget-object v4, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 1229
    :cond_3
    iget-object v4, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1239
    :goto_0
    return-object v2

    .line 1231
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, p3

    .line 1233
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1234
    iget-object v4, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 1236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 1237
    iget-object v6, p0, Lcom/viber/voip/messages/extras/image/k;->a:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    add-int/2addr v1, v4

    add-int/2addr v0, v5

    invoke-direct {v8, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

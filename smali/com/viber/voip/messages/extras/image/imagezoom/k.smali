.class public Lcom/viber/voip/messages/extras/image/imagezoom/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b:I

    .line 19
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a(Landroid/graphics/Bitmap;)V

    .line 20
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->e:I

    div-int/lit8 v1, v1, 0x2

    .line 48
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->f:I

    div-int/lit8 v2, v2, 0x2

    .line 49
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 50
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 51
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->f:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 55
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->c:I

    .line 56
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b:I

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b:I

    .line 24
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->f()V

    .line 25
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a:Landroid/graphics/Bitmap;

    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->e:I

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->f:I

    .line 41
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->f()V

    .line 43
    :cond_0
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b:I

    if-eqz v1, :cond_0

    .line 62
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->e:I

    div-int/lit8 v1, v1, 0x2

    .line 63
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->f:I

    div-int/lit8 v2, v2, 0x2

    .line 64
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 65
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 66
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 69
    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/k;->c:I

    return v0
.end method

.class public Lcom/viber/voip/ui/call/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/a/d;
.implements Lcom/viber/voip/ui/call/a/f;


# instance fields
.field private a:I

.field private b:F

.field private final c:[I

.field private final d:[F

.field private e:F

.field private f:F

.field private g:F

.field private h:Lcom/viber/voip/ui/call/a/c;

.field private i:Lcom/viber/voip/ui/call/a/c;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x3f028f5c

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v0, 0x3f80

    const/4 v4, 0x2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget v1, Lcom/viber/voip/ui/call/WavesView;->a:I

    const/high16 v2, 0x3000

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/viber/voip/ui/call/e;->a:I

    .line 16
    const v1, 0x3f6e147b

    iput v1, p0, Lcom/viber/voip/ui/call/e;->b:F

    .line 17
    const/4 v1, 0x3

    new-array v1, v1, [I

    const v2, 0xffffff

    aput v2, v1, v5

    iget v2, p0, Lcom/viber/voip/ui/call/e;->a:I

    aput v2, v1, v6

    const v2, 0xffffff

    aput v2, v1, v4

    iput-object v1, p0, Lcom/viber/voip/ui/call/e;->c:[I

    .line 18
    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/viber/voip/ui/call/e;->b:F

    const v3, 0x3e0f5c29

    sub-float/2addr v2, v3

    aput v2, v1, v5

    iget v2, p0, Lcom/viber/voip/ui/call/e;->b:F

    aput v2, v1, v6

    aput v0, v1, v4

    iput-object v1, p0, Lcom/viber/voip/ui/call/e;->d:[F

    .line 35
    iput p1, p0, Lcom/viber/voip/ui/call/e;->e:F

    .line 36
    iput p2, p0, Lcom/viber/voip/ui/call/e;->f:F

    .line 38
    add-float v1, p5, v7

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 40
    :goto_0
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 41
    new-array v2, v4, [F

    aput p3, v2, v5

    aput p4, v2, v6

    .line 42
    iput p3, p0, Lcom/viber/voip/ui/call/e;->g:F

    .line 43
    new-instance v3, Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v3, p5, v0, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v3, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    .line 47
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    .line 48
    new-array v2, v4, [F

    fill-array-data v2, :array_2

    .line 49
    new-instance v3, Lcom/viber/voip/ui/call/a/c;

    const v4, 0x3dc49ba6

    add-float/2addr v4, p5

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v3, p0, Lcom/viber/voip/ui/call/e;->i:Lcom/viber/voip/ui/call/a/c;

    .line 52
    if-eqz p6, :cond_0

    .line 53
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    iput p3, v0, Lcom/viber/voip/ui/call/a/c;->c:F

    .line 54
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->i:Lcom/viber/voip/ui/call/a/c;

    const/high16 v1, 0x42c8

    iput v1, v0, Lcom/viber/voip/ui/call/a/c;->c:F

    .line 57
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/call/e;->j:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->j:Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/viber/voip/ui/call/e;->j:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/e;->k:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/ui/call/e;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    return-void

    .line 38
    :cond_1
    add-float v0, p5, v7

    goto :goto_0

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 47
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 48
    :array_2
    .array-data 0x4
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->i:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 70
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/viber/voip/ui/call/e;->i:Lcom/viber/voip/ui/call/a/c;

    iget v1, v1, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    iget-object v7, p0, Lcom/viber/voip/ui/call/e;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/viber/voip/ui/call/e;->e:F

    iget v2, p0, Lcom/viber/voip/ui/call/e;->f:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    iget v3, v3, Lcom/viber/voip/ui/call/a/c;->c:F

    iget-object v4, p0, Lcom/viber/voip/ui/call/e;->c:[I

    iget-object v5, p0, Lcom/viber/voip/ui/call/e;->d:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    iget v0, p0, Lcom/viber/voip/ui/call/e;->e:F

    iget v1, p0, Lcom/viber/voip/ui/call/e;->f:F

    iget-object v2, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    iget v2, v2, Lcom/viber/voip/ui/call/a/c;->c:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/e;->d()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->i:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 76
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/ui/call/e;->h:Lcom/viber/voip/ui/call/a/c;

    iget v0, v0, Lcom/viber/voip/ui/call/a/c;->c:F

    iget v1, p0, Lcom/viber/voip/ui/call/e;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

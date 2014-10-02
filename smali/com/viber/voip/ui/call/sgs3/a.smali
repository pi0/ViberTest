.class public Lcom/viber/voip/ui/call/sgs3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/viber/voip/ui/call/a/b;
.implements Lcom/viber/voip/ui/call/a/d;
.implements Lcom/viber/voip/ui/call/a/f;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Rect;

.field private c:Lcom/viber/voip/ui/call/a/e;

.field private d:Lcom/viber/voip/ui/call/a/c;

.field private e:Lcom/viber/voip/ui/call/a/c;

.field private f:Lcom/viber/voip/ui/call/a/c;

.field private g:Lcom/viber/voip/ui/call/sgs3/b;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/graphics/Paint;

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;FFFILcom/viber/voip/ui/call/sgs3/b;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/ui/call/a/e;-><init>(J)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    .line 31
    iput-boolean v5, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    .line 32
    iput-boolean v7, p0, Lcom/viber/voip/ui/call/sgs3/a;->i:Z

    .line 33
    iput-boolean v7, p0, Lcom/viber/voip/ui/call/sgs3/a;->j:Z

    .line 35
    iput v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    .line 36
    iput v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    .line 37
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    .line 41
    iput v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->o:F

    .line 42
    iput v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    .line 54
    iput-object p1, p0, Lcom/viber/voip/ui/call/sgs3/a;->a:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p6, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    .line 57
    iput p4, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    .line 58
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->o:F

    .line 59
    iget v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->o:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    .line 61
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-direct {v0, v3, v6, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->e:Lcom/viber/voip/ui/call/a/c;

    .line 62
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    new-array v1, v4, [F

    fill-array-data v1, :array_2

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    invoke-direct {v0, v3, v6, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->f:Lcom/viber/voip/ui/call/a/c;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->e:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 64
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 66
    invoke-virtual {p0, p2, p3}, Lcom/viber/voip/ui/call/sgs3/a;->a(FF)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 70
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    return-void

    .line 61
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data

    .line 62
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 99
    iget v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 100
    return-object v0
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/a/e;->a(F)V

    .line 114
    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    .line 76
    iput p2, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    .line 77
    return-void
.end method

.method public a(FI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 107
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    iget v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->j:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->j:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->e:Lcom/viber/voip/ui/call/a/c;

    iget v1, v1, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    iget v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    iget v2, p0, Lcom/viber/voip/ui/call/sgs3/a;->o:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->f:Lcom/viber/voip/ui/call/a/c;

    iget v1, v1, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    iget v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    iget v2, v2, Lcom/viber/voip/ui/call/a/c;->c:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    :cond_0
    return-void

    .line 83
    :cond_1
    const/16 v0, 0x96

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/viber/voip/ui/call/sgs3/a;->j:Z

    .line 123
    return-void
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 209
    return-void
.end method

.method public b(FI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->i:Z

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public c(F)V
    .locals 1
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    .line 214
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->a()V

    .line 215
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->c()V

    .line 216
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/a;->k:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v7, p0, Lcom/viber/voip/ui/call/sgs3/a;->l:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 153
    int-to-float v3, v0

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    div-float/2addr v3, v4

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 155
    int-to-float v0, v0

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    .line 156
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    new-array v7, v8, [F

    iget v8, p0, Lcom/viber/voip/ui/call/sgs3/a;->o:F

    iget v9, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    add-float/2addr v8, v9

    aput v8, v7, v6

    iget v8, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    aput v8, v7, v5

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    .line 158
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->a()V

    .line 159
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 160
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->c()V

    .line 161
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->e:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v3}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 162
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v3}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 164
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    invoke-interface {v0, p0}, Lcom/viber/voip/ui/call/sgs3/b;->b(Lcom/viber/voip/ui/call/sgs3/a;)V

    .line 193
    :cond_0
    :goto_1
    return v6

    :cond_1
    move v0, v6

    .line 155
    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v8, v4, :cond_4

    .line 169
    iget-boolean v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    if-eqz v1, :cond_3

    int-to-float v1, v0

    iget v2, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->e:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v1, v3}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 171
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v1, v3}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 173
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    invoke-interface {v1, p0, v3}, Lcom/viber/voip/ui/call/sgs3/b;->a(Lcom/viber/voip/ui/call/sgs3/a;F)V

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    invoke-interface {v0, p0}, Lcom/viber/voip/ui/call/sgs3/b;->c(Lcom/viber/voip/ui/call/sgs3/a;)V

    .line 179
    iput-boolean v6, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    goto :goto_1

    .line 182
    :cond_4
    iget-boolean v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->h:Z

    if-eqz v3, :cond_0

    int-to-float v0, v0

    iget v3, p0, Lcom/viber/voip/ui/call/sgs3/a;->p:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    new-array v4, v8, [F

    iget-object v7, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    iget v7, v7, Lcom/viber/voip/ui/call/a/c;->c:F

    aput v7, v4, v6

    iget v7, p0, Lcom/viber/voip/ui/call/sgs3/a;->o:F

    iget v8, p0, Lcom/viber/voip/ui/call/sgs3/a;->m:F

    add-float/2addr v7, v8

    aput v7, v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[FLcom/viber/voip/ui/call/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    .line 184
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->a()V

    .line 185
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/a;->d:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->c:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->c()V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->e:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/a;->g:Lcom/viber/voip/ui/call/sgs3/b;

    invoke-interface {v0, p0}, Lcom/viber/voip/ui/call/sgs3/b;->a(Lcom/viber/voip/ui/call/sgs3/a;)V

    goto/16 :goto_1

    .line 157
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 183
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.class public Lcom/viber/voip/ui/call/WavesView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/c;


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Lcom/viber/voip/ui/call/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private g:Lcom/viber/voip/ui/call/b;

.field private h:Lcom/viber/voip/ui/call/a/e;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Lcom/viber/voip/ui/call/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/viber/voip/ui/call/WavesView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v1, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v2, 0x514

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(J)V

    iput-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->h:Lcom/viber/voip/ui/call/a/e;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->b:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 58
    invoke-virtual {p0, v4}, Lcom/viber/voip/ui/call/WavesView;->setClickable(Z)V

    .line 59
    invoke-virtual {p0, v4}, Lcom/viber/voip/ui/call/WavesView;->setEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/viber/voip/ui/call/WavesView;->a:I

    .line 69
    sget-object v1, Lcom/viber/voip/bb;->WavesView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 72
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 73
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 74
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 77
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/viber/voip/ui/call/WavesView;->d:Ljava/util/List;

    .line 78
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 79
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 80
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x101009e

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 81
    iget-object v4, p0, Lcom/viber/voip/ui/call/WavesView;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    :cond_1
    const/4 v0, 0x1

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->e:F

    .line 90
    const/4 v0, 0x3

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->i:F

    .line 91
    const/4 v0, 0x4

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->j:F

    .line 92
    const/4 v0, 0x5

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->k:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void

    .line 84
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(FFFFI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 108
    iput v5, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    .line 110
    iput p1, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    .line 111
    iget v0, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->m:F

    .line 112
    iget v0, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    iget v1, p0, Lcom/viber/voip/ui/call/WavesView;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    .line 113
    new-instance v0, Lcom/viber/voip/ui/call/a;

    iget v1, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    iget v2, p0, Lcom/viber/voip/ui/call/WavesView;->m:F

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/a;-><init>(FFFFFLandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    .line 115
    new-instance v0, Lcom/viber/voip/ui/call/b;

    iget-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    iget v4, p0, Lcom/viber/voip/ui/call/WavesView;->m:F

    iget v5, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    move v6, p5

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/ui/call/b;-><init>(Ljava/util/List;Landroid/content/res/Resources;FFFILcom/viber/voip/ui/call/c;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->g:Lcom/viber/voip/ui/call/b;

    .line 116
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->h:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 117
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->h:Lcom/viber/voip/ui/call/a/e;

    sget v1, Lcom/viber/voip/ui/call/a/e;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(I)V

    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->invalidate()V

    .line 119
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a;->a(Z)V

    .line 200
    return-void
.end method

.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v1, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/call/a;->a(Z)V

    .line 205
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a;->a(Z)V

    .line 210
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->n:Lcom/viber/voip/ui/call/f;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->n:Lcom/viber/voip/ui/call/f;

    invoke-interface {v0, p1}, Lcom/viber/voip/ui/call/f;->a(I)V

    .line 213
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x4348

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 137
    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    .line 138
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 139
    iget v2, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    .line 144
    iget v0, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    iget v4, p0, Lcom/viber/voip/ui/call/WavesView;->e:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    .line 146
    new-instance v0, Lcom/viber/voip/ui/call/e;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->isInEditMode()Z

    move-result v6

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/e;-><init>(FFFFFZ)V

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/e;->a(Landroid/graphics/Canvas;)V

    .line 147
    new-instance v0, Lcom/viber/voip/ui/call/a;

    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->i:F

    iget v4, p0, Lcom/viber/voip/ui/call/WavesView;->j:F

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/a;-><init>(FFFFFLandroid/content/res/Resources;)V

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/a;->a(Landroid/graphics/Canvas;)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 149
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    const v3, -0xff0001

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    const/high16 v3, 0x4120

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    :goto_0
    const-string/jumbo v0, "WaveDraw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    if-eqz v0, :cond_3

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/viber/voip/ui/call/WavesView;->h:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 158
    iget-object v2, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    invoke-virtual {v2}, Lcom/viber/voip/ui/call/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    invoke-virtual {v2, p1}, Lcom/viber/voip/ui/call/a;->a(Landroid/graphics/Canvas;)V

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/ui/call/WavesView;->g:Lcom/viber/voip/ui/call/b;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/ui/call/b;->a(J)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->g:Lcom/viber/voip/ui/call/b;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->g:Lcom/viber/voip/ui/call/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/b;->a(Landroid/graphics/Canvas;)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->invalidate()V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/WavesView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->i:F

    iget v4, p0, Lcom/viber/voip/ui/call/WavesView;->j:F

    iget v0, p0, Lcom/viber/voip/ui/call/WavesView;->k:F

    float-to-int v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/ui/call/WavesView;->a(FFFFI)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 180
    iget v2, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->m:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/viber/voip/ui/call/WavesView;->m:F

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 182
    iget-object v4, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/viber/voip/ui/call/WavesView;->g:Lcom/viber/voip/ui/call/b;

    if-eqz v4, :cond_1

    .line 183
    iget v4, p0, Lcom/viber/voip/ui/call/WavesView;->f:F

    iget-object v5, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    invoke-virtual {v5}, Lcom/viber/voip/ui/call/a;->a()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 184
    float-to-double v5, v4

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_0

    .line 185
    float-to-double v4, v4

    div-double v2, v4, v2

    double-to-float v2, v2

    .line 186
    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    add-float/2addr v0, v3

    .line 187
    iget v3, p0, Lcom/viber/voip/ui/call/WavesView;->l:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/ui/call/WavesView;->m:F

    add-float/2addr v1, v2

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->c:Lcom/viber/voip/ui/call/a;

    invoke-virtual {v0, p0, p1}, Lcom/viber/voip/ui/call/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/viber/voip/ui/call/WavesView;->g:Lcom/viber/voip/ui/call/b;

    invoke-virtual {v0, p0, p1}, Lcom/viber/voip/ui/call/b;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 194
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 124
    const-string/jumbo v0, "WaveVisibility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public setTargetListener(Lcom/viber/voip/ui/call/f;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/viber/voip/ui/call/WavesView;->n:Lcom/viber/voip/ui/call/f;

    .line 101
    return-void
.end method

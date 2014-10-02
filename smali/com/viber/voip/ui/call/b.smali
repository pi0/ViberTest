.class public Lcom/viber/voip/ui/call/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/viber/voip/ui/call/a/d;
.implements Lcom/viber/voip/ui/call/a/f;


# instance fields
.field private a:Lcom/viber/voip/ui/call/c;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:[I

.field private d:[Z

.field private e:Lcom/viber/voip/ui/call/a/c;

.field private f:Lcom/viber/voip/ui/call/a/e;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/res/Resources;FFFILcom/viber/voip/ui/call/c;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/content/res/Resources;",
            "FFFI",
            "Lcom/viber/voip/ui/call/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    .line 35
    new-instance v1, Lcom/viber/voip/ui/call/a/c;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->e:Lcom/viber/voip/ui/call/a/c;

    .line 36
    new-instance v1, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v2, 0x4b0

    iget-object v4, p0, Lcom/viber/voip/ui/call/b;->e:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->f:Lcom/viber/voip/ui/call/a/e;

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/ui/call/b;->i:Z

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/ui/call/b;->j:Z

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/ui/call/b;->k:F

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/ui/call/b;->l:F

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/ui/call/b;->m:F

    .line 52
    iput-object p2, p0, Lcom/viber/voip/ui/call/b;->n:Landroid/content/res/Resources;

    .line 53
    iput-object p1, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    .line 59
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    .line 60
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/viber/voip/ui/call/b;->c:[I

    .line 61
    invoke-direct {p0}, Lcom/viber/voip/ui/call/b;->a()V

    .line 62
    iput p3, p0, Lcom/viber/voip/ui/call/b;->k:F

    .line 63
    move/from16 v0, p4

    iput v0, p0, Lcom/viber/voip/ui/call/b;->l:F

    .line 64
    move/from16 v0, p5

    iput v0, p0, Lcom/viber/voip/ui/call/b;->m:F

    .line 65
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    .line 66
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    move/from16 v0, p6

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 67
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    move/from16 v0, p6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    move/from16 v0, p6

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 69
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    move/from16 v0, p6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 73
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 75
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 76
    iget v4, p0, Lcom/viber/voip/ui/call/b;->k:F

    float-to-double v4, v4

    iget v6, p0, Lcom/viber/voip/ui/call/b;->m:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L

    int-to-double v10, v2

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 78
    iget v4, p0, Lcom/viber/voip/ui/call/b;->l:F

    float-to-double v4, v4

    iget v6, p0, Lcom/viber/voip/ui/call/b;->m:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L

    int-to-double v10, v2

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 80
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 81
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 82
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 73
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 84
    :cond_0
    return-void

    .line 35
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private a()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->c:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/ui/call/b;->n:Landroid/content/res/Resources;

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->c:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/ui/call/b;->n:Landroid/content/res/Resources;

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->c:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/ui/call/b;->n:Landroid/content/res/Resources;

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 196
    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 200
    const/4 v1, 0x1

    .line 202
    :cond_0
    return v1

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/b;->i:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->f:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/a/e;->a(F)V

    .line 223
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/b;->i:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->f:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 212
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v2, p0, Lcom/viber/voip/ui/call/b;->e:Lcom/viber/voip/ui/call/a/c;

    iget v2, v2, Lcom/viber/voip/ui/call/a/c;->c:F

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/b;->i:Z

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v11, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/ui/call/b;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/ui/call/b;->j:Z

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v3, v1

    .line 117
    :goto_1
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/b;->i:Z

    if-nez v0, :cond_3

    .line 169
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0

    :cond_2
    move v3, v2

    .line 116
    goto :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [I

    move v4, v2

    move v5, v2

    .line 126
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 130
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v7, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v9, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v10, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 136
    iget-object v7, p0, Lcom/viber/voip/ui/call/b;->g:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/viber/voip/ui/call/b;->h:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 140
    if-nez v3, :cond_6

    .line 141
    new-array v7, v11, [I

    fill-array-data v7, :array_0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 142
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    invoke-interface {v0, v4}, Lcom/viber/voip/ui/call/c;->a(I)V

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    aput-boolean v1, v0, v4

    .line 152
    :cond_5
    :goto_4
    aput v4, v6, v5

    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 126
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    .line 147
    :cond_6
    new-array v7, v11, [I

    fill-array-data v7, :array_1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 148
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    invoke-interface {v0, v4}, Lcom/viber/voip/ui/call/c;->b(I)V

    goto :goto_4

    .line 155
    :cond_7
    iget-object v7, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_8

    .line 156
    iget-object v7, p0, Lcom/viber/voip/ui/call/b;->d:[Z

    aput-boolean v2, v7, v4

    .line 157
    iget-object v7, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    if-eqz v7, :cond_8

    .line 158
    iget-object v7, p0, Lcom/viber/voip/ui/call/b;->a:Lcom/viber/voip/ui/call/c;

    invoke-direct {p0}, Lcom/viber/voip/ui/call/b;->e()Z

    move-result v8

    invoke-interface {v7, v4, v8}, Lcom/viber/voip/ui/call/c;->a(IZ)V

    .line 161
    :cond_8
    if-eqz v3, :cond_9

    .line 162
    new-array v7, v1, [I

    const v8, 0x101009e

    aput v8, v7, v2

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    .line 164
    :cond_9
    new-array v7, v11, [I

    fill-array-data v7, :array_2

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    .line 169
    :cond_a
    if-ltz v5, :cond_b

    :goto_6
    move v2, v1

    goto/16 :goto_2

    :cond_b
    move v1, v2

    goto :goto_6

    .line 141
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 147
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 164
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

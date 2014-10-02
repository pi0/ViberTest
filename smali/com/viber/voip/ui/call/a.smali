.class public Lcom/viber/voip/ui/call/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/viber/voip/ui/call/a/b;
.implements Lcom/viber/voip/ui/call/a/d;
.implements Lcom/viber/voip/ui/call/a/f;


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Lcom/viber/voip/ui/call/a/c;

.field private C:Lcom/viber/voip/ui/call/a/c;

.field private D:Lcom/viber/voip/ui/call/a/c;

.field private E:Lcom/viber/voip/ui/call/a/c;

.field private F:Lcom/viber/voip/ui/call/a/c;

.field private G:Lcom/viber/voip/ui/call/a/e;

.field private final a:I

.field private final b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:[Lcom/viber/voip/ui/call/a/d;

.field private w:[Lcom/viber/voip/ui/call/a/f;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(FFFFFLandroid/content/res/Resources;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, -0x14

    iput v0, p0, Lcom/viber/voip/ui/call/a;->a:I

    .line 27
    sget v0, Lcom/viber/voip/ui/call/WavesView;->a:I

    iput v0, p0, Lcom/viber/voip/ui/call/a;->b:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ui/call/a;->r:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    .line 65
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/ui/call/a/e;-><init>(J)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    .line 68
    iput p1, p0, Lcom/viber/voip/ui/call/a;->e:F

    .line 69
    iput p2, p0, Lcom/viber/voip/ui/call/a;->f:F

    .line 70
    iput p1, p0, Lcom/viber/voip/ui/call/a;->g:F

    .line 71
    iput p2, p0, Lcom/viber/voip/ui/call/a;->h:F

    .line 72
    iput p3, p0, Lcom/viber/voip/ui/call/a;->i:F

    .line 73
    iput p4, p0, Lcom/viber/voip/ui/call/a;->c:F

    .line 74
    iput p4, p0, Lcom/viber/voip/ui/call/a;->d:F

    .line 75
    iput p5, p0, Lcom/viber/voip/ui/call/a;->k:F

    .line 77
    const/4 v0, 0x1

    const/high16 v1, -0x3fe0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->l:F

    .line 78
    const/4 v0, 0x1

    const/high16 v1, 0x40e0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->m:F

    .line 79
    const/4 v0, 0x1

    const/high16 v1, 0x4228

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->n:F

    .line 81
    const v0, 0x7f020433

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    .line 82
    const v0, 0x7f020377

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    .line 83
    const v0, 0x7f020378

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    .line 84
    const v0, 0x7f020379

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    .line 87
    const/16 v0, 0x8

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    .line 88
    const/16 v0, 0x8

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    .line 89
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const v2, 0x3f23d70a

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[FLcom/viber/voip/ui/call/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->B:Lcom/viber/voip/ui/call/a/c;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->B:Lcom/viber/voip/ui/call/a/c;

    const-string/jumbo v1, "RINGER"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/c;->a(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x3

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    .line 95
    const/4 v0, 0x3

    new-array v4, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/viber/voip/ui/call/a;->n:F

    aput v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v4, v0

    .line 96
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const v1, 0x3f07ae14

    const/high16 v2, 0x3f80

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[FLcom/viber/voip/ui/call/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->C:Lcom/viber/voip/ui/call/a/c;

    .line 97
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->C:Lcom/viber/voip/ui/call/a/c;

    const-string/jumbo v1, "RINGER_MOVE"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/c;->a(Ljava/lang/String;)V

    .line 100
    const v0, 0x3f051eb8

    .line 102
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    .line 103
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    .line 104
    new-instance v3, Lcom/viber/voip/ui/call/a/c;

    const v4, 0x3da3d70a

    add-float/2addr v4, v0

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v3, p0, Lcom/viber/voip/ui/call/a;->D:Lcom/viber/voip/ui/call/a/c;

    .line 108
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    .line 109
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    .line 110
    new-instance v3, Lcom/viber/voip/ui/call/a/c;

    const v4, 0x3da3d70a

    add-float/2addr v4, v0

    const v5, 0x3e23d70a

    add-float/2addr v5, v0

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v3, p0, Lcom/viber/voip/ui/call/a;->E:Lcom/viber/voip/ui/call/a/c;

    .line 114
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_7

    .line 115
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    .line 116
    new-instance v3, Lcom/viber/voip/ui/call/a/c;

    const v4, 0x3e23d70a

    add-float/2addr v4, v0

    const v5, 0x3e75c28f

    add-float/2addr v0, v5

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v3, p0, Lcom/viber/voip/ui/call/a;->F:Lcom/viber/voip/ui/call/a/c;

    .line 118
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    sget v1, Lcom/viber/voip/ui/call/a/e;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(I)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->B:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->C:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 121
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->D:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->E:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->F:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/ui/call/a;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/a;->j:F

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    const/4 v1, 0x1

    const/high16 v2, 0x40a0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 133
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 134
    iget-object v2, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 137
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    .line 140
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->u:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->u:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    const/4 v0, 0x1

    const/high16 v1, 0x40a0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->o:I

    .line 150
    const/4 v0, 0x1

    const/high16 v1, 0x40e0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->p:I

    .line 151
    const/4 v0, 0x1

    const/high16 v1, 0x4110

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->q:I

    .line 152
    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 87
    nop

    :array_0
    .array-data 0x4
        0xb8t 0x1et 0x85t 0x3et
        0xa4t 0x70t 0xbdt 0x3et
        0x3dt 0xat 0xd7t 0x3et
        0xd7t 0xa3t 0xf0t 0x3et
        0xe1t 0x7at 0x14t 0x3ft
        0x7bt 0x14t 0x2et 0x3ft
        0xa4t 0x70t 0x3dt 0x3ft
        0x33t 0x33t 0x73t 0x3ft
    .end array-data

    .line 88
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xc1t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 94
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 102
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 103
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data

    .line 108
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 109
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data

    .line 114
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 115
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->e:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->j:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/a;->f:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->j:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/viber/voip/ui/call/a;->e:F

    iget v4, p0, Lcom/viber/voip/ui/call/a;->j:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/viber/voip/ui/call/a;->f:F

    iget v5, p0, Lcom/viber/voip/ui/call/a;->j:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 158
    return-object v0
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/a/e;->a(F)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/viber/voip/ui/call/a/d;->a(F)V

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method public a(FI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 276
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    if-nez v0, :cond_1

    .line 277
    :cond_0
    new-array v0, v1, [Lcom/viber/voip/ui/call/a/d;

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    .line 278
    new-array v0, v1, [Lcom/viber/voip/ui/call/a/f;

    iput-object v0, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    .line 281
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 308
    :goto_0
    :pswitch_0
    return-void

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v6

    if-nez v0, :cond_2

    .line 284
    iget-object v7, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    new-instance v0, Lcom/viber/voip/ui/call/e;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->e:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->f:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->j:F

    iget v4, p0, Lcom/viber/voip/ui/call/a;->k:F

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/e;-><init>(FFFFFZ)V

    aput-object v0, v7, v6

    .line 285
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v6

    check-cast v0, Lcom/viber/voip/ui/call/a/f;

    aput-object v0, v1, v6

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v6

    invoke-interface {v0}, Lcom/viber/voip/ui/call/a/d;->c()V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v8

    if-nez v0, :cond_3

    .line 292
    iget-object v7, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    new-instance v0, Lcom/viber/voip/ui/call/e;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->e:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->f:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->j:F

    iget v4, p0, Lcom/viber/voip/ui/call/a;->k:F

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/e;-><init>(FFFFFZ)V

    aput-object v0, v7, v8

    .line 293
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v8

    check-cast v0, Lcom/viber/voip/ui/call/a/f;

    aput-object v0, v1, v8

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v8

    invoke-interface {v0}, Lcom/viber/voip/ui/call/a/d;->c()V

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v9

    if-nez v0, :cond_4

    .line 300
    iget-object v7, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    new-instance v0, Lcom/viber/voip/ui/call/e;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->e:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->f:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->j:F

    iget v4, p0, Lcom/viber/voip/ui/call/a;->k:F

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/e;-><init>(FFFFFZ)V

    aput-object v0, v7, v9

    .line 301
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v9

    check-cast v0, Lcom/viber/voip/ui/call/a/f;

    aput-object v0, v1, v9

    goto :goto_0

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->v:[Lcom/viber/voip/ui/call/a/d;

    aget-object v0, v0, v9

    invoke-interface {v0}, Lcom/viber/voip/ui/call/a/d;->c()V

    goto/16 :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xff

    .line 164
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/viber/voip/ui/call/a/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->w:[Lcom/viber/voip/ui/call/a/f;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/viber/voip/ui/call/a/f;->a(Landroid/graphics/Canvas;)V

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->r:Z

    if-eqz v0, :cond_3

    .line 173
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->C:Lcom/viber/voip/ui/call/a/c;

    iget v0, v0, Lcom/viber/voip/ui/call/a/c;->c:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget v0, p0, Lcom/viber/voip/ui/call/a;->g:F

    iget v1, p0, Lcom/viber/voip/ui/call/a;->h:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->j:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/a;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/ui/call/a;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    iget v0, p0, Lcom/viber/voip/ui/call/a;->g:F

    iget v1, p0, Lcom/viber/voip/ui/call/a;->h:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->j:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/a;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 187
    iget v1, p0, Lcom/viber/voip/ui/call/a;->g:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/a;->h:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 188
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 191
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->B:Lcom/viber/voip/ui/call/a/c;

    iget v0, v0, Lcom/viber/voip/ui/call/a/c;->c:F

    iget v1, p0, Lcom/viber/voip/ui/call/a;->g:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->l:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/ui/call/a;->h:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->m:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 192
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 199
    iget v1, p0, Lcom/viber/voip/ui/call/a;->g:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->o:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/a;->h:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->o:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 200
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 201
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->D:Lcom/viber/voip/ui/call/a/c;

    iget v1, v1, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 206
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 209
    iget v1, p0, Lcom/viber/voip/ui/call/a;->g:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->p:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/a;->h:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->p:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 210
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 211
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v0, :cond_6

    .line 212
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->E:Lcom/viber/voip/ui/call/a/c;

    iget v1, v1, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 216
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 219
    iget v1, p0, Lcom/viber/voip/ui/call/a;->g:F

    iget v2, p0, Lcom/viber/voip/ui/call/a;->q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/viber/voip/ui/call/a;->h:F

    iget v3, p0, Lcom/viber/voip/ui/call/a;->q:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 220
    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/viber/voip/ui/call/a;->F:Lcom/viber/voip/ui/call/a/c;

    iget v1, v1, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    :goto_4
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    :cond_3
    return-void

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/viber/voip/ui/call/a;->r:Z

    .line 242
    return-void
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 317
    return-void
.end method

.method public b(FI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/ui/call/a;->G:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->c()V

    .line 264
    iget v0, p0, Lcom/viber/voip/ui/call/a;->e:F

    iput v0, p0, Lcom/viber/voip/ui/call/a;->g:F

    .line 265
    iget v0, p0, Lcom/viber/voip/ui/call/a;->f:F

    iput v0, p0, Lcom/viber/voip/ui/call/a;->h:F

    .line 266
    return-void
.end method

.method public c(F)V
    .locals 0
    .parameter

    .prologue
    .line 321
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v3, -0x14

    .line 325
    iget-boolean v2, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/a;->a()Landroid/graphics/Rect;

    move-result-object v2

    .line 327
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    :goto_0
    return v0

    .line 332
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    .line 333
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a;->s:Z

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->g:F

    .line 335
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/a;->h:F

    .line 336
    iget v0, p0, Lcom/viber/voip/ui/call/a;->c:F

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    iput v0, p0, Lcom/viber/voip/ui/call/a;->d:F

    :goto_1
    move v0, v1

    .line 342
    goto :goto_0

    .line 338
    :cond_2
    iget v0, p0, Lcom/viber/voip/ui/call/a;->e:F

    iput v0, p0, Lcom/viber/voip/ui/call/a;->g:F

    .line 339
    iget v0, p0, Lcom/viber/voip/ui/call/a;->f:F

    iput v0, p0, Lcom/viber/voip/ui/call/a;->h:F

    .line 340
    iget v0, p0, Lcom/viber/voip/ui/call/a;->c:F

    iput v0, p0, Lcom/viber/voip/ui/call/a;->d:F

    goto :goto_1
.end method

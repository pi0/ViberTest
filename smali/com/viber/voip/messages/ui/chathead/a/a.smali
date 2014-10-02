.class public Lcom/viber/voip/messages/ui/chathead/a/a;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:F

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/Paint;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->c:I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/viber/voip/bb;->ChatHeadView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->j:I

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    .line 61
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->l:Landroid/graphics/Path;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    .line 69
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->e:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->e:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4d00

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 76
    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->d:F

    .line 77
    const v1, 0x7f0a01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->f:F

    .line 78
    const v1, 0x7f0a01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->g:F

    .line 79
    const v1, 0x7f0a01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->h:F

    .line 80
    const v1, 0x7f0a01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->i:F

    .line 82
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    const v2, 0x7f0a01bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/ui/chathead/a/a;->setWillNotDraw(Z)V

    .line 85
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/a;->invalidate()V

    .line 176
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->j:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->n:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 95
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    div-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->l:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    const v1, -0x894d37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->c:I

    if-ne v0, v8, :cond_3

    .line 103
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->i:F

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->g:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->d:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    invoke-static {v6}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4d00

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 105
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->i:F

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->g:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->d:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->c:I

    if-ne v0, v8, :cond_4

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->i:F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->h:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 106
    :cond_3
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->c:I

    if-ne v0, v7, :cond_1

    .line 107
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->f:F

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->g:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->d:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    invoke-static {v6}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4d00

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 109
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->f:F

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->g:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->d:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 116
    :cond_4
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->c:I

    if-ne v0, v7, :cond_2

    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->f:F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->h:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->j:I

    .line 154
    return-void
.end method

.method public setBorderVisible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->n:Z

    .line 158
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    .line 142
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    sub-int v1, p3, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    sub-float/2addr v1, v2

    sub-int v2, p4, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->k:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->l:Landroid/graphics/Path;

    invoke-static {v1, v2, v3}, Lcom/viber/voip/messages/extras/image/h;->a(FFLandroid/graphics/Path;)V

    .line 128
    :cond_0
    return v0
.end method

.method public setMessagesCount(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->a:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/a;->invalidate()V

    .line 134
    return-void
.end method

.method public setShowBadge(Z)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->o:Z

    .line 170
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/a;->invalidate()V

    .line 171
    return-void
.end method

.method public setTextGravity(I)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/a/a;->c:I

    .line 138
    return-void
.end method

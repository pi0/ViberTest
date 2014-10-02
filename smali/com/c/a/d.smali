.class Lcom/c/a/d;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/c/a/b;

.field private b:F

.field private c:F

.field private d:Z


# direct methods
.method private a(F)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 164
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0}, Lcom/c/a/b;->j(Lcom/c/a/b;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0}, Lcom/c/a/b;->k(Lcom/c/a/b;)D

    move-result-wide v1

    float-to-double v3, p1

    iget-object v5, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v5}, Lcom/c/a/b;->j(Lcom/c/a/b;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/c/a/d;->c:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/c/a/b;->a(Lcom/c/a/b;D)V

    .line 168
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v0, v7}, Lcom/c/a/b;->b(Z)D

    move-result-wide v0

    .line 169
    iget-object v2, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v2, v7}, Lcom/c/a/b;->a(Z)D

    move-result-wide v2

    .line 170
    iget-object v4, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4}, Lcom/c/a/b;->k(Lcom/c/a/b;)D

    move-result-wide v4

    cmpg-double v4, v4, v0

    if-gez v4, :cond_4

    .line 171
    iget-object v2, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2, v0, v1}, Lcom/c/a/b;->a(Lcom/c/a/b;D)V

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0}, Lcom/c/a/b;->l(Lcom/c/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0, v8}, Lcom/c/a/b;->a(Lcom/c/a/b;[Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0}, Lcom/c/a/b;->m(Lcom/c/a/b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0, v8}, Lcom/c/a/b;->b(Lcom/c/a/b;[Ljava/lang/String;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0}, Lcom/c/a/b;->n(Lcom/c/a/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/c/a/d;->invalidate()V

    .line 182
    return-void

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v0}, Lcom/c/a/b;->k(Lcom/c/a/b;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4}, Lcom/c/a/b;->j(Lcom/c/a/b;)D

    move-result-wide v4

    add-double/2addr v0, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v1}, Lcom/c/a/b;->j(Lcom/c/a/b;)D

    move-result-wide v4

    sub-double v1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/c/a/b;->a(Lcom/c/a/b;D)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v2, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v2, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    const/high16 v2, 0x41a0

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/c/a/d;->getHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v27, v0

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/c/a/d;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v5, v4

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v4}, Lcom/c/a/b;->getMaxY()D

    move-result-wide v12

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v4}, Lcom/c/a/b;->getMinY()D

    move-result-wide v19

    .line 88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/c/a/b;->a(Z)D

    move-result-wide v6

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/c/a/b;->b(Z)D

    move-result-wide v17

    .line 90
    sub-double v21, v6, v17

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4}, Lcom/c/a/b;->a(Lcom/c/a/b;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4}, Lcom/c/a/b;->b(Lcom/c/a/b;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    .line 94
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v4, v4, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v6}, Lcom/c/a/b;->getGraphViewStyle()Lcom/c/a/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/c/a/j;->e()F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/c/a/b;->a(Z)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/c/a/b;->b(Z)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide v8, 0x3fe90e5604189375L

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/c/a/b;->b(Z)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/c/a/b;->a(DZ)Ljava/lang/String;

    move-result-object v4

    .line 97
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v6, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v9}, Lcom/c/a/b;->c(Lcom/c/a/b;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v6}, Lcom/c/a/b;->c(Lcom/c/a/b;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/c/a/b;->a(Lcom/c/a/b;Ljava/lang/Integer;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v6}, Lcom/c/a/b;->c(Lcom/c/a/b;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/c/a/b;->b(Lcom/c/a/b;Ljava/lang/Integer;)V

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4}, Lcom/c/a/b;->a(Lcom/c/a/b;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    add-float v10, v2, v4

    .line 103
    const/high16 v2, 0x4000

    mul-float/2addr v2, v10

    sub-float v15, v27, v2

    .line 104
    move-object/from16 v0, p0

    iput v5, v0, Lcom/c/a/d;->c:F

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->d(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/c/a/d;->c:F

    invoke-static {v4, v6}, Lcom/c/a/b;->a(Lcom/c/a/b;F)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/c/a/b;->a(Lcom/c/a/b;[Ljava/lang/String;)V

    .line 109
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->e(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4, v15}, Lcom/c/a/b;->b(Lcom/c/a/b;F)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/c/a/b;->b(Lcom/c/a/b;[Ljava/lang/String;)V

    .line 114
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v2, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->e(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v9, v2, -0x1

    .line 116
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->e(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v8, v2, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->d(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v4, v2, -0x1

    .line 124
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v6}, Lcom/c/a/b;->d(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v2, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->g(Lcom/c/a/b;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/c/a/d;->c:F

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    const/high16 v6, 0x4080

    sub-float v6, v10, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v7, v7, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    cmpl-double v2, v12, v19

    if-nez v2, :cond_b

    .line 142
    const-wide/16 v6, 0x0

    cmpl-double v2, v12, v6

    if-nez v2, :cond_9

    .line 144
    const-wide/high16 v6, 0x3ff0

    .line 145
    const-wide/16 v19, 0x0

    .line 152
    :goto_2
    sub-double v23, v6, v19

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v2, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 155
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->h(Lcom/c/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_a

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->i(Lcom/c/a/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1, v5}, Lcom/c/a/b;->a(Landroid/graphics/Canvas;FF)V

    .line 160
    :cond_4
    return-void

    .line 117
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v2, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v4}, Lcom/c/a/b;->f(Lcom/c/a/b;)Lcom/c/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/c/a/j;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    int-to-float v2, v9

    div-float v2, v15, v2

    int-to-float v4, v8

    mul-float/2addr v2, v4

    add-float v4, v2, v10

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v7, v2, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    .line 125
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v6, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v7}, Lcom/c/a/b;->f(Lcom/c/a/b;)Lcom/c/a/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/c/a/j;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    move-object/from16 v0, p0

    iget v6, v0, Lcom/c/a/d;->c:F

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v6, v7

    add-float v7, v6, v3

    .line 127
    sub-float v8, v27, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v11, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v9, v7

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v6, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v6}, Lcom/c/a/b;->d(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_7

    .line 130
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v6, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 131
    :cond_7
    if-nez v2, :cond_8

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v6, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v6, v6, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v8}, Lcom/c/a/b;->f(Lcom/c/a/b;)Lcom/c/a/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/c/a/j;->b()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v6}, Lcom/c/a/b;->d(Lcom/c/a/b;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    const/high16 v8, 0x4080

    sub-float v8, v27, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    iget-object v9, v9, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 147
    :cond_9
    const-wide v6, 0x3ff0cccccccccccdL

    mul-double/2addr v6, v12

    .line 148
    const-wide v8, 0x3fee666666666666L

    mul-double v19, v19, v8

    goto/16 :goto_2

    .line 156
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2, v4}, Lcom/c/a/b;->a(Lcom/c/a/b;I)[Lcom/c/a/g;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/c/a/d;->c:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v2}, Lcom/c/a/b;->h(Lcom/c/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/a/h;

    iget-object v0, v2, Lcom/c/a/h;->b:Lcom/c/a/i;

    move-object/from16 v26, v0

    move-object/from16 v12, p1

    move/from16 v16, v10

    move/from16 v25, v3

    invoke-virtual/range {v11 .. v26}, Lcom/c/a/b;->a(Landroid/graphics/Canvas;[Lcom/c/a/g;FFFDDDDFLcom/c/a/i;)V

    .line 155
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_3

    :cond_b
    move-wide v6, v12

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v1}, Lcom/c/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-virtual {v1}, Lcom/c/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v1}, Lcom/c/a/b;->o(Lcom/c/a/b;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v1}, Lcom/c/a/b;->p(Lcom/c/a/b;)Lcom/c/a/a/b;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 196
    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v1}, Lcom/c/a/b;->p(Lcom/c/a/b;)Lcom/c/a/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/c/a/a/b;->a(Landroid/view/MotionEvent;)V

    .line 197
    iget-object v1, p0, Lcom/c/a/d;->a:Lcom/c/a/b;

    invoke-static {v1}, Lcom/c/a/b;->p(Lcom/c/a/b;)Lcom/c/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/a/b;->a()Z

    move-result v1

    .line 199
    :goto_1
    if-nez v1, :cond_5

    .line 200
    const-string/jumbo v1, "GraphView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "on touch event scale not handled+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/c/a/d;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 203
    iput-boolean v0, p0, Lcom/c/a/d;->d:Z

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_2

    .line 207
    iput-boolean v2, p0, Lcom/c/a/d;->d:Z

    .line 208
    iput v5, p0, Lcom/c/a/d;->b:F

    .line 211
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 212
    iget-boolean v1, p0, Lcom/c/a/d;->d:Z

    if-eqz v1, :cond_4

    .line 213
    iget v1, p0, Lcom/c/a/d;->b:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/c/a/d;->b:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/c/a/d;->a(F)V

    .line 216
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/c/a/d;->b:F

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/c/a/d;->invalidate()V

    goto :goto_0

    .line 224
    :cond_5
    iput-boolean v2, p0, Lcom/c/a/d;->d:Z

    .line 225
    iput v5, p0, Lcom/c/a/d;->b:F

    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

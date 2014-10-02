.class Lcom/viber/voip/contacts/a/p;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/a/n;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/a/n;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    .line 198
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 199
    iput p3, p0, Lcom/viber/voip/contacts/a/p;->b:I

    .line 200
    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v1}, Lcom/viber/voip/contacts/a/n;->a(Lcom/viber/voip/contacts/a/n;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/viber/voip/contacts/a/p;->b:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/viber/voip/contacts/a/p;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 205
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v3, Lcom/viber/voip/contacts/a/o;

    iget-object v4, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-direct {v3, v4, v1}, Lcom/viber/voip/contacts/a/o;-><init>(Lcom/viber/voip/contacts/a/n;Landroid/view/View;)V

    .line 208
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/p;->addView(Landroid/view/View;)V

    .line 211
    iget-object v1, v3, Lcom/viber/voip/contacts/a/o;->n:Landroid/widget/ImageView;

    new-instance v4, Lcom/viber/voip/contacts/a/q;

    invoke-direct {v4, p0, v3}, Lcom/viber/voip/contacts/a/q;-><init>(Lcom/viber/voip/contacts/a/p;Lcom/viber/voip/contacts/a/o;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    iget-object v1, v3, Lcom/viber/voip/contacts/a/o;->n:Landroid/widget/ImageView;

    new-instance v4, Lcom/viber/voip/contacts/a/r;

    invoke-direct {v4, p0, v3}, Lcom/viber/voip/contacts/a/r;-><init>(Lcom/viber/voip/contacts/a/p;Lcom/viber/voip/contacts/a/o;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iput v2, p0, Lcom/viber/voip/contacts/a/p;->c:I

    move v1, v2

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/a/n;->a(Lcom/viber/voip/contacts/a/n;)I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 236
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/p;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 237
    iget-object v0, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/a/n;->c(Lcom/viber/voip/contacts/a/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/a/n;->d(Lcom/viber/voip/contacts/a/n;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    const v0, 0x7f0700d6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v3}, Lcom/viber/voip/contacts/a/n;->e(Lcom/viber/voip/contacts/a/n;)I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v4}, Lcom/viber/voip/contacts/a/n;->e(Lcom/viber/voip/contacts/a/n;)I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v5}, Lcom/viber/voip/contacts/a/n;->e(Lcom/viber/voip/contacts/a/n;)I

    move-result v5

    iget-object v6, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v6}, Lcom/viber/voip/contacts/a/n;->e(Lcom/viber/voip/contacts/a/n;)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/a/n;->c(Lcom/viber/voip/contacts/a/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v0}, Lcom/viber/voip/contacts/a/n;->d(Lcom/viber/voip/contacts/a/n;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 245
    :goto_2
    iget-object v3, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v3}, Lcom/viber/voip/contacts/a/n;->c(Lcom/viber/voip/contacts/a/n;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v3}, Lcom/viber/voip/contacts/a/n;->d(Lcom/viber/voip/contacts/a/n;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v2

    .line 247
    :goto_3
    iget-object v4, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v4}, Lcom/viber/voip/contacts/a/n;->d(Lcom/viber/voip/contacts/a/n;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v4}, Lcom/viber/voip/contacts/a/n;->f(Lcom/viber/voip/contacts/a/n;)I

    move-result v4

    .line 248
    :goto_4
    iget-object v5, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v5}, Lcom/viber/voip/contacts/a/n;->d(Lcom/viber/voip/contacts/a/n;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v5}, Lcom/viber/voip/contacts/a/n;->h(Lcom/viber/voip/contacts/a/n;)I

    move-result v5

    .line 250
    :goto_5
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a00ee

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 251
    :goto_6
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0a00ef

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 252
    :cond_2
    if-nez v1, :cond_9

    .line 253
    :goto_7
    iget-object v8, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v8}, Lcom/viber/voip/contacts/a/n;->a(Lcom/viber/voip/contacts/a/n;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_3

    move v0, v5

    .line 254
    :cond_3
    invoke-virtual {v7, v4, v6, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    iget v3, p0, Lcom/viber/voip/contacts/a/p;->c:I

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    iput v0, p0, Lcom/viber/voip/contacts/a/p;->c:I

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 244
    :cond_4
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_3

    .line 247
    :cond_6
    iget-object v4, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v4}, Lcom/viber/voip/contacts/a/n;->g(Lcom/viber/voip/contacts/a/n;)I

    move-result v4

    goto :goto_4

    .line 248
    :cond_7
    iget-object v5, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v5}, Lcom/viber/voip/contacts/a/n;->i(Lcom/viber/voip/contacts/a/n;)I

    move-result v5

    goto :goto_5

    :cond_8
    move v6, v3

    .line 250
    goto :goto_6

    :cond_9
    move v4, v0

    .line 252
    goto :goto_7

    .line 258
    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 286
    move v0, v1

    move v2, v1

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/p;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 290
    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 291
    add-int/2addr v2, v4

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4000

    const/4 v1, 0x0

    .line 262
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 264
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/p;->getChildCount()I

    move-result v4

    .line 265
    if-nez v4, :cond_0

    .line 266
    invoke-virtual {p0, v3, v1}, Lcom/viber/voip/contacts/a/p;->setMeasuredDimension(II)V

    .line 282
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v0, p0, Lcom/viber/voip/contacts/a/p;->c:I

    .line 271
    sub-int v2, v3, v0

    iget-object v5, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v5}, Lcom/viber/voip/contacts/a/n;->a(Lcom/viber/voip/contacts/a/n;)I

    move-result v5

    div-int v5, v2, v5

    .line 272
    iget-object v2, p0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v2}, Lcom/viber/voip/contacts/a/n;->a(Lcom/viber/voip/contacts/a/n;)I

    move-result v2

    mul-int/2addr v2, v5

    sub-int v2, v3, v2

    sub-int v6, v2, v0

    move v2, v1

    .line 274
    :goto_1
    if-ge v2, v4, :cond_2

    .line 275
    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/a/p;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 276
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v0

    if-ge v2, v6, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v8

    .line 277
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    .line 278
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/view/View;->measure(II)V

    .line 274
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 276
    goto :goto_2

    .line 281
    :cond_2
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/viber/voip/contacts/a/p;->setMeasuredDimension(II)V

    goto :goto_0
.end method

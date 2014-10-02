.class Lcom/viber/voip/widget/dslv/n;
.super Lcom/viber/voip/widget/dslv/u;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    .line 1261
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/u;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V

    .line 1262
    return-void
.end method

.method private e()I
    .locals 4

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1275
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->i(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1276
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v3, p0, Lcom/viber/voip/widget/dslv/n;->d:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1277
    const/4 v0, -0x1

    .line 1278
    if-eqz v2, :cond_2

    .line 1279
    iget v0, p0, Lcom/viber/voip/widget/dslv/n;->d:I

    iget v3, p0, Lcom/viber/voip/widget/dslv/n;->e:I

    if-ne v0, v3, :cond_0

    .line 1280
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1293
    :goto_0
    return v0

    .line 1281
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/n;->d:I

    iget v3, p0, Lcom/viber/voip/widget/dslv/n;->e:I

    if-ge v0, v3, :cond_1

    .line 1283
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1286
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->j(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1290
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/n;->d()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->g(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/n;->d:I

    .line 1267
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->h(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/n;->e:I

    .line 1268
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    .line 1269
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/n;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/n;->f:F

    .line 1270
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/n;->g:F

    .line 1271
    return-void
.end method

.method public a(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/n;->e()I

    move-result v0

    .line 1299
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1300
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1301
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1302
    const/high16 v3, 0x3f80

    sub-float/2addr v3, p2

    .line 1303
    iget v4, p0, Lcom/viber/voip/widget/dslv/n;->f:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/viber/voip/widget/dslv/n;->g:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/widget/dslv/n;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1305
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/viber/voip/widget/dslv/n;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1306
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;Z)V

    .line 1308
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/n;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->k(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    .line 1313
    return-void
.end method

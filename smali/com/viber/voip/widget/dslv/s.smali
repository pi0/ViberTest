.class Lcom/viber/voip/widget/dslv/s;
.super Lcom/viber/voip/widget/dslv/u;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1333
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    .line 1334
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/u;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V

    .line 1326
    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->g:I

    .line 1327
    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->h:I

    .line 1335
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x4000

    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 1339
    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->g:I

    .line 1340
    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->h:I

    .line 1341
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->l(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/s;->i:I

    .line 1342
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->m(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/s;->j:I

    .line 1343
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->h(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/s;->k:I

    .line 1344
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    .line 1346
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    .line 1347
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->n(Lcom/viber/voip/widget/dslv/DragSortListView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1348
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 1349
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 1350
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v4, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v3, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;F)F

    .line 1361
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1350
    goto :goto_0

    .line 1352
    :cond_2
    mul-float v0, v2, v4

    .line 1353
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1354
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    neg-float v0, v0

    invoke-static {v1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1355
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->p(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    goto :goto_1
.end method

.method public a(FF)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1365
    const/high16 v0, 0x3f80

    sub-float v3, v0, p2

    .line 1367
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1368
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v5, p0, Lcom/viber/voip/widget/dslv/s;->i:I

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1372
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->n(Lcom/viber/voip/widget/dslv/DragSortListView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/viber/voip/widget/dslv/s;->b:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    const/high16 v6, 0x447a

    div-float v6, v0, v6

    .line 1374
    cmpl-float v0, v6, v10

    if-nez v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v0

    mul-float v7, v0, v6

    .line 1377
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getWidth()I

    move-result v8

    .line 1378
    iget-object v9, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->o(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v6, v8

    mul-float/2addr v0, v6

    invoke-static {v9, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;F)F

    .line 1379
    iget v0, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    .line 1380
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v6, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    float-to-int v6, v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 1381
    iget v0, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    int-to-float v6, v8

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    iget v0, p0, Lcom/viber/voip/widget/dslv/s;->d:F

    neg-int v6, v8

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/widget/dslv/s;->b:J

    .line 1383
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1378
    goto :goto_1

    .line 1388
    :cond_3
    if-eqz v5, :cond_5

    .line 1389
    iget v0, p0, Lcom/viber/voip/widget/dslv/s;->g:I

    if-ne v0, v2, :cond_4

    .line 1390
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v6, p0, Lcom/viber/voip/widget/dslv/s;->i:I

    invoke-static {v0, v6, v5, v11}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->g:I

    .line 1391
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v6, p0, Lcom/viber/voip/widget/dslv/s;->g:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/s;->e:F

    .line 1393
    :cond_4
    iget v0, p0, Lcom/viber/voip/widget/dslv/s;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1394
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1395
    iget v7, p0, Lcom/viber/voip/widget/dslv/s;->g:I

    add-int/2addr v0, v7

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1396
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    :cond_5
    iget v0, p0, Lcom/viber/voip/widget/dslv/s;->j:I

    iget v5, p0, Lcom/viber/voip/widget/dslv/s;->i:I

    if-eq v0, v5, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v5, p0, Lcom/viber/voip/widget/dslv/s;->j:I

    sub-int v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1400
    if-eqz v0, :cond_0

    .line 1401
    iget v4, p0, Lcom/viber/voip/widget/dslv/s;->h:I

    if-ne v4, v2, :cond_6

    .line 1402
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v4, p0, Lcom/viber/voip/widget/dslv/s;->j:I

    invoke-static {v2, v4, v0, v11}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/s;->h:I

    .line 1403
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/viber/voip/widget/dslv/s;->h:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/s;->f:F

    .line 1405
    :cond_6
    iget v2, p0, Lcom/viber/voip/widget/dslv/s;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1406
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1407
    iget v3, p0, Lcom/viber/voip/widget/dslv/s;->h:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1408
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/s;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->q(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    .line 1416
    return-void
.end method

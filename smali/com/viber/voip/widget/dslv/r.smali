.class Lcom/viber/voip/widget/dslv/r;
.super Lcom/viber/voip/widget/dslv/u;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private d:F

.field private e:F


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/r;->d:F

    .line 1234
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/r;->e:F

    .line 1235
    return-void
.end method

.method public a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/r;->d()V

    .line 1247
    :goto_0
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget v1, p0, Lcom/viber/voip/widget/dslv/r;->e:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/viber/voip/widget/dslv/r;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    .line 1244
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->f(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1245
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/r;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;Z)V

    goto :goto_0
.end method

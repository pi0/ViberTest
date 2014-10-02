.class public Lcom/viber/voip/market/b/a/g;
.super Lcom/viber/voip/widget/dslv/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/dslv/j;


# instance fields
.field private final a:Lcom/viber/voip/market/b/a/c;

.field private final b:Lcom/viber/voip/market/b/a/i;

.field private final c:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private d:Lcom/viber/voip/market/b/a/h;


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;Lcom/viber/voip/market/b/a/c;Lcom/viber/voip/market/b/a/i;Lcom/viber/voip/market/b/a/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    const v0, 0x7f0702c3

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/viber/voip/widget/dslv/a;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;III)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/viber/voip/market/b/a/g;->b(Z)V

    .line 31
    iput-object p1, p0, Lcom/viber/voip/market/b/a/g;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    .line 32
    iput-object p3, p0, Lcom/viber/voip/market/b/a/g;->b:Lcom/viber/voip/market/b/a/i;

    .line 33
    iput-object p2, p0, Lcom/viber/voip/market/b/a/g;->a:Lcom/viber/voip/market/b/a/c;

    .line 34
    iput-object p4, p0, Lcom/viber/voip/market/b/a/g;->d:Lcom/viber/voip/market/b/a/h;

    .line 35
    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    const v0, 0x3f4ccccd

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/viber/voip/market/b/a/g;->b:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/i;->getCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    mul-float/2addr v0, p1

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/viber/voip/widget/dslv/a;->c(Landroid/view/MotionEvent;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/viber/voip/market/b/a/g;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, v0, v1

    .line 50
    iget-object v2, p0, Lcom/viber/voip/market/b/a/g;->a:Lcom/viber/voip/market/b/a/c;

    invoke-interface {v2}, Lcom/viber/voip/market/b/a/c;->a()I

    move-result v2

    if-le v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/viber/voip/market/b/a/g;->b:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v2}, Lcom/viber/voip/market/b/a/i;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/market/b/a/g;->b:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v2, v1}, Lcom/viber/voip/market/b/a/i;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/market/b/a/g;->b:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v2, v1}, Lcom/viber/voip/market/b/a/i;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/market/b/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const/4 v0, -0x1

    .line 54
    :cond_0
    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/viber/voip/widget/dslv/a;->a(I)Landroid/view/View;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const v2, 0x7f0202b9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 63
    const v2, 0x7f070070

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/market/b/a/g;->d:Lcom/viber/voip/market/b/a/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/market/b/a/g;->d:Lcom/viber/voip/market/b/a/h;

    invoke-interface {v1, v0, p1}, Lcom/viber/voip/market/b/a/h;->a(Landroid/view/View;I)V

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/viber/voip/widget/dslv/a;->a(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/market/b/a/g;->d:Lcom/viber/voip/market/b/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/market/b/a/g;->d:Lcom/viber/voip/market/b/a/h;

    invoke-interface {v0}, Lcom/viber/voip/market/b/a/h;->a()V

    .line 92
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    return-void
.end method

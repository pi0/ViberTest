.class Lcom/viber/voip/widget/dslv/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    .line 657
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 658
    iput-object p2, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    .line 660
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/viber/voip/widget/dslv/h;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/widget/dslv/h;-><init>(Lcom/viber/voip/widget/dslv/g;Lcom/viber/voip/widget/dslv/DragSortListView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 669
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 677
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 728
    if-eqz p2, :cond_2

    .line 729
    check-cast p2, Lcom/viber/voip/widget/dslv/c;

    .line 730
    invoke-virtual {p2, v3}, Lcom/viber/voip/widget/dslv/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 733
    if-eq v1, v0, :cond_1

    .line 736
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p2, v3}, Lcom/viber/voip/widget/dslv/c;->removeViewAt(I)V

    .line 739
    :cond_0
    invoke-virtual {p2, v1}, Lcom/viber/voip/widget/dslv/c;->addView(Landroid/view/View;)V

    .line 756
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 758
    return-object p2

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 743
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 744
    new-instance v0, Lcom/viber/voip/widget/dslv/d;

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/widget/dslv/d;-><init>(Landroid/content/Context;)V

    .line 748
    :goto_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/dslv/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/c;->addView(Landroid/view/View;)V

    move-object p2, v0

    goto :goto_0

    .line 746
    :cond_3
    new-instance v0, Lcom/viber/voip/widget/dslv/c;

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/g;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/widget/dslv/c;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/g;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

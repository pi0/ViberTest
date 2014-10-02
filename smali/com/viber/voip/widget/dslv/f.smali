.class Lcom/viber/voip/widget/dslv/f;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/f;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/f;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/f;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a()V

    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/f;->a()V

    .line 574
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/f;->a()V

    .line 579
    return-void
.end method

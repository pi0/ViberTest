.class Lcom/viber/voip/widget/dslv/h;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field final synthetic b:Lcom/viber/voip/widget/dslv/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/dslv/g;Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/h;->b:Lcom/viber/voip/widget/dslv/g;

    iput-object p2, p0, Lcom/viber/voip/widget/dslv/h;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/h;->b:Lcom/viber/voip/widget/dslv/g;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/g;->notifyDataSetChanged()V

    .line 663
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/h;->b:Lcom/viber/voip/widget/dslv/g;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/g;->notifyDataSetInvalidated()V

    .line 667
    return-void
.end method

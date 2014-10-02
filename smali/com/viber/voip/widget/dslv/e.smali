.class Lcom/viber/voip/widget/dslv/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/dslv/j;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/e;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/e;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

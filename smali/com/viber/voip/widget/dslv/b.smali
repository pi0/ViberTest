.class Lcom/viber/voip/widget/dslv/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/dslv/a;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/a;->a(Lcom/viber/voip/widget/dslv/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/a;->b(Lcom/viber/voip/widget/dslv/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/a;->c(Lcom/viber/voip/widget/dslv/a;)Lcom/viber/voip/widget/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getWidth()I

    move-result v0

    .line 452
    div-int/lit8 v0, v0, 0x5

    .line 453
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/a;->d(Lcom/viber/voip/widget/dslv/a;)F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/a;->e(Lcom/viber/voip/widget/dslv/a;)I

    move-result v1

    neg-int v0, v0

    if-le v1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/a;->c(Lcom/viber/voip/widget/dslv/a;)Lcom/viber/voip/widget/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ZF)Z

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v0, v2}, Lcom/viber/voip/widget/dslv/a;->a(Lcom/viber/voip/widget/dslv/a;Z)Z

    .line 464
    :cond_1
    return v2

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/a;->d(Lcom/viber/voip/widget/dslv/a;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v1}, Lcom/viber/voip/widget/dslv/a;->e(Lcom/viber/voip/widget/dslv/a;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/b;->a:Lcom/viber/voip/widget/dslv/a;

    invoke-static {v0}, Lcom/viber/voip/widget/dslv/a;->c(Lcom/viber/voip/widget/dslv/a;)Lcom/viber/voip/widget/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ZF)Z

    goto :goto_0
.end method

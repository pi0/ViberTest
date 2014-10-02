.class public Lcom/viber/voip/gallery/preview/l;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4
    .parameter

    .prologue
    .line 610
    iput p1, p0, Lcom/viber/voip/gallery/preview/l;->b:I

    .line 612
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/l;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/gallery/preview/l;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 613
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d()[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 598
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 602
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 603
    iget-object v3, p0, Lcom/viber/voip/gallery/preview/l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    iget v0, p0, Lcom/viber/voip/gallery/preview/l;->b:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/l;->a(I)V

    .line 607
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    const v0, 0x7f030016

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/l;->a:Landroid/view/ViewGroup;

    .line 584
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/l;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/l;->a:Landroid/view/ViewGroup;

    .line 590
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 591
    return-void
.end method

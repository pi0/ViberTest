.class public Lcom/viber/voip/gallery/preview/k;
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
    .line 617
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 662
    invoke-static {p0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 4
    .parameter

    .prologue
    .line 656
    iput p1, p0, Lcom/viber/voip/gallery/preview/k;->b:I

    .line 658
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/k;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/gallery/preview/k;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 659
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 637
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 640
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v3

    move v4, v3

    :goto_0
    if-ge v5, v6, :cond_1

    .line 641
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 642
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    move-object v0, v1

    .line 643
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    move-object v0, v1

    .line 644
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 645
    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->e()[[I

    move-result-object v7

    aget-object v7, v7, v4

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 643
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 647
    :cond_0
    const/4 v0, 0x1

    .line 640
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_0

    .line 651
    :cond_1
    iget v0, p0, Lcom/viber/voip/gallery/preview/k;->b:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/k;->a(I)V

    .line 652
    return-void

    :cond_2
    move v0, v4

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    const v0, 0x7f030015

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/k;->a:Landroid/view/ViewGroup;

    .line 626
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/k;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/k;->a:Landroid/view/ViewGroup;

    .line 632
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 633
    return-void
.end method

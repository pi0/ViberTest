.class public Lcom/viber/voip/messages/ui/chathead/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 24
    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 38
    :cond_0
    return-void
.end method

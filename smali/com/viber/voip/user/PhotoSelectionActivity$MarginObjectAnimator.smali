.class Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bottomMargin:I

.field private leftMargin:I

.field private rightMargin:I

.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

.field private topMargin:I

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    .line 566
    return-void
.end method


# virtual methods
.method public getLeft()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->leftMargin:I

    int-to-float v0, v0

    return v0
.end method

.method public setBottom(I)V
    .locals 4
    .parameter

    .prologue
    .line 597
    iput p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->bottomMargin:I

    .line 599
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 600
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->bottomMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 602
    iget v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->bottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 605
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 607
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .parameter

    .prologue
    .line 573
    iput p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->leftMargin:I

    .line 574
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    iget v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 578
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 580
    return-void
.end method

.method public setRight(I)V
    .locals 4
    .parameter

    .prologue
    .line 610
    iput p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->rightMargin:I

    .line 612
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 614
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->rightMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 615
    iget v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->rightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 617
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 619
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 620
    return-void
.end method

.method public setTop(I)V
    .locals 4
    .parameter

    .prologue
    .line 583
    iput p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->topMargin:I

    .line 585
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 586
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-lez v1, :cond_0

    .line 587
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->topMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 589
    :cond_0
    iget v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 592
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 594
    return-void
.end method

.class Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alpha:F

.field private imageView:Landroid/view/View;

.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->imageView:Landroid/view/View;

    .line 536
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->alpha:F

    .line 537
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->alpha:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter

    .prologue
    .line 544
    iput p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->alpha:F

    .line 545
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->imageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_0

    .line 547
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 548
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->imageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 553
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->imageView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 551
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;->imageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

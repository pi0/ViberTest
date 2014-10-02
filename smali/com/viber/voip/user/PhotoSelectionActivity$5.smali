.class Lcom/viber/voip/user/PhotoSelectionActivity$5;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 516
    :goto_0
    new-instance v1, Lcom/viber/voip/user/PhotoSelectionActivity$5$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$5$1;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 522
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 523
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v2}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$600(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 514
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity$5;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/user/PhotoSelectionActivity$AlphaObjectAnimator;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/view/View;)V

    const-string/jumbo v1, "alpha"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

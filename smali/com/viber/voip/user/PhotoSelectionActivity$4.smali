.class Lcom/viber/voip/user/PhotoSelectionActivity$4;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private capturePhotoPos()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 475
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 476
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 477
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 485
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 480
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 481
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 482
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 483
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity$4;->capturePhotoPos()V

    .line 498
    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity$4;->capturePhotoPos()V

    .line 490
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$400(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mIsProfile:Z
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$500(Lcom/viber/voip/user/PhotoSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$400(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$4;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->onClick(Landroid/view/View;)V

    .line 493
    :cond_0
    return-void
.end method

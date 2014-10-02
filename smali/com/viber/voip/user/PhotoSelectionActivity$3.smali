.class Lcom/viber/voip/user/PhotoSelectionActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationPending:Z
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$100(Lcom/viber/voip/user/PhotoSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationPending:Z
    invoke-static {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$102(Lcom/viber/voip/user/PhotoSelectionActivity;Z)Z

    .line 399
    const-string/jumbo v0, "left"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v3, v3, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    .line 401
    const-string/jumbo v1, "top"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v4, v4, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    .line 403
    const-string/jumbo v2, "right"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v5, v5, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p4, v3, v4

    invoke-static {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 405
    const-string/jumbo v3, "bottom"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v6, v6, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aput v6, v4, v5

    const/4 v5, 0x1

    aput p5, v4, v5

    invoke-static {v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v3

    .line 407
    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$300(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$3;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$300(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 413
    :cond_0
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 415
    :cond_1
    return-void
.end method

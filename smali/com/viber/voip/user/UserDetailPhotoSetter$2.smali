.class final Lcom/viber/voip/user/UserDetailPhotoSetter$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field newHeight:I

.field final synthetic val$targetHeight:I

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$v1:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v:Landroid/view/View;

    iput p2, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$targetHeight:I

    iput-object p3, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v1:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 223
    iget v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    iget v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$targetHeight:I

    if-le v0, v1, :cond_0

    .line 224
    iget v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    iget v2, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$targetHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->newHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$2;->val$v1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 230
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

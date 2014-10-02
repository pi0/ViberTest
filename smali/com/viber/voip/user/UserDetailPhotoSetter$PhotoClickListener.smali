.class final Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExpandPhotoOnClick:Z

.field private final mIsProfile:Z

.field private final mPhotoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mPhotoUri:Landroid/net/Uri;

    .line 67
    iput-boolean p3, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mExpandPhotoOnClick:Z

    .line 68
    iput-boolean p4, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mIsProfile:Z

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    const/high16 v5, 0x3f00

    .line 78
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 83
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 84
    aget v1, v0, v4

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 85
    aget v1, v0, v7

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 86
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 87
    aget v0, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 90
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mPhotoUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mIsProfile:Z

    iget-boolean v5, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mExpandPhotoOnClick:Z

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/user/PhotoSelectionActivity;->buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ZZZ)Landroid/content/Intent;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x4d1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$PhotoClickListener;->mExpandPhotoOnClick:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$000()Lcom/viber/voip/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->f()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 102
    :cond_0
    return-void
.end method

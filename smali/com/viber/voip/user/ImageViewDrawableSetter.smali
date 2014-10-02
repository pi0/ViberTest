.class public Lcom/viber/voip/user/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewDrawableSetter"


# instance fields
.field private mCompressed:[B

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 29
    iput-object p1, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    .line 30
    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x7f02006f

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string/jumbo v0, "ImageViewDrawableSetter"

    const-string/jumbo v1, "Cannot load default avatar resource."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getCompressedImage()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mCompressed:[B

    return-object v0
.end method

.method public getTarget()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected setCompressedImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/viber/voip/user/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setTarget(Landroid/widget/ImageView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    .line 53
    iput-object v1, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mCompressed:[B

    .line 54
    iput-object v1, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_0
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/viber/voip/user/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 39
    return-void
.end method

.method public setupContactPhoto(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p2}, Lcom/viber/voip/user/ImageViewDrawableSetter;->setTarget(Landroid/widget/ImageView;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/viber/voip/user/ImageViewDrawableSetter;->setCompressedImage(Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

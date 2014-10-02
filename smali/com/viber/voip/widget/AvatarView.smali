.class public Lcom/viber/voip/widget/AvatarView;
.super Lcom/viber/voip/widget/ah;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/content/res/ColorStateList;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/ah;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/AvatarView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/ah;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/AvatarView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/ah;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/AvatarView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 70
    sget-object v0, Lcom/viber/voip/bb;->AvatarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0208

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 75
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/widget/AvatarView;->n:Ljava/lang/String;

    .line 76
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/viber/voip/widget/AvatarView;->l:Z

    .line 77
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    .line 78
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    .line 79
    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/widget/AvatarView;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/viber/voip/widget/AvatarView;->i:I

    .line 86
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->a:Landroid/graphics/Path;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->b:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->c:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->d:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 98
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;

    .line 99
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x4000

    .line 185
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/viber/voip/widget/AvatarView;->i:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->getCaption()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 194
    const/high16 v0, 0x40a0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v3

    .line 198
    array-length v0, v2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 200
    :goto_0
    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    div-float/2addr v4, v9

    array-length v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    sub-float/2addr v0, v4

    .line 206
    :goto_1
    array-length v4, v2

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    .line 207
    iget v6, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    int-to-float v7, v3

    add-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 208
    iget-object v6, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v7, v3

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 198
    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    div-float/2addr v4, v9

    array-length v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    array-length v5, v2

    int-to-float v5, v5

    rem-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    sub-float/2addr v0, v4

    goto :goto_1

    .line 211
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/widget/AvatarView;->m:Z

    if-eqz v0, :cond_4

    .line 212
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    .line 213
    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 214
    const-string/jumbo v2, " *"

    div-float/2addr v0, v9

    iget-object v3, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/viber/voip/widget/AvatarView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    :cond_4
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/AvatarView;->i:I

    .line 179
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->invalidate()V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/viber/voip/widget/ah;->drawableStateChanged()V

    .line 170
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->isDuplicateParentStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/widget/AvatarView;->b()V

    .line 174
    return-void
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptionTextColor()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/viber/voip/widget/AvatarView;->i:I

    return v0
.end method

.method public getCaptionTextSize()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    return v0
.end method

.method public getCaptionVisibility()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/viber/voip/widget/AvatarView;->l:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 118
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 123
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 126
    iget v2, p0, Lcom/viber/voip/widget/AvatarView;->g:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Lcom/viber/voip/widget/AvatarView;->h:I

    if-ne v1, v2, :cond_3

    .line 128
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 143
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/viber/voip/widget/AvatarView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 146
    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->p:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/viber/voip/widget/AvatarView;->c:Landroid/graphics/Paint;

    const/16 v4, 0xc

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 149
    :try_start_0
    invoke-super {p0, v0}, Lcom/viber/voip/widget/ah;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :goto_2
    iget-boolean v2, p0, Lcom/viber/voip/widget/AvatarView;->l:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    invoke-direct {p0, v0}, Lcom/viber/voip/widget/AvatarView;->a(Landroid/graphics/Canvas;)V

    .line 161
    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 164
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_3
    iput v0, p0, Lcom/viber/voip/widget/AvatarView;->g:I

    .line 140
    iput v1, p0, Lcom/viber/voip/widget/AvatarView;->h:I

    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    .line 137
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/widget/AvatarView;->f:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 150
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/viber/voip/widget/AvatarView;->n:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->invalidate()V

    .line 222
    return-void
.end method

.method public setCaptionTextColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    .line 239
    iput p1, p0, Lcom/viber/voip/widget/AvatarView;->i:I

    .line 240
    return-void
.end method

.method public setCaptionTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    .line 244
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/AvatarView;->i:I

    .line 245
    return-void
.end method

.method public setCaptionTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput p1, p0, Lcom/viber/voip/widget/AvatarView;->j:F

    .line 253
    return-void
.end method

.method public setCaptionVisibility(Z)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/viber/voip/widget/AvatarView;->l:Z

    .line 230
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->invalidate()V

    .line 231
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/widget/ah;->setFrame(IIII)Z

    move-result v0

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p3, p1

    sub-int v3, p4, p2

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    .line 105
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/viber/voip/widget/AvatarView;->p:Landroid/graphics/RectF;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/widget/AvatarView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/viber/voip/widget/AvatarView;->a:Landroid/graphics/Path;

    invoke-static {v1, v2, v3}, Lcom/viber/voip/messages/extras/image/h;->a(FFLandroid/graphics/Path;)V

    .line 110
    :cond_0
    return v0
.end method

.method public setIsMandatory(Z)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/viber/voip/widget/AvatarView;->m:Z

    .line 270
    return-void
.end method

.method public setTextOverlayColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/widget/AvatarView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    invoke-virtual {p0}, Lcom/viber/voip/widget/AvatarView;->invalidate()V

    .line 262
    return-void
.end method

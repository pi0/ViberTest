.class public Lcom/viber/voip/widget/messages/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a()V

    .line 38
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->b:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->c:Landroid/graphics/Path;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->d:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->e:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 81
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 83
    iget v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->g:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->h:I

    if-ne v1, v2, :cond_2

    .line 84
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 97
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->c:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    iget-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->e:Landroid/graphics/Paint;

    const/16 v4, 0xc

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 102
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_2
    iput v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->g:I

    .line 94
    iput v1, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->h:I

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    .line 91
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->f:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/widget/messages/RoundedFrameLayout;->c:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(FFLandroid/graphics/Path;)V

    .line 71
    :cond_0
    return-void
.end method

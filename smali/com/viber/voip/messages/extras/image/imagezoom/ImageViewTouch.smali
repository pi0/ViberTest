.class public Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;
.super Lcom/viber/voip/messages/extras/image/imagezoom/e;
.source "SourceFile"


# instance fields
.field protected a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

.field protected b:Landroid/view/GestureDetector;

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:I

.field protected g:Lcom/viber/voip/messages/extras/image/imagezoom/b;

.field protected h:Lcom/viber/voip/messages/extras/image/imagezoom/d;

.field protected i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

.field protected j:Landroid/view/View$OnClickListener;

.field protected k:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->k:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(FF)F
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 106
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->f:I

    if-ne v0, v1, :cond_1

    .line 107
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->e:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 108
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->e:F

    add-float p2, p1, v0

    .line 115
    :goto_0
    return p2

    .line 110
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->f:I

    goto :goto_0

    .line 114
    :cond_1
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->f:I

    .line 115
    const/high16 p2, 0x3f80

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a()V

    .line 52
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->c:I

    .line 53
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/b;-><init>(Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->g:Lcom/viber/voip/messages/extras/image/imagezoom/b;

    .line 54
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/d;-><init>(Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->h:Lcom/viber/voip/messages/extras/image/imagezoom/d;

    .line 56
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->h:Lcom/viber/voip/messages/extras/image/imagezoom/d;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/l;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/extras/image/imagezoom/m;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->g:Lcom/viber/voip/messages/extras/image/imagezoom/b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    .line 59
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->d:F

    .line 60
    iput v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->f:I

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->g:Lcom/viber/voip/messages/extras/image/imagezoom/b;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto :goto_0
.end method

.method protected a(F)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(F)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->d:F

    .line 103
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->e:F

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    .line 71
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getTranslationY(Landroid/view/View;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 90
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a(Landroid/view/MotionEvent;)Z

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 79
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    .line 87
    :cond_4
    if-nez v1, :cond_5

    .line 88
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Landroid/view/MotionEvent;)V

    :cond_5
    move v0, v2

    .line 90
    goto :goto_0

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 82
    const/high16 v0, 0x4248

    invoke-virtual {p0, v4, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->c(FF)V

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setExternalScrollListener(Lcom/viber/voip/messages/extras/image/imagezoom/c;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    .line 121
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->j:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->k:Landroid/view/View$OnTouchListener;

    .line 39
    return-void
.end method

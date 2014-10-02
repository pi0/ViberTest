.class public Lcom/viber/voip/gallery/animation/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/viber/voip/gallery/animation/y;

.field private d:Landroid/view/VelocityTracker;

.field private e:Lcom/viber/voip/gallery/animation/w;

.field private f:Lcom/viber/voip/gallery/animation/w;

.field private g:Z

.field private h:F

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/gallery/animation/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/gallery/animation/y;Lcom/viber/voip/gallery/animation/w;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    .line 52
    iput v1, p0, Lcom/viber/voip/gallery/animation/s;->i:I

    .line 53
    iput v1, p0, Lcom/viber/voip/gallery/animation/s;->j:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    .line 60
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/s;->b:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    .line 62
    if-eqz p3, :cond_0

    .line 63
    iput-object p3, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    .line 65
    :cond_0
    iput p4, p0, Lcom/viber/voip/gallery/animation/s;->j:I

    .line 66
    iget v0, p0, Lcom/viber/voip/gallery/animation/s;->j:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/viber/voip/gallery/animation/s;->j:I

    if-gez v0, :cond_2

    .line 67
    :cond_1
    const/16 v0, 0x32

    iput v0, p0, Lcom/viber/voip/gallery/animation/s;->j:I

    .line 69
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/s;)Lcom/viber/voip/gallery/animation/y;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->l:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 280
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/gallery/animation/s;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/s;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    iput-boolean v7, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    .line 80
    invoke-static {p1, v4}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    sget-object v1, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->f:Lcom/viber/voip/gallery/animation/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->f:Lcom/viber/voip/gallery/animation/w;

    sget-object v1, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 82
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const-wide/16 v0, 0xfa

    .line 84
    const-string/jumbo v2, "translationY"

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 85
    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    const/high16 v5, 0x3f80

    aput v5, v4, v6

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 87
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 88
    new-instance v0, Lcom/viber/voip/gallery/animation/t;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/gallery/animation/t;-><init>(Lcom/viber/voip/gallery/animation/s;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 103
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 104
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/viber/voip/gallery/animation/s;->l:Z

    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->m:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/s;->m:Landroid/graphics/Rect;

    .line 76
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 111
    :cond_0
    iget v0, p0, Lcom/viber/voip/gallery/animation/s;->i:I

    if-gez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/animation/s;->i:I

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 270
    :goto_0
    return v0

    .line 117
    :pswitch_0
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    if-eqz v0, :cond_2

    move v0, v4

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    invoke-interface {v0, p1}, Lcom/viber/voip/gallery/animation/y;->b(Landroid/view/View;)V

    .line 123
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    .line 124
    invoke-direct {p0, p1, v5}, Lcom/viber/voip/gallery/animation/s;->a(Landroid/view/View;Z)V

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/animation/s;->h:F

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDownY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/gallery/animation/s;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/s;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 128
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/s;->d:Landroid/view/VelocityTracker;

    .line 130
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_1
    move v0, v5

    .line 270
    goto :goto_0

    .line 135
    :pswitch_1
    iput-wide v8, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    .line 136
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/gallery/animation/s;->a(Landroid/view/View;Z)V

    .line 137
    invoke-static {p1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 138
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 139
    iput-boolean v4, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 145
    :pswitch_2
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->l:Z

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->m:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 148
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/gallery/animation/s;->a(Landroid/view/View;Z)V

    .line 151
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/viber/voip/gallery/animation/s;->h:F

    sub-float v3, v0, v3

    .line 152
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deltaY="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " deltaYAbs="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " mSwipeSlop="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/viber/voip/gallery/animation/s;->i:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/s;->a(Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    if-nez v0, :cond_7

    .line 155
    iget v0, p0, Lcom/viber/voip/gallery/animation/s;->i:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_7

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 157
    iput-boolean v5, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    .line 158
    iput-wide v8, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    .line 159
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    invoke-interface {v0, p1}, Lcom/viber/voip/gallery/animation/y;->a(Landroid/view/View;)V

    .line 164
    :cond_7
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    if-eqz v0, :cond_5

    .line 165
    cmpl-float v0, v3, v1

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    sget-object v7, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    if-eq v0, v7, :cond_9

    :cond_8
    cmpg-float v0, v3, v1

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    sget-object v7, Lcom/viber/voip/gallery/animation/w;->b:Lcom/viber/voip/gallery/animation/w;

    if-ne v0, v7, :cond_a

    .line 166
    :cond_9
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 167
    invoke-static {p1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 168
    iput-boolean v4, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    goto/16 :goto_1

    .line 171
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_b

    move v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 172
    invoke-static {p1, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 171
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v6, v0

    sub-float v0, v2, v0

    goto :goto_2

    .line 179
    :pswitch_3
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    if-eqz v0, :cond_17

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/viber/voip/gallery/animation/s;->h:F

    sub-float v8, v0, v3

    .line 182
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/viber/voip/gallery/animation/s;->j:I

    mul-int/2addr v3, v6

    int-to-float v3, v3

    const/high16 v6, 0x42c8

    div-float/2addr v3, v6

    cmpl-float v3, v0, v3

    if-lez v3, :cond_12

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    .line 189
    cmpg-float v0, v8, v1

    if-gez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_3
    move v6, v5

    move v7, v1

    move v12, v0

    move v0, v3

    move v3, v12

    .line 198
    :goto_4
    cmpl-float v9, v0, v2

    if-lez v9, :cond_c

    move v0, v2

    .line 201
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remove="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " dist="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/viber/voip/gallery/animation/s;->a(Ljava/lang/String;)V

    .line 206
    if-nez v6, :cond_d

    .line 207
    iput-boolean v4, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    .line 209
    :cond_d
    iget-object v9, p0, Lcom/viber/voip/gallery/animation/s;->d:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 210
    iget-object v9, p0, Lcom/viber/voip/gallery/animation/s;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "velocity="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/viber/voip/gallery/animation/s;->a(Ljava/lang/String;)V

    .line 212
    iget-object v10, p0, Lcom/viber/voip/gallery/animation/s;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->clear()V

    .line 213
    const/16 v10, 0x1e

    if-le v9, v10, :cond_13

    sub-float v0, v2, v0

    const/high16 v2, 0x437a

    mul-float/2addr v0, v2

    :goto_5
    float-to-int v0, v0

    int-to-long v9, v0

    .line 215
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    sget-object v2, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    if-ne v0, v2, :cond_14

    .line 216
    cmpg-float v0, v8, v1

    if-gtz v0, :cond_e

    move v1, v3

    :cond_e
    move v3, v1

    .line 224
    :cond_f
    :goto_6
    const-string/jumbo v0, "translationY"

    new-array v1, v5, [F

    aput v3, v1, v4

    invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "alpha"

    new-array v2, v5, [F

    aput v7, v2, v4

    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 228
    new-instance v0, Lcom/viber/voip/gallery/animation/u;

    invoke-direct {v0, p0, p1, v6}, Lcom/viber/voip/gallery/animation/u;-><init>(Lcom/viber/voip/gallery/animation/s;Landroid/view/View;Z)V

    invoke-virtual {v2, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 256
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 264
    :cond_10
    :goto_7
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/gallery/animation/s;->a(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 189
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_3

    .line 193
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    move v6, v4

    move v7, v2

    move v3, v1

    .line 196
    goto/16 :goto_4

    .line 213
    :cond_13
    const/high16 v0, 0x4316

    goto :goto_5

    .line 217
    :cond_14
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->e:Lcom/viber/voip/gallery/animation/w;

    sget-object v2, Lcom/viber/voip/gallery/animation/w;->b:Lcom/viber/voip/gallery/animation/w;

    if-ne v0, v2, :cond_15

    .line 218
    cmpl-float v0, v8, v1

    if-gez v0, :cond_f

    move v3, v1

    goto :goto_6

    .line 220
    :cond_15
    cmpl-float v0, v3, v1

    if-lez v0, :cond_16

    sget-object v0, Lcom/viber/voip/gallery/animation/w;->b:Lcom/viber/voip/gallery/animation/w;

    :goto_8
    iput-object v0, p0, Lcom/viber/voip/gallery/animation/s;->f:Lcom/viber/voip/gallery/animation/w;

    goto :goto_6

    :cond_16
    sget-object v0, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    goto :goto_8

    .line 258
    :cond_17
    iput-boolean v4, p0, Lcom/viber/voip/gallery/animation/s;->g:Z

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    .line 260
    iget-wide v0, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_10

    iget-wide v0, p0, Lcom/viber/voip/gallery/animation/s;->k:J

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    if-eqz v0, :cond_10

    .line 261
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/s;->c:Lcom/viber/voip/gallery/animation/y;

    invoke-interface {v0, p1}, Lcom/viber/voip/gallery/animation/y;->c(Landroid/view/View;)V

    goto :goto_7

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

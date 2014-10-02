.class public Lcom/viber/voip/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/View;

.field private c:Lcom/viber/voip/ui/TransparentRectangleView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/f/e;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/f/a;->a:Landroid/view/ViewGroup;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/f/b;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/f/b;-><init>(Lcom/viber/voip/f/a;Lcom/viber/voip/f/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iget-object v0, p0, Lcom/viber/voip/f/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/TransparentRectangleView;

    iput-object v0, p0, Lcom/viber/voip/f/a;->c:Lcom/viber/voip/ui/TransparentRectangleView;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    const v1, 0x7f0701b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/f/a;->d:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/f/a;->e:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    const v1, 0x7f0701b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/f/a;->f:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/viber/voip/f/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/f/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/f/c;-><init>(Lcom/viber/voip/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/f/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/f/a;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/f/a;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/viber/voip/f/a;->g:Landroid/view/View;

    return-object p1
.end method

.method public static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/f/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/f/a;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/f/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/f/a;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/f/a;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/f/a;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private d()V
    .locals 11

    .prologue
    const/high16 v9, 0x4000

    const v8, 0x3f733333

    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v10, 0x0

    .line 134
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 135
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/f/a;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 138
    iget-object v0, p0, Lcom/viber/voip/f/a;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 140
    iget-object v0, p0, Lcom/viber/voip/f/a;->c:Lcom/viber/voip/ui/TransparentRectangleView;

    invoke-virtual {v0, v3, v5}, Lcom/viber/voip/ui/TransparentRectangleView;->a(Landroid/graphics/Rect;Z)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 146
    iget-object v1, p0, Lcom/viber/voip/f/a;->c:Lcom/viber/voip/ui/TransparentRectangleView;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/TransparentRectangleView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 149
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 150
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 151
    iget-object v1, p0, Lcom/viber/voip/f/a;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 154
    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 155
    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 156
    iget-object v1, p0, Lcom/viber/voip/f/a;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 159
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 160
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gt v1, v6, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 161
    :cond_0
    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    .line 162
    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    goto :goto_0

    .line 165
    :cond_1
    const/high16 v6, 0x3f00

    .line 166
    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float/2addr v1, v9

    float-to-int v1, v1

    .line 167
    int-to-float v0, v0

    mul-float/2addr v0, v6

    div-float/2addr v0, v9

    float-to-int v0, v0

    .line 168
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    add-int/2addr v1, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v7, v6, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    .line 173
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    .line 174
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 175
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    .line 177
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 178
    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 179
    const-wide/16 v3, 0x1c2

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 180
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v6, v10, v8, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 182
    const-wide/16 v3, 0x1c2

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 183
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 185
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 187
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 188
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 190
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v0, p0, Lcom/viber/voip/f/a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/viber/voip/f/a;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/f/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/f/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/f/d;-><init>(Lcom/viber/voip/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/viber/voip/f/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/f/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/slidingmenu/lib/a;

.field private c:Lcom/slidingmenu/lib/f;

.field private d:Lcom/slidingmenu/lib/m;

.field private e:Lcom/slidingmenu/lib/k;

.field private f:Lcom/slidingmenu/lib/o;

.field private g:Lcom/slidingmenu/lib/p;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const v6, 0x3ea8f5c3

    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 222
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v4, p0, Lcom/slidingmenu/lib/SlidingMenu;->a:Z

    .line 1042
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->h:Landroid/os/Handler;

    .line 224
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v1, Lcom/slidingmenu/lib/f;

    invoke-direct {v1, p1}, Lcom/slidingmenu/lib/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    .line 226
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    new-instance v1, Lcom/slidingmenu/lib/a;

    invoke-direct {v1, p1}, Lcom/slidingmenu/lib/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    .line 229
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/a;->setCustomViewBehind(Lcom/slidingmenu/lib/f;)V

    .line 232
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/f;->setCustomViewAbove(Lcom/slidingmenu/lib/a;)V

    .line 233
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    new-instance v1, Lcom/slidingmenu/lib/g;

    invoke-direct {v1, p0}, Lcom/slidingmenu/lib/g;-><init>(Lcom/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/a;->setOnPageChangeListener(Lcom/slidingmenu/lib/d;)V

    .line 251
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    new-instance v1, Lcom/slidingmenu/lib/h;

    invoke-direct {v1, p0}, Lcom/slidingmenu/lib/h;-><init>(Lcom/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/a;->setDragListener(Lcom/slidingmenu/lib/p;)V

    .line 262
    sget-object v0, Lcom/viber/voip/bb;->SlidingMenu:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 265
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 266
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 267
    if-eq v1, v3, :cond_0

    .line 268
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(I)V

    .line 272
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 273
    if-eq v1, v3, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 278
    :goto_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 279
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 280
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 281
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 283
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 284
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 285
    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 276
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 287
    :cond_2
    if-eq v1, v3, :cond_5

    .line 288
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 293
    :goto_2
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 294
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V

    .line 295
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 296
    if-eq v1, v3, :cond_3

    .line 297
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 299
    :cond_3
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 300
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 301
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 302
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 303
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 304
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 305
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 306
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSelectorEnabled(Z)V

    .line 307
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 308
    if-eq v1, v3, :cond_4

    .line 309
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSelectorDrawable(I)V

    .line 310
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-void

    .line 289
    :cond_5
    if-eq v2, v3, :cond_6

    .line 290
    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    goto :goto_2

    .line 292
    :cond_6
    invoke-virtual {p0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/m;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->d:Lcom/slidingmenu/lib/m;

    return-object v0
.end method

.method static synthetic b(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/k;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->e:Lcom/slidingmenu/lib/k;

    return-object v0
.end method

.method static synthetic c(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/o;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->f:Lcom/slidingmenu/lib/o;

    return-object v0
.end method

.method static synthetic d(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/p;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->g:Lcom/slidingmenu/lib/p;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V

    .line 513
    return-void
.end method

.method public a(F)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1046
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    .line 1049
    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 1051
    :cond_2
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->h:Landroid/os/Handler;

    new-instance v2, Lcom/slidingmenu/lib/i;

    invoke-direct {v2, p0, v0}, Lcom/slidingmenu/lib/i;-><init>(Lcom/slidingmenu/lib/SlidingMenu;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1048
    goto :goto_1
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;IZ)V

    .line 321
    return-void
.end method

.method public a(Landroid/app/Activity;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 331
    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This SlidingMenu appears to already be attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 340
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    packed-switch p2, :pswitch_data_0

    .line 366
    :cond_2
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iput-boolean v3, p0, Lcom/slidingmenu/lib/SlidingMenu;->a:Z

    .line 345
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 346
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 348
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 351
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 354
    :pswitch_1
    iput-boolean p3, p0, Lcom/slidingmenu/lib/SlidingMenu;->a:Z

    .line 356
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 357
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 359
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 362
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->a(Landroid/view/View;)V

    .line 896
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/a;->a(IZ)V

    .line 522
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->b(Z)V

    .line 530
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/a;->a(IZ)V

    .line 540
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 547
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/a;->a(IZ)V

    .line 556
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->d(Z)V

    .line 563
    return-void
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1031
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1032
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 1033
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 1034
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1035
    iget-boolean v4, p0, Lcom/slidingmenu/lib/SlidingMenu;->a:Z

    if-nez v4, :cond_0

    .line 1036
    const-string/jumbo v4, "SlidingMenu"

    const-string/jumbo v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    .line 1039
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getMode()I

    move-result v0

    .line 598
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public getTouchmodeMarginThreshold()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getMarginThreshold()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 602
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/f;->getMode()I

    move-result v1

    .line 603
    if-eq v1, v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/a;->getCurrentItem()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 1020
    check-cast p1, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    .line 1021
    invoke-virtual {p1}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1022
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {p1}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/a;->setCurrentItem(I)V

    .line 1023
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1010
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1011
    new-instance v1, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/a;->getCurrentItem()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 1012
    return-object v1
.end method

.method public setAboveOffset(I)V
    .locals 1
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->setAboveOffset(I)V

    .line 647
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 1
    .parameter

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 656
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setAboveOffset(I)V

    .line 657
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/slidingmenu/lib/j;)V
    .locals 1
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setCanvasTransformer(Lcom/slidingmenu/lib/j;)V

    .line 737
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setWidthOffset(I)V

    .line 627
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 1
    .parameter

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 637
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 638
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .parameter

    .prologue
    .line 725
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setScrollScale(F)V

    .line 728
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 5
    .parameter

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 670
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 671
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Point;

    aput-object v4, v2, v3

    .line 672
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 673
    const-string/jumbo v4, "getSize"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 674
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget v0, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 680
    return-void

    .line 676
    :catch_0
    move-exception v1

    .line 677
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 1
    .parameter

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 690
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 691
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .parameter

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 376
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->setContent(Landroid/view/View;)V

    .line 385
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 386
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setFadeDegree(F)V

    .line 851
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setFadeEnabled(Z)V

    .line 841
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setContent(Landroid/view/View;)V

    .line 413
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 475
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setMode(I)V

    .line 479
    return-void
.end method

.method public setOnCloseListener(Lcom/slidingmenu/lib/k;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/slidingmenu/lib/SlidingMenu;->e:Lcom/slidingmenu/lib/k;

    .line 932
    return-void
.end method

.method public setOnClosedListener(Lcom/slidingmenu/lib/l;)V
    .locals 1
    .parameter

    .prologue
    .line 949
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->setOnClosedListener(Lcom/slidingmenu/lib/l;)V

    .line 950
    return-void
.end method

.method public setOnOpenListener(Lcom/slidingmenu/lib/m;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/slidingmenu/lib/SlidingMenu;->d:Lcom/slidingmenu/lib/m;

    .line 922
    return-void
.end method

.method public setOnOpenedListener(Lcom/slidingmenu/lib/n;)V
    .locals 1
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->setOnOpenedListener(Lcom/slidingmenu/lib/n;)V

    .line 941
    return-void
.end method

.method public setOnPageSelectedListener(Lcom/slidingmenu/lib/o;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/slidingmenu/lib/SlidingMenu;->f:Lcom/slidingmenu/lib/o;

    .line 964
    return-void
.end method

.method public setOnStartDragListener(Lcom/slidingmenu/lib/p;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/slidingmenu/lib/SlidingMenu;->g:Lcom/slidingmenu/lib/p;

    .line 960
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .parameter

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 431
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setSecondaryContent(Landroid/view/View;)V

    .line 441
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .parameter

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 813
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setSelectedView(Landroid/view/View;)V

    .line 869
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 887
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/f;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 878
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 859
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/f;->setSelectorEnabled(Z)V

    .line 860
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .parameter

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .parameter

    .prologue
    .line 831
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setShadowWidth(I)V

    .line 832
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .parameter

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 823
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->setSlidingEnabled(Z)V

    .line 459
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 495
    if-eqz p1, :cond_0

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/a;->setCustomViewBehind(Lcom/slidingmenu/lib/f;)V

    .line 498
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/a;->setCurrentItem(I)V

    .line 506
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/a;->setCurrentItem(I)V

    .line 503
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/a;->setCustomViewBehind(Lcom/slidingmenu/lib/f;)V

    .line 504
    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .parameter

    .prologue
    .line 756
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/a;->setTouchMode(I)V

    .line 762
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .parameter

    .prologue
    .line 772
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setTouchMode(I)V

    .line 778
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->c:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->setMarginThreshold(I)V

    .line 716
    return-void
.end method

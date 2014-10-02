.class public Lcom/viber/voip/messages/ui/ExpandablePanelLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field private static a:I

.field private static c:I

.field private static d:I


# instance fields
.field private b:Landroid/graphics/Rect;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Lcom/viber/voip/messages/ui/bi;

.field private l:Lcom/viber/voip/messages/ui/bj;

.field private m:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/viber/voip/messages/ui/bl;

.field private o:Landroid/view/View;

.field private p:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 54
    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b:Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    .line 56
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    .line 57
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    .line 60
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->p:F

    .line 91
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b:Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    .line 56
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    .line 57
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    .line 60
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->p:F

    .line 86
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b:Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    .line 56
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    .line 57
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    .line 60
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->p:F

    .line 77
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c()V

    .line 78
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->requestLayout()V

    .line 235
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->n:Lcom/viber/voip/messages/ui/bl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->n:Lcom/viber/voip/messages/ui/bl;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bl;->g()V

    .line 207
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-ne v0, v1, :cond_0

    .line 208
    :cond_2
    invoke-direct {p0, v2}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c(I)V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->n:Lcom/viber/voip/messages/ui/bl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->n:Lcom/viber/voip/messages/ui/bl;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bl;->f()V

    .line 216
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 217
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    if-eq v2, v0, :cond_4

    .line 218
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e()V

    goto :goto_0

    .line 220
    :cond_4
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 95
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    .line 96
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a:I

    .line 98
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "keyboard_height_portrait"

    sget v2, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 100
    const-string/jumbo v0, "ExpandablePanelLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init mSoftInputHeightPortrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    if-nez v0, :cond_1

    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "keyboard_height_landscape"

    sget v2, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    .line 105
    const-string/jumbo v0, "ExpandablePanelLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init mSoftInputHeightPortrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    return-void

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 296
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v0, -0x1

    if-ne v0, p1, :cond_8

    .line 300
    iget p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->m:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 306
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v1, p1, v0}, Lcom/viber/voip/messages/ui/bi;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->m:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_2

    if-eq p0, v0, :cond_4

    .line 311
    :cond_2
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 312
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 314
    :cond_3
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->addView(Landroid/view/View;)V

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->o:Landroid/view/View;

    if-eq v1, v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->o:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->o:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_5
    iput-object v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->o:Landroid/view/View;

    .line 323
    if-eqz v1, :cond_6

    .line 324
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_6
    const/4 v0, 0x1

    iget v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-ne v0, v2, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/AnimationUtils;->makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    :cond_7
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 332
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setVisibility(I)V

    .line 333
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d()V

    goto :goto_0

    .line 302
    :cond_8
    iput p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    goto :goto_1
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 119
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->l:Lcom/viber/voip/messages/ui/bj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    if-eqz v1, :cond_1

    .line 120
    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/bi;->a(I)I

    move-result v0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->l:Lcom/viber/voip/messages/ui/bj;

    iget v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->o:Landroid/view/View;

    invoke-interface {v1, v2, v0, v3}, Lcom/viber/voip/messages/ui/bj;->a(IILandroid/view/View;)V

    .line 123
    :cond_1
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setVisibility(I)V

    .line 342
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d()V

    .line 343
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 265
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e()V

    .line 266
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/bi;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    .line 249
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    if-nez v0, :cond_1

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->invalidate()V

    .line 252
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->requestLayout()V

    .line 256
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 257
    return-void

    .line 253
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/bi;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 2
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/bi;->a(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 130
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->m:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 357
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->requestLayout()V

    .line 358
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 137
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 149
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 150
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v4, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    .line 152
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 153
    iget-boolean v3, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v4, "Amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const/16 v3, 0x4e

    if-ne v0, v3, :cond_7

    .line 155
    add-int/lit8 v0, v0, -0x4e

    .line 163
    :cond_0
    :goto_1
    iget v3, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    .line 165
    iget v4, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->j:I

    if-le v0, v4, :cond_9

    .line 166
    iput v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    .line 175
    :goto_2
    iget v4, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->j:I

    if-eq v3, v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    .line 177
    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->j:I

    .line 179
    iget v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    if-ne v5, v2, :cond_4

    .line 180
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    if-eqz v2, :cond_c

    sget v2, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    if-eq v2, v0, :cond_c

    .line 181
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    .line 182
    sget v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    if-eq v1, v0, :cond_3

    .line 183
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "keyboard_height_portrait"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 185
    :cond_3
    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 195
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    if-eqz v0, :cond_5

    .line 196
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 197
    :goto_4
    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a(II)V

    .line 198
    const-string/jumbo v1, "SOFTINPUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 150
    goto/16 :goto_0

    .line 156
    :cond_7
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_8

    .line 157
    add-int/lit8 v0, v0, -0x5a

    goto :goto_1

    .line 159
    :cond_8
    add-int/lit8 v0, v0, -0x4e

    goto :goto_1

    .line 167
    :cond_9
    iget v4, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->j:I

    if-ne v0, v4, :cond_a

    if-eqz v0, :cond_a

    .line 168
    iput v5, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    goto :goto_2

    .line 169
    :cond_a
    iget v4, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->j:I

    if-ge v0, v4, :cond_b

    .line 170
    const/4 v4, 0x3

    iput v4, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    goto :goto_2

    .line 172
    :cond_b
    iput v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    goto/16 :goto_2

    .line 186
    :cond_c
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    if-nez v2, :cond_4

    sget v2, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    if-eq v2, v0, :cond_4

    .line 187
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    .line 188
    sget v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    if-eq v1, v0, :cond_d

    .line 189
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "keyboard_height_landscape"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 191
    :cond_d
    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    goto :goto_3

    .line 196
    :cond_e
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 364
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 365
    :goto_0
    if-eqz v0, :cond_5

    .line 366
    sget v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 367
    const-string/jumbo v1, "ExpandablePanelLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMeasure height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is too small! use default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a:I

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    :cond_1
    :goto_1
    const-string/jumbo v1, "ExpandablePanelLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMeasure height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " isPortrait="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 379
    const/4 v0, 0x1

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-ne v4, v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->p:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->f:I

    if-nez v0, :cond_3

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->p:F

    .line 381
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->m:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 382
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c(I)V

    .line 383
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 385
    :cond_3
    return-void

    .line 364
    :cond_4
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    goto/16 :goto_0

    .line 371
    :cond_5
    sget v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    if-nez v1, :cond_1

    sget v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    if-nez v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    goto :goto_1
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 392
    check-cast p1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;

    .line 393
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 395
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-eq v2, v0, :cond_0

    .line 396
    invoke-static {p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->a(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    .line 399
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->b(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    .line 400
    invoke-static {p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    .line 401
    invoke-static {p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    .line 402
    const/4 v0, 0x3

    iget v1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    if-ne v2, v0, :cond_2

    .line 403
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c(I)V

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->requestLayout()V

    .line 406
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 413
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->g:I

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->a(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I

    .line 414
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->h:I

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->b(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I

    .line 415
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->c:I

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I

    .line 416
    sget v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->d:I

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I

    .line 417
    return-object v1
.end method

.method public setAdapter(Lcom/viber/voip/messages/ui/bi;)V
    .locals 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->k:Lcom/viber/voip/messages/ui/bi;

    .line 239
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-interface {p1}, Lcom/viber/voip/messages/ui/bi;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->m:Landroid/support/v4/util/SparseArrayCompat;

    .line 240
    return-void
.end method

.method public setOnSoftKeyboardVisibilityChangeListener(Lcom/viber/voip/messages/ui/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->n:Lcom/viber/voip/messages/ui/bl;

    .line 116
    return-void
.end method

.method public setStateListener(Lcom/viber/voip/messages/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->l:Lcom/viber/voip/messages/ui/bj;

    .line 112
    return-void
.end method

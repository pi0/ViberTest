.class Lcom/viber/voip/contacts/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1361
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/ui/aa;->b:I

    .line 1378
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/aa;->g:Landroid/content/Context;

    .line 1379
    iput-object p2, p0, Lcom/viber/voip/contacts/ui/aa;->h:Landroid/view/ViewGroup;

    .line 1380
    iput-object p3, p0, Lcom/viber/voip/contacts/ui/aa;->i:Landroid/view/ViewGroup;

    .line 1382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/aa;->a:I

    .line 1383
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/aa;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1349
    iput p1, p0, Lcom/viber/voip/contacts/ui/aa;->b:I

    return p1
.end method

.method private a(FFIIFFLcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aa;->c:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 1516
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/aa;->d:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, p3

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 1517
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/aa;->d:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, p4

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 1518
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/aa;->d:Landroid/view/View;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p5, v5, v6

    const/4 v6, 0x1

    aput p6, v5, v6

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    .line 1519
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/aa;->d:Landroid/view/View;

    const-string/jumbo v5, "scaleY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p5, v6, v7

    const/4 v7, 0x1

    aput p6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 1520
    new-instance v5, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 1521
    invoke-virtual {v5, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 1522
    const-wide/16 v0, 0x1f4

    invoke-virtual {v5, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1523
    if-eqz p7, :cond_0

    .line 1524
    invoke-virtual {v5, p7}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1526
    :cond_0
    invoke-virtual {v5}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1527
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1386
    iget v1, p0, Lcom/viber/voip/contacts/ui/aa;->b:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/viber/voip/contacts/ui/aa;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/aa;->b()V

    .line 1390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/aa;)Z
    .locals 1
    .parameter

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/aa;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aa;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 1478
    const/4 v0, 0x4

    iput v0, p0, Lcom/viber/voip/contacts/ui/aa;->b:I

    .line 1480
    const/4 v2, 0x0

    const v5, 0x3fb33333

    new-instance v7, Lcom/viber/voip/contacts/ui/ab;

    invoke-direct {v7, p0}, Lcom/viber/voip/contacts/ui/ab;-><init>(Lcom/viber/voip/contacts/ui/aa;)V

    move-object v0, p0

    move v4, v3

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/contacts/ui/aa;->a(FFIIFFLcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1512
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aa;->h:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aa;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aa;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/contacts/ui/aa;)I
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget v0, p0, Lcom/viber/voip/contacts/ui/aa;->e:I

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/contacts/ui/aa;)I
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget v0, p0, Lcom/viber/voip/contacts/ui/aa;->f:I

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aa;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

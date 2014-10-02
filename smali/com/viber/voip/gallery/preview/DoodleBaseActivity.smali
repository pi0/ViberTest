.class public abstract Lcom/viber/voip/gallery/preview/DoodleBaseActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# static fields
.field private static final r:[[I

.field private static final s:[Ljava/lang/Integer;


# instance fields
.field protected a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Landroid/widget/EditText;

.field protected g:Landroid/view/View;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Landroid/view/View;

.field protected l:Landroid/view/View;

.field protected m:Landroid/graphics/drawable/GradientDrawable;

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Lcom/viber/voip/gallery/preview/j;

.field private t:Lcom/viber/voip/gallery/preview/i;

.field private u:Lcom/viber/voip/gallery/preview/l;

.field private v:Lcom/viber/voip/gallery/preview/k;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->r:[[I

    .line 66
    new-array v0, v5, [Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->s:[Ljava/lang/Integer;

    return-void

    .line 63
    :array_0
    .array-data 0x4
        0x2at 0x23t 0xd2t 0xfft
        0x3bt 0xaft 0xfct 0xfft
        0x0t 0xf2t 0xfet 0xfft
        0x49t 0xaft 0x40t 0xfft
        0xeft 0xadt 0x0t 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x8dt 0x8dt 0x8dt 0xfft
        0xdft 0x7et 0xd0t 0xfft
        0x99t 0x4ft 0x77t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 87
    const v0, -0x88b067

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    .line 89
    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->o:I

    .line 90
    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->p:I

    .line 91
    sget-object v0, Lcom/viber/voip/gallery/preview/j;->b:Lcom/viber/voip/gallery/preview/j;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 731
    return-void
.end method

.method protected static a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 486
    return-object p0
.end method

.method private a(IZ)V
    .locals 6
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 396
    iput p1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 400
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    move-object v2, v1

    .line 418
    :goto_0
    if-nez v2, :cond_0

    .line 445
    :goto_1
    return-void

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 403
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    .line 404
    const-string/jumbo v0, "brush_menu"

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 408
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    .line 409
    const-string/jumbo v0, "eraser_menu"

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 413
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    .line 414
    const-string/jumbo v0, "color_menu"

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->h()V

    .line 422
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0700cb

    invoke-virtual {v3, v4, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 424
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    if-eqz p2, :cond_2

    .line 427
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 429
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/gallery/preview/h;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/preview/h;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)V

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    goto :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x7f07024e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 500
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    .line 501
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 503
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move v2, v3

    :goto_1
    move-object v0, v1

    .line 504
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    move-object v0, v1

    .line 505
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 507
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 508
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/ViewGroup;)V

    .line 504
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 500
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 513
    :cond_2
    return-void
.end method

.method static a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-static {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/ViewGroup;)V

    .line 492
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 493
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)Lcom/viber/voip/gallery/preview/i;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)Lcom/viber/voip/gallery/preview/l;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)Lcom/viber/voip/gallery/preview/k;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->s:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic e()[[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->r:[[I

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 143
    const-string/jumbo v0, "brush_menu"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/i;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    .line 144
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/viber/voip/gallery/preview/i;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/i;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    iget v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->o:I

    iput v2, v0, Lcom/viber/voip/gallery/preview/i;->c:I

    .line 148
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    iput-object v2, v0, Lcom/viber/voip/gallery/preview/i;->d:Lcom/viber/voip/gallery/preview/j;

    .line 150
    const-string/jumbo v0, "eraser_menu"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/l;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    .line 151
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/viber/voip/gallery/preview/l;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/l;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    iget v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->p:I

    iput v2, v0, Lcom/viber/voip/gallery/preview/l;->b:I

    .line 156
    const-string/jumbo v0, "color_menu"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/k;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    .line 157
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Lcom/viber/voip/gallery/preview/k;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    iput v1, v0, Lcom/viber/voip/gallery/preview/k;->b:I

    .line 161
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const v2, 0x7f070250

    .line 164
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    .line 165
    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    .line 166
    const v0, 0x7f07024b

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b:Landroid/view/View;

    .line 167
    const v0, 0x7f0700cb

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    .line 168
    const v0, 0x7f07024c

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->e:Landroid/view/View;

    .line 169
    const v0, 0x7f07024d

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->f:Landroid/widget/EditText;

    .line 170
    const v0, 0x7f07024e

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->g:Landroid/view/View;

    .line 171
    const v0, 0x7f07024f

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->h:Landroid/view/View;

    .line 172
    invoke-virtual {p0, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->i:Landroid/view/View;

    .line 174
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 177
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->m:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->l:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 182
    const v0, 0x7f070252

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->j:Landroid/view/View;

    .line 183
    const v0, 0x7f070251

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->k:Landroid/view/View;

    .line 184
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 463
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 465
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 468
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 471
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/k;->a(Landroid/content/Context;)I

    move-result v0

    .line 473
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x7f07024e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 300
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 303
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 189
    const v1, 0x7f070081

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 190
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 192
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 358
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    if-eq v0, v1, :cond_1

    .line 359
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 360
    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 361
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 362
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 363
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 364
    new-instance v2, Lcom/viber/voip/gallery/preview/g;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/voip/gallery/preview/g;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 388
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    if-eqz p1, :cond_0

    .line 390
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 311
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 319
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    invoke-static {v0, v6}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 320
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->e:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->e:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 331
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 333
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 337
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 338
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 340
    new-instance v0, Lcom/viber/voip/gallery/preview/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/f;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)V

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 350
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method protected final b(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 197
    const v1, 0x7f070081

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 198
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 200
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c()V

    .line 222
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->finish()V

    .line 223
    return-void
.end method

.method public onBackgroundChangeClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c()V

    .line 231
    return-void
.end method

.method public onBrushSelected(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/j;->valueOf(Ljava/lang/String;)Lcom/viber/voip/gallery/preview/j;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    .line 282
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/i;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 283
    return-void
.end method

.method public onBrushSelectorClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 234
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 236
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    iget v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->o:I

    iput v2, v1, Lcom/viber/voip/gallery/preview/i;->c:I

    .line 237
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    iput-object v2, v1, Lcom/viber/voip/gallery/preview/i;->d:Lcom/viber/voip/gallery/preview/j;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/viber/voip/gallery/preview/c;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/gallery/preview/c;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Ljava/lang/Runnable;)V

    .line 245
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBrushSizeSelected(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->o:I

    .line 289
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->t:Lcom/viber/voip/gallery/preview/i;

    invoke-virtual {v1, v0}, Lcom/viber/voip/gallery/preview/i;->a(I)V

    .line 290
    return-void
.end method

.method public onClearClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c()V

    .line 227
    return-void
.end method

.method public onColorSelected(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c()V

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    .line 276
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->m:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 278
    return-void
.end method

.method public onColorSelectorClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 261
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 263
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->v:Lcom/viber/voip/gallery/preview/k;

    iget v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    iput v2, v1, Lcom/viber/voip/gallery/preview/k;->b:I

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/viber/voip/gallery/preview/e;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/gallery/preview/e;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Ljava/lang/Runnable;)V

    .line 271
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c()V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f030095

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->setContentView(I)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string/jumbo v0, "doodle_saved_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;

    .line 101
    iget v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->a:I

    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    .line 102
    iget v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->b:I

    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->o:I

    .line 103
    iget v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->c:I

    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->p:I

    .line 104
    iget v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->e:I

    iput v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 105
    iget-object v0, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->d:Lcom/viber/voip/gallery/preview/j;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->g()V

    .line 110
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->f()V

    .line 111
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(IZ)V

    .line 112
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/gallery/preview/b;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/preview/b;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)V

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 121
    :cond_1
    return-void
.end method

.method public onEraserSelectorClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    .line 250
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    iget v2, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->p:I

    iput v2, v1, Lcom/viber/voip/gallery/preview/l;->b:I

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/viber/voip/gallery/preview/d;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/gallery/preview/d;-><init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Ljava/lang/Runnable;)V

    .line 258
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEraserSizeSelected(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 295
    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->p:I

    .line 296
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->u:Lcom/viber/voip/gallery/preview/l;

    invoke-virtual {v1, v0}, Lcom/viber/voip/gallery/preview/l;->a(I)V

    .line 297
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 449
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onBackPressed()V

    .line 451
    const/4 v0, 0x1

    .line 453
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;-><init>()V

    .line 133
    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->n:I

    iput v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->a:I

    .line 134
    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->o:I

    iput v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->b:I

    .line 135
    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->p:I

    iput v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->c:I

    .line 136
    iget v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->w:I

    iput v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->e:I

    .line 137
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->q:Lcom/viber/voip/gallery/preview/j;

    iput-object v1, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->d:Lcom/viber/voip/gallery/preview/j;

    .line 138
    const-string/jumbo v1, "doodle_saved_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    return-void
.end method

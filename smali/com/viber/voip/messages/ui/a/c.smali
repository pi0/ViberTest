.class public Lcom/viber/voip/messages/ui/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/ListView;

.field private final d:Lcom/viber/voip/messages/adapters/q;

.field private final e:Lcom/viber/voip/messages/ui/DottedScrollbar;

.field private final f:Lcom/viber/voip/messages/ui/a/h;

.field private g:Lcom/viber/voip/messages/ui/a/b;

.field private h:Landroid/view/animation/Animation;

.field private i:Lcom/viber/voip/messages/ui/bp;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/viber/voip/messages/ui/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/a/h;ILcom/viber/voip/messages/adapters/q;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v0, -0x8000

    const/4 v4, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/viber/voip/messages/ui/a/c;->k:I

    .line 59
    iput v0, p0, Lcom/viber/voip/messages/ui/a/c;->l:I

    .line 67
    iput-object p2, p0, Lcom/viber/voip/messages/ui/a/c;->f:Lcom/viber/voip/messages/ui/a/h;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/a/c;->o:I

    .line 71
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->h:Landroid/view/animation/Animation;

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->h:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/viber/voip/messages/ui/a/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/a/d;-><init>(Lcom/viber/voip/messages/ui/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    iput-object p4, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    .line 92
    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->b:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->b:Landroid/view/View;

    const v1, 0x7f0702d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->b:Landroid/view/View;

    const v1, 0x7f0702d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/DottedScrollbar;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->e:Lcom/viber/voip/messages/ui/DottedScrollbar;

    .line 97
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->m:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->m:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/viber/voip/messages/ui/a/c;->o:I

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->n:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v0, Lcom/viber/voip/messages/ui/a/e;

    invoke-direct {v0, p0, p2}, Lcom/viber/voip/messages/ui/a/e;-><init>(Lcom/viber/voip/messages/ui/a/c;Lcom/viber/voip/messages/ui/a/h;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->i:Lcom/viber/voip/messages/ui/bp;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/viber/voip/messages/ui/a/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/a/f;-><init>(Lcom/viber/voip/messages/ui/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->i:Lcom/viber/voip/messages/ui/bp;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    sget-object v0, Lcom/viber/voip/messages/ui/a/h;->b:Lcom/viber/voip/messages/ui/a/h;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/ui/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a015e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 163
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 165
    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 167
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v3, p3, v0

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->e:Lcom/viber/voip/messages/ui/DottedScrollbar;

    invoke-virtual {v1, v5}, Lcom/viber/voip/messages/ui/DottedScrollbar;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->e:Lcom/viber/voip/messages/ui/DottedScrollbar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/DottedScrollbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/a/c;->a(I)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->e:Lcom/viber/voip/messages/ui/DottedScrollbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/DottedScrollbar;->setVisibility(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/a/h;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/viber/voip/messages/adapters/q;

    invoke-direct {v0, p1, p6, p3, p4}, Lcom/viber/voip/messages/adapters/q;-><init>(Landroid/content/Context;ILcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;)V

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/viber/voip/messages/ui/a/c;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/a/h;ILcom/viber/voip/messages/adapters/q;)V

    .line 55
    iput p6, p0, Lcom/viber/voip/messages/ui/a/c;->j:I

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/a/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/viber/voip/messages/ui/a/c;->k:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/adapters/q;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v0, v1, v0

    .line 272
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v1, v3, p1}, Lcom/viber/voip/messages/adapters/q;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 275
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v2}, Lcom/viber/voip/messages/adapters/q;->getCount()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/viber/voip/messages/adapters/q;->a(II)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 278
    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 280
    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x3

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->e:Lcom/viber/voip/messages/ui/DottedScrollbar;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/DottedScrollbar;->setCurrentPosition(I)V

    .line 286
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/a/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/viber/voip/messages/ui/a/c;->l:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/ui/a/b;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->g:Lcom/viber/voip/messages/ui/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/a/c;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/viber/voip/messages/ui/a/c;->k:I

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/a/c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/a/c;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/a/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/viber/voip/messages/ui/a/c;->j:I

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/a/c;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/a/c;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/viber/voip/messages/ui/a/c;->l:I

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/a/c;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/viber/voip/messages/ui/a/c;->o:I

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/a/c;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/viber/voip/messages/ui/a/c;->j:I

    return v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/a/c;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->h:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->b:Landroid/view/View;

    return-object v0
.end method

.method public a(ILcom/viber/voip/messages/adapters/u;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x1

    new-instance v3, Lcom/viber/voip/messages/ui/a/g;

    invoke-direct {v3, p0, p1, p2}, Lcom/viber/voip/messages/ui/a/g;-><init>(Lcom/viber/voip/messages/ui/a/c;ILcom/viber/voip/messages/adapters/u;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/viber/voip/messages/adapters/q;->a(IIZLcom/viber/voip/messages/adapters/u;)V

    .line 209
    return-void
.end method

.method public a(Lcom/viber/voip/messages/ui/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viber/voip/messages/ui/a/c;->g:Lcom/viber/voip/messages/ui/a/b;

    .line 260
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 310
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;)V
    .locals 5
    .parameter

    .prologue
    .line 314
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/ui/a/c;->j:I

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    iget v1, p0, Lcom/viber/voip/messages/ui/a/c;->j:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/adapters/q;->a(IIZLcom/viber/voip/messages/adapters/u;)V

    .line 317
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->notifyDataSetChanged()V

    .line 293
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->notifyDataSetChanged()V

    .line 300
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->d()Z

    .line 305
    return-void
.end method

.method public e()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 250
    iget-object v8, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/c;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v7, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 252
    sget-object v0, Lcom/viber/voip/messages/ui/a/h;->b:Lcom/viber/voip/messages/ui/a/h;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/c;->f:Lcom/viber/voip/messages/ui/a/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, v7}, Lcom/viber/voip/messages/ui/a/c;->a(I)V

    .line 255
    :cond_0
    return-void
.end method

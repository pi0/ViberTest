.class public Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;
.super Lcom/viber/voip/ui/ap;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/viber/voip/messages/ui/popup/view/f;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ap;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->h:Z

    .line 38
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->j:F

    .line 173
    new-instance v0, Lcom/viber/voip/messages/ui/popup/view/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/view/d;-><init>(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 53
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d()V

    .line 54
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->e()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->h:Z

    .line 38
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->j:F

    .line 173
    new-instance v0, Lcom/viber/voip/messages/ui/popup/view/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/view/d;-><init>(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 47
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d()V

    .line 48
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->e()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->j:F

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->i:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->h:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b(I)V

    .line 130
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ap;->setCurrentItem(I)V

    .line 131
    return-void
.end method

.method private a(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 145
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    if-ge p1, v0, :cond_2

    .line 147
    add-int/lit8 v0, p1, 0x1

    move v2, v0

    move v0, p1

    move p1, v2

    .line 152
    :goto_0
    iget v1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->e:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->f:I

    if-eq v1, v0, :cond_1

    .line 153
    :cond_0
    iput p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->e:I

    .line 154
    iput v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->f:I

    .line 155
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->e:I

    iget v1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->f:I

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(II)V

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 149
    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 150
    goto :goto_0

    .line 158
    :cond_3
    iput p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Z)V

    goto :goto_1
.end method

.method private a(IFI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f07027f

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 234
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/popup/a/j;

    .line 235
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/popup/a/j;->a()Lcom/viber/voip/messages/ui/popup/a/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/ui/popup/a/l;->a(I)I

    move-result v1

    .line 238
    if-eqz p3, :cond_1

    iget v3, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->i:I

    if-le p3, v3, :cond_1

    .line 239
    int-to-float v1, v1

    iget v3, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->j:F

    iget v4, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->i:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    int-to-float v3, p3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->i:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 244
    :goto_1
    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 242
    :cond_1
    int-to-float v1, v1

    iget v3, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->j:F

    iget v4, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->i:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    goto :goto_1

    .line 247
    :cond_2
    return-void
.end method

.method private a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/messages/ui/popup/view/f;->a(II)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 168
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/popup/a/j;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/popup/a/j;->a()Lcom/viber/voip/messages/ui/popup/a/l;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/viber/voip/messages/ui/popup/a/l;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 169
    :goto_1
    const v3, 0x7f07027f

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/view/ViewPager;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 171
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(IF)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(IFI)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)F
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->j:F

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    return p1
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/popup/a/j;

    .line 223
    :try_start_0
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/popup/a/j;->notifyDataSetChanged()V

    .line 224
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/popup/a/j;->a()Lcom/viber/voip/messages/ui/popup/a/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/ui/popup/a/l;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0

    .line 230
    :cond_0
    return-void

    .line 226
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->setOffscreenPageLimit(I)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->setHorizontalFadingEdgeEnabled(Z)V

    .line 64
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->setFadingEdgeLength(I)V

    .line 65
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 217
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Lcom/viber/voip/ui/ap;->setCurrentItem(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    iget v1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/f;->a(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 254
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/a/j;

    .line 256
    :try_start_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/j;->a()Lcom/viber/voip/messages/ui/popup/a/l;

    move-result-object v0

    iget v2, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    invoke-virtual {v0, v2, p1}, Lcom/viber/voip/messages/ui/popup/a/l;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/ui/popup/view/f;->a(I)V

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/ap;->addView(Landroid/view/View;I)V

    .line 139
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, v0}, Lcom/viber/voip/ui/ap;->setCurrentItem(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(I)V

    .line 111
    return-void
.end method

.method public getSetedPosition()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d:I

    return v0
.end method

.method public setChildViewPager(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b:Ljava/util/List;

    .line 277
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not implement correct swipe to position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not implement correct swipe to position"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnPagerChangingListener(Lcom/viber/voip/messages/ui/popup/view/f;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c:Lcom/viber/voip/messages/ui/popup/view/f;

    .line 269
    return-void
.end method

.class public abstract Lcom/viber/voip/ui/t;
.super Lcom/viber/voip/ui/ac;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/AbsListView$LayoutParams;

.field private D:Landroid/os/Handler;

.field private E:Z

.field private F:Z

.field private G:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private H:Ljava/lang/Runnable;

.field private final a:I

.field private b:Lcom/viber/voip/ui/aj;

.field protected c:Lcom/viber/voip/ui/y;

.field protected d:I

.field public e:Z

.field protected f:Z

.field g:Landroid/os/Handler;

.field private z:Lcom/viber/voip/ui/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ac;-><init>(Landroid/content/Context;)V

    .line 39
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/t;->a:I

    .line 45
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->D:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/ui/t;->e:Z

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->g:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/viber/voip/ui/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/w;-><init>(Lcom/viber/voip/ui/t;)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->H:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/t;->a:I

    .line 45
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->D:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/ui/t;->e:Z

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->g:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/viber/voip/ui/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/w;-><init>(Lcom/viber/voip/ui/t;)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->H:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/ui/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/t;->a:I

    .line 45
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->D:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/ui/t;->e:Z

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->g:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/viber/voip/ui/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/w;-><init>(Lcom/viber/voip/ui/t;)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->H:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ui/t;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/ui/t;->G:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 126
    if-lez p1, :cond_0

    .line 130
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    iget v0, v0, Lcom/viber/voip/ui/y;->h:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 240
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 243
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->invalidate()V

    .line 249
    return-void
.end method

.method private getPullToRefreshHeader()Lcom/viber/voip/ui/y;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/ui/t;->c:Lcom/viber/voip/ui/y;

    return-object v0
.end method


# virtual methods
.method protected a(IF)F
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 135
    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->n:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->m:Z

    if-nez v1, :cond_1

    move p2, v0

    .line 170
    :cond_0
    :goto_0
    return p2

    .line 139
    :cond_1
    iget v1, p0, Lcom/viber/voip/ui/t;->d:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->m:Z

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/viber/voip/ui/t;->r:I

    const v2, 0x101010

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->m:Z

    if-nez v1, :cond_4

    :cond_3
    move p2, v0

    .line 141
    goto :goto_0

    .line 144
    :cond_4
    iget v1, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 145
    iput-boolean v3, p0, Lcom/viber/voip/ui/t;->F:Z

    move p2, v0

    .line 146
    goto :goto_0

    .line 149
    :cond_5
    iget v1, p0, Lcom/viber/voip/ui/t;->d:I

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->m:Z

    if-nez v1, :cond_0

    :cond_6
    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    const/high16 v1, -0x8000

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->n:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/viber/voip/ui/t;->m:Z

    if-eq v1, v3, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    const v1, 0x10101

    if-ne p1, v1, :cond_0

    .line 157
    iput-boolean v3, p0, Lcom/viber/voip/ui/t;->f:Z

    .line 158
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/viber/voip/ui/t;->a:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget v1, p0, Lcom/viber/voip/ui/t;->a:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_9

    iget v1, p0, Lcom/viber/voip/ui/t;->d:I

    if-eq v1, v5, :cond_9

    .line 162
    invoke-virtual {p0, v5}, Lcom/viber/voip/ui/t;->setPullState(I)V

    .line 166
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    float-to-int v1, p2

    iget v2, p0, Lcom/viber/voip/ui/t;->a:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/ui/t;->c:Lcom/viber/voip/ui/y;

    iget v2, v2, Lcom/viber/voip/ui/y;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/y;->a(II)V

    .line 167
    iget-object v0, p0, Lcom/viber/voip/ui/t;->c:Lcom/viber/voip/ui/y;

    iget-object v0, v0, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/t;->a(Landroid/view/View;)V

    goto :goto_0

    .line 163
    :cond_9
    iget v1, p0, Lcom/viber/voip/ui/t;->a:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_8

    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    if-eq v0, v6, :cond_8

    .line 164
    invoke-virtual {p0, v6}, Lcom/viber/voip/ui/t;->setPullState(I)V

    goto :goto_1
.end method

.method protected a(ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/t;->a(I)V

    .line 123
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/viber/voip/ui/t;->D:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/ui/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/ui/u;-><init>(Lcom/viber/voip/ui/t;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method public a(Lcom/viber/voip/ui/y;Lcom/viber/voip/ui/x;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 83
    iput-object p2, p0, Lcom/viber/voip/ui/t;->z:Lcom/viber/voip/ui/x;

    .line 84
    iput-object p1, p0, Lcom/viber/voip/ui/t;->c:Lcom/viber/voip/ui/y;

    .line 86
    invoke-interface {p2}, Lcom/viber/voip/ui/x;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-boolean v0, p0, Lcom/viber/voip/ui/t;->E:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->addHeaderView(Landroid/view/View;)V

    .line 99
    iput-boolean v2, p0, Lcom/viber/voip/ui/t;->E:Z

    .line 102
    :cond_1
    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/t;->setEnablePull(Z)V

    .line 103
    return-void
.end method

.method protected b(I)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/ui/t;->z:Lcom/viber/voip/ui/x;

    if-eqz v0, :cond_0

    const v0, 0x10101

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/ui/t;->s:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/viber/voip/ui/t;->z:Lcom/viber/voip/ui/x;

    invoke-interface {v0}, Lcom/viber/voip/ui/x;->b()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->e(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->v()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/ui/t;->f:Z

    .line 198
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->invalidate()V

    .line 199
    return-void
.end method

.method protected c(I)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/y;->a(I)V

    .line 176
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ac;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 226
    iget-boolean v0, p0, Lcom/viber/voip/ui/t;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 228
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/ui/y;->i:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->s()V

    .line 303
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setPullState(I)V

    .line 305
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/viber/voip/ui/t;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    .line 187
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected i()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    invoke-super {p0}, Lcom/viber/voip/ui/ac;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/viber/voip/ui/t;->F:Z

    if-ne v2, v1, :cond_1

    .line 270
    iput-boolean v0, p0, Lcom/viber/voip/ui/t;->F:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 274
    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setPullState(I)V

    .line 282
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 286
    const/4 v0, 0x5

    iput v0, p0, Lcom/viber/voip/ui/t;->d:I

    .line 288
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/ui/t;->p:I

    .line 293
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setPullState(I)V

    .line 294
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->v()V

    .line 295
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setPullState(I)V

    .line 299
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 308
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ui/t;->a(J)V

    .line 309
    return-void
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 347
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getFirstVisiblePosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 348
    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/t;->smoothScrollToPosition(I)V

    .line 349
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->h()V

    .line 365
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 353
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    .line 354
    iget-object v0, p0, Lcom/viber/voip/ui/t;->B:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/ui/t;->C:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lcom/viber/voip/ui/t;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/ui/t;->H:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->h()V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->h()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ac;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/t;->a(I)V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/ui/ac;->onLayout(ZIIII)V

    .line 254
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Lcom/viber/voip/ui/y;->g:I

    .line 256
    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v0

    sub-int v1, p4, p2

    invoke-direct {p0}, Lcom/viber/voip/ui/t;->getPullToRefreshHeader()Lcom/viber/voip/ui/y;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/ui/y;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/viber/voip/ui/y;->h:I

    .line 261
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ac;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 220
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ac;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 208
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setPullState(I)V

    goto :goto_1

    .line 211
    :pswitch_1
    iget v0, p0, Lcom/viber/voip/ui/t;->r:I

    const v1, 0x10101

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/viber/voip/ui/t;->m()V

    .line 214
    iget-object v0, p0, Lcom/viber/voip/ui/t;->b:Lcom/viber/voip/ui/aj;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/viber/voip/ui/t;->b:Lcom/viber/voip/ui/aj;

    invoke-interface {v0}, Lcom/viber/voip/ui/aj;->a()V

    goto :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/viber/voip/ui/ac;->p()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/ui/t;->b:Lcom/viber/voip/ui/aj;

    .line 386
    return-void
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/viber/voip/ui/t;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setPullState(I)V

    .line 379
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ac;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    return-void
.end method

.method public setOnLongItemClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/viber/voip/ui/t;->G:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 329
    new-instance v0, Lcom/viber/voip/ui/v;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/v;-><init>(Lcom/viber/voip/ui/t;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/t;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 344
    return-void
.end method

.method public setOnRefreshListener(Lcom/viber/voip/ui/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/viber/voip/ui/t;->b:Lcom/viber/voip/ui/aj;

    .line 107
    return-void
.end method

.method public setPullState(I)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/viber/voip/ui/t;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 115
    iput p1, p0, Lcom/viber/voip/ui/t;->d:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/viber/voip/ui/t;->c(I)V

    .line 118
    :cond_0
    return-void
.end method

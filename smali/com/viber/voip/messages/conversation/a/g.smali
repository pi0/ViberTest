.class public Lcom/viber/voip/messages/conversation/a/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private i:Lcom/viber/voip/messages/conversation/a/o;

.field private j:Lcom/viber/voip/messages/conversation/a/i;

.field private k:Landroid/view/LayoutInflater;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/viber/voip/messages/conversation/a/j;

.field private r:Lcom/viber/voip/messages/conversation/a/n;

.field private s:Lcom/viber/voip/a/k;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/a/o;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput v1, p0, Lcom/viber/voip/messages/conversation/a/g;->a:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/g;->d:I

    .line 72
    new-instance v0, Lcom/viber/voip/a/k;

    invoke-direct {v0}, Lcom/viber/voip/a/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->s:Lcom/viber/voip/a/k;

    .line 74
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/g;->t:Z

    .line 79
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/g;->g:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/g;->h:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 82
    new-instance v0, Lcom/viber/voip/messages/conversation/a/i;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/conversation/a/i;-><init>(Lcom/viber/voip/messages/conversation/a/g;Lcom/viber/voip/messages/conversation/a/h;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->j:Lcom/viber/voip/messages/conversation/a/i;

    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->j:Lcom/viber/voip/messages/conversation/a/i;

    invoke-virtual {p3, v0}, Lcom/viber/voip/messages/conversation/a/o;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    .line 85
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->k:Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p3}, Lcom/viber/voip/messages/conversation/a/o;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    .line 88
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    .line 90
    new-instance v0, Lcom/viber/voip/messages/conversation/a/n;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/a/n;-><init>(Lcom/viber/voip/messages/conversation/a/g;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    .line 91
    new-instance v0, Lcom/viber/voip/messages/conversation/a/j;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/conversation/a/j;-><init>(Lcom/viber/voip/messages/conversation/a/g;Lcom/viber/voip/messages/conversation/a/h;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->q:Lcom/viber/voip/messages/conversation/a/j;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/g;->b:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/g;->c:I

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/g;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 336
    if-nez p1, :cond_0

    .line 337
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    .line 348
    :goto_0
    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 339
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    goto :goto_0

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 342
    if-nez p1, :cond_2

    .line 343
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_3

    .line 345
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/a/g;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->h:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/a/g;)Lcom/viber/voip/a/k;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->s:Lcom/viber/voip/a/k;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/a/g;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->g:Landroid/content/Context;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f030112

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0702e0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->o:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f070392

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->p:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->q:Lcom/viber/voip/messages/conversation/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/j;->a()V

    .line 144
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a/g;->a(I)V

    .line 145
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    const v1, 0x7f07031e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    .line 158
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    .line 289
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    iget-boolean v0, v0, Lcom/viber/voip/messages/conversation/a/n;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->c:I

    :goto_0
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 294
    return-void

    .line 289
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->b:I

    goto :goto_0
.end method

.method private p()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/conversation/a/o;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    return-object v0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->f()V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->q:Lcom/viber/voip/messages/conversation/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/j;->b()V

    .line 228
    :cond_3
    if-eqz p1, :cond_0

    .line 231
    if-ne p1, v1, :cond_4

    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->a:I

    if-ne v0, v3, :cond_4

    .line 232
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/g;->t:Z

    .line 237
    :cond_4
    if-ne p1, v3, :cond_5

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->p:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_5
    iput p1, p0, Lcom/viber/voip/messages/conversation/a/g;->a:I

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->q:Lcom/viber/voip/messages/conversation/a/j;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/j;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 366
    return-void
.end method

.method public a(ZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    iput-boolean p1, v0, Lcom/viber/voip/messages/conversation/a/n;->a:Z

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    iput-boolean p2, v0, Lcom/viber/voip/messages/conversation/a/n;->b:Z

    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    iput-boolean p3, v0, Lcom/viber/voip/messages/conversation/a/n;->c:Z

    .line 255
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->h()V

    .line 256
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->j:Lcom/viber/voip/messages/conversation/a/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/o;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    .line 106
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/g;->u:Z

    .line 149
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 208
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 217
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->p()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    if-ne v0, v1, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/o;->a(I)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    if-ne v0, v1, :cond_1

    .line 172
    :cond_0
    const-wide/16 v0, 0x0

    .line 174
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/o;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    if-ne v0, v1, :cond_0

    .line 181
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    if-ne v0, v1, :cond_1

    .line 183
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/o;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/viber/voip/messages/conversation/a/o;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/g;->u:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->h()V

    .line 134
    :cond_1
    return-object p2

    .line 118
    :cond_2
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->e:I

    if-ne v0, v1, :cond_5

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->m()V

    .line 120
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/g;->t:Z

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->j()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/g;->t:Z

    .line 124
    :cond_4
    iget-object p2, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 125
    :cond_5
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/g;->f:I

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->n()V

    .line 127
    :cond_6
    iget-object p2, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/g;->u:Z

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->i:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    iget-boolean v0, v0, Lcom/viber/voip/messages/conversation/a/n;->a:Z

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    const v1, 0x7f0c05d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->o()V

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->d()V

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 285
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/g;->u:Z

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->r:Lcom/viber/voip/messages/conversation/a/n;

    iget-boolean v0, v0, Lcom/viber/voip/messages/conversation/a/n;->b:Z

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->m:Landroid/widget/TextView;

    const v1, 0x7f0c03be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/g;->o()V

    .line 275
    :cond_4
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->d()V

    goto :goto_1

    .line 278
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/g;->g()V

    goto :goto_1
.end method

.method public i()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 314
    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 315
    new-instance v1, Lcom/viber/voip/messages/conversation/a/h;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/h;-><init>(Lcom/viber/voip/messages/conversation/a/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 327
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/g;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/g;->q:Lcom/viber/voip/messages/conversation/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/j;->b()V

    .line 370
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/g;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a/g;->a(I)V

    .line 374
    return-void
.end method

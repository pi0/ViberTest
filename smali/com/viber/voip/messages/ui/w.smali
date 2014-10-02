.class public Lcom/viber/voip/messages/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/ui/bn;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/viber/voip/messages/ui/ae;

.field private k:Lcom/viber/voip/messages/ui/ab;

.field private l:Lcom/viber/voip/messages/ui/ai;

.field private m:Lcom/viber/voip/messages/ui/ac;

.field private n:Lcom/viber/voip/messages/ui/ah;

.field private o:Lcom/viber/voip/messages/ui/af;

.field private p:Lcom/viber/voip/messages/ui/ag;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/Rect;

.field private v:Z

.field private w:I

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->s:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->t:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->u:Landroid/graphics/Rect;

    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->a:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->j:Lcom/viber/voip/messages/ui/ae;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ae;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->k:Lcom/viber/voip/messages/ui/ab;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ab;)V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->l:Lcom/viber/voip/messages/ui/ai;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ai;)V

    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->m:Lcom/viber/voip/messages/ui/ac;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ac;)V

    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->n:Lcom/viber/voip/messages/ui/ah;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ah;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->o:Lcom/viber/voip/messages/ui/af;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/af;)V

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->p:Lcom/viber/voip/messages/ui/ag;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ag;)V

    .line 252
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    if-eqz p1, :cond_1

    .line 230
    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/w;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/w;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->t:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->u:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/w;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/w;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/w;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/viber/voip/messages/ui/w;->w:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 65
    if-eqz p1, :cond_0

    .line 110
    :goto_0
    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/viber/voip/ViberApplication;->hideDoodle()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0300d0

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 73
    const v0, 0x7f0702cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->b:Landroid/view/View;

    .line 75
    const v0, 0x7f0702cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->c:Landroid/view/View;

    .line 77
    const v0, 0x7f0702d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->e:Landroid/view/View;

    .line 79
    const v0, 0x7f0702d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->f:Landroid/view/View;

    .line 81
    const v0, 0x7f0702d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->d:Landroid/view/View;

    .line 83
    const v0, 0x7f0702cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->g:Landroid/view/View;

    .line 85
    const v0, 0x7f0702d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->h:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const v0, 0x7f0702ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    .line 94
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/k/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/w;->x:Z

    if-nez v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->b(Landroid/view/View;)V

    .line 102
    :goto_2
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/w;->x:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/w;->w:I

    .line 108
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/w;->a()V

    goto/16 :goto_0

    .line 70
    :cond_2
    const v0, 0x7f0300cf

    goto/16 :goto_1

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Lcom/viber/voip/messages/ui/ab;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->k:Lcom/viber/voip/messages/ui/ab;

    .line 200
    iget-object v1, p0, Lcom/viber/voip/messages/ui/w;->g:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/ui/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->m:Lcom/viber/voip/messages/ui/ac;

    .line 210
    iget-object v1, p0, Lcom/viber/voip/messages/ui/w;->f:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 211
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/ui/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ae;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ab;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ai;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ac;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ah;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/af;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ag;)V

    .line 242
    return-void
.end method

.method public a(Lcom/viber/voip/messages/ui/ae;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->j:Lcom/viber/voip/messages/ui/ae;

    .line 194
    iget-object v3, p0, Lcom/viber/voip/messages/ui/w;->b:Landroid/view/View;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->c:Landroid/view/View;

    if-nez p1, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 196
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v1, v2

    .line 195
    goto :goto_1
.end method

.method public a(Lcom/viber/voip/messages/ui/af;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->o:Lcom/viber/voip/messages/ui/af;

    .line 220
    iget-object v1, p0, Lcom/viber/voip/messages/ui/w;->e:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/ui/ag;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->p:Lcom/viber/voip/messages/ui/ag;

    .line 225
    iget-object v1, p0, Lcom/viber/voip/messages/ui/w;->h:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/ui/ah;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->n:Lcom/viber/voip/messages/ui/ah;

    .line 215
    iget-object v1, p0, Lcom/viber/voip/messages/ui/w;->d:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 216
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/ui/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/viber/voip/messages/ui/w;->l:Lcom/viber/voip/messages/ui/ai;

    .line 205
    iget-object v1, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/w;->a(Landroid/view/View;Z)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/w;->x:Z

    .line 316
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_2
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/k/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const v0, 0x7f0702d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->r:Landroid/view/View;

    .line 122
    const v0, 0x7f07027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/w;->q:Landroid/view/View;

    .line 124
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/k/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/x;-><init>(Lcom/viber/voip/messages/ui/w;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->b:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->j:Lcom/viber/voip/messages/ui/ae;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ae;->b()Landroid/net/Uri;

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->c:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->j:Lcom/viber/voip/messages/ui/ae;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ae;->c()V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->g:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->k:Lcom/viber/voip/messages/ui/ab;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ab;->e()V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->f:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->m:Lcom/viber/voip/messages/ui/ac;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ac;->a()V

    goto :goto_0

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->e:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->o:Lcom/viber/voip/messages/ui/af;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/af;->g()V

    goto :goto_0

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->d:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 272
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->n:Lcom/viber/voip/messages/ui/ah;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ah;->d()Landroid/net/Uri;

    goto :goto_0

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->i:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->l:Lcom/viber/voip/messages/ui/ai;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ai;->f()V

    goto :goto_0

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->h:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/w;->p:Lcom/viber/voip/messages/ui/ag;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ag;->h()V

    goto :goto_0
.end method

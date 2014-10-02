.class public Lcom/viber/voip/messages/adapters/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static b:J

.field private static final r:Ljava/lang/String;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/adapters/t;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/viber/voip/stickers/r;

.field private f:Lcom/viber/voip/messages/ui/u;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/adapters/v;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/viber/voip/stickers/ui/a;

.field private o:Lcom/viber/voip/stickers/b;

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/viber/voip/messages/adapters/q;->b:J

    .line 72
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setFrameDelay(J)V

    .line 549
    const-class v0, Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/adapters/q;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->m:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/q;->c:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcom/viber/voip/messages/adapters/q;->f:Lcom/viber/voip/messages/ui/u;

    .line 78
    iput-object p3, p0, Lcom/viber/voip/messages/adapters/q;->o:Lcom/viber/voip/stickers/b;

    .line 79
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->e:Lcom/viber/voip/stickers/r;

    .line 80
    new-instance v0, Lcom/viber/voip/stickers/ui/a;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/q;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/viber/voip/stickers/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->n:Lcom/viber/voip/stickers/ui/a;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->g:Z

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->a:Landroid/view/LayoutInflater;

    .line 85
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->q:Landroid/os/Handler;

    .line 86
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/q;->p:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v1, v0}, Lcom/viber/voip/messages/adapters/q;->a(IIZLcom/viber/voip/messages/adapters/u;)V

    .line 89
    return-void

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/q;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/viber/voip/messages/adapters/q;->l:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/q;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/viber/voip/messages/adapters/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/q;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/viber/voip/messages/adapters/q;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/adapters/q;)Lcom/viber/voip/stickers/r;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->e:Lcom/viber/voip/stickers/r;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/adapters/q;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/viber/voip/messages/adapters/q;->l:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/adapters/q;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/adapters/q;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->m:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/adapters/q;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/adapters/q;)Lcom/viber/voip/stickers/b;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->o:Lcom/viber/voip/stickers/b;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/adapters/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/adapters/q;)Lcom/viber/voip/messages/ui/u;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->f:Lcom/viber/voip/messages/ui/u;

    return-object v0
.end method


# virtual methods
.method public a(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 241
    if-gez p1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "firstItem can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "lastItem can\'t exceed number of items"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 252
    :goto_0
    if-ge p1, p2, :cond_3

    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/t;

    .line 254
    iget-object v3, v0, Lcom/viber/voip/messages/adapters/t;->c:Lcom/viber/voip/stickers/p;

    .line 255
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    .line 257
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/q;->n:Lcom/viber/voip/stickers/ui/a;

    iget-object v5, p0, Lcom/viber/voip/messages/adapters/q;->c:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, v0}, Lcom/viber/voip/stickers/ui/a;->a(Landroid/content/Context;Lcom/viber/voip/stickers/p;Z)I

    move-result v0

    .line 258
    add-int/2addr v0, v2

    .line 252
    add-int/lit8 p1, p1, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 255
    goto :goto_1

    .line 261
    :cond_3
    return v2
.end method

.method public a(I)Lcom/viber/voip/messages/adapters/t;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/t;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/q;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method public a(IIZLcom/viber/voip/messages/adapters/u;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPackageId schedule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->b(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/viber/voip/messages/adapters/r;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move-object v6, p4

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/adapters/r;-><init>(Lcom/viber/voip/messages/adapters/q;IJILcom/viber/voip/messages/adapters/u;Z)V

    .line 133
    if-eqz p3, :cond_0

    .line 134
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/q;->p:Landroid/os/Handler;

    sget-wide v2, Lcom/viber/voip/messages/adapters/q;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->m:Landroid/util/SparseArray;

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/v;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/v;->a()V

    .line 144
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/adapters/v;->a(Lcom/viber/voip/messages/adapters/v;Z)V

    .line 147
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    .line 148
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/q;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/viber/voip/messages/adapters/q;->h:Z

    .line 184
    iput-boolean p1, p0, Lcom/viber/voip/messages/adapters/q;->j:Z

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/q;->a()V

    .line 188
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/q;->h:Z

    if-nez v1, :cond_0

    .line 158
    iget v1, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    .line 159
    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->h:Z

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/q;->i:Z

    if-eqz v1, :cond_0

    .line 167
    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->i:Z

    .line 168
    iget v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/adapters/q;->k:I

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/q;->i:Z

    if-nez v1, :cond_0

    .line 176
    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->i:Z

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/q;->j:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/q;->a(I)Lcom/viber/voip/messages/adapters/t;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    if-eqz p2, :cond_0

    .line 214
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/z;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/z;->a()V

    .line 217
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/viber/voip/messages/adapters/q;->l:I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/z;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    array-length v0, v0

    if-le v1, v0, :cond_2

    .line 218
    :cond_1
    new-instance v0, Lcom/viber/voip/messages/adapters/z;

    iget v1, p0, Lcom/viber/voip/messages/adapters/q;->l:I

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/adapters/z;-><init>(Lcom/viber/voip/messages/adapters/q;I)V

    .line 219
    iget-object v1, v0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->setTag(Ljava/lang/Object;)V

    .line 224
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/adapters/q;->a(I)Lcom/viber/voip/messages/adapters/t;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/messages/adapters/z;->a(Lcom/viber/voip/messages/adapters/t;I)V

    .line 225
    iget-object v0, v0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    return-object v0

    .line 221
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/z;

    goto :goto_0
.end method

.class public Lcom/viber/voip/messages/adapters/MediaLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/adapters/c;


# static fields
.field private static final c:I

.field private static final q:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field private d:Landroid/content/Context;

.field private e:Lcom/viber/voip/stickers/b;

.field private f:Lcom/viber/voip/stickers/bb;

.field private g:Lcom/viber/voip/util/b/w;

.field private h:Lcom/viber/voip/util/b/x;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Lcom/viber/voip/messages/conversation/a/a/a;

.field private m:Lcom/viber/voip/messages/conversation/a/b/b;

.field private n:Landroid/widget/ProgressBar;

.field private o:Lcom/viber/voip/messages/adapters/f;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x4348

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/adapters/MediaLayout;->c:I

    .line 356
    const-class v0, Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/adapters/MediaLayout;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->d:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->b()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/MediaLayout;Lcom/viber/voip/messages/adapters/f;)Lcom/viber/voip/messages/adapters/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->o:Lcom/viber/voip/messages/adapters/f;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 358
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/adapters/MediaLayout;->q:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/MediaLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->i:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ec

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->setDuplicateParentStateEnabled(Z)V

    .line 92
    const v0, 0x7f07032d

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f07032e

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->b:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f07020b

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->i:Landroid/view/View;

    .line 95
    const v0, 0x7f07032f

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->j:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->n:Landroid/widget/ProgressBar;

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->g:Lcom/viber/voip/util/b/w;

    .line 99
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    new-instance v1, Lcom/viber/voip/util/b/b/f;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/viber/voip/util/b/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->h:Lcom/viber/voip/util/b/x;

    .line 103
    const/high16 v0, 0x41a0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->k:I

    .line 105
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->p:Z

    .line 106
    return-void
.end method

.method private b(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 176
    const-string/jumbo v0, "image"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 184
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/adapters/MediaLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->k:I

    return v0
.end method

.method private c()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->F()I

    move-result v2

    .line 169
    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    const/16 v2, 0x8

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/bb;->a(Landroid/widget/ImageView;Z)V

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->a()V

    .line 212
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v5

    .line 214
    invoke-virtual {v4}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/adapters/d;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/adapters/d;-><init>(Lcom/viber/voip/messages/adapters/MediaLayout;Landroid/view/View;ILcom/viber/voip/stickers/c/a;Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->getStickerBitmapLoader()Lcom/viber/voip/stickers/b;

    move-result-object v2

    if-nez v5, :cond_2

    move v0, v1

    :goto_1
    sget-object v3, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stickerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , bitmapHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Ljava/lang/String;)V

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->b()V

    .line 249
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->a()V

    .line 286
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->g:Lcom/viber/voip/util/b/w;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->h:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, p1, v1, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 288
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->m:Lcom/viber/voip/messages/conversation/a/b/b;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/b;->c(Lcom/viber/voip/messages/conversation/a/a/a;)Z

    .line 354
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/adapters/g;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->a()V

    .line 260
    if-nez p2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/viber/voip/messages/extras/image/m;->a:I

    sget v3, Lcom/viber/voip/messages/extras/image/m;->a:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 268
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->c()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->d()I

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->a()J

    move-result-wide v1

    invoke-static {p1}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/adapters/g;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/viber/voip/messages/extras/image/m;->a:I

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/viber/voip/messages/extras/image/m;->a:I

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/controller/x;->a(JLjava/lang/String;II)V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->g:Lcom/viber/voip/util/b/w;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->h:Lcom/viber/voip/util/b/x;

    new-instance v4, Lcom/viber/voip/messages/adapters/e;

    invoke-direct {v4, p0}, Lcom/viber/voip/messages/adapters/e;-><init>(Lcom/viber/voip/messages/adapters/MediaLayout;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 281
    return-void
.end method

.method public a(Lcom/viber/voip/messages/adapters/g;ZZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->a()V

    .line 300
    if-nez p4, :cond_0

    .line 301
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/viber/voip/messages/extras/image/m;->a:I

    sget v4, Lcom/viber/voip/messages/extras/image/m;->a:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_0
    if-eqz p3, :cond_4

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :goto_0
    new-instance v0, Lcom/viber/voip/messages/adapters/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/adapters/f;-><init>(Lcom/viber/voip/messages/adapters/MediaLayout;Lcom/viber/voip/messages/adapters/g;Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->o:Lcom/viber/voip/messages/adapters/f;

    .line 313
    const-string/jumbo v0, "video"

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "animated_message"

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const v0, 0x7f0201d8

    .line 318
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 320
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->c()I

    move-result v0

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->d()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->d()I

    move-result v2

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->c()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->g:Lcom/viber/voip/util/b/w;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/g;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->h:Lcom/viber/voip/util/b/x;

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->o:Lcom/viber/voip/messages/adapters/f;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 325
    return-void

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_5
    const v0, 0x7f0201d7

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 151
    const-string/jumbo v0, "image"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "animated_message"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v3, "animated_message"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/g;ZZZ)V

    .line 160
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/adapters/MediaLayout;->b(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 161
    return-void

    :cond_2
    move v0, v2

    .line 154
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 156
    :cond_4
    const-string/jumbo v0, "location"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/g;Z)V

    goto :goto_2
.end method

.method public getStickerBitmapLoader()Lcom/viber/voip/stickers/b;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->e:Lcom/viber/voip/stickers/b;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->e:Lcom/viber/voip/stickers/b;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->e:Lcom/viber/voip/stickers/b;

    return-object v0
.end method

.method public getStickerSvgController()Lcom/viber/voip/stickers/bb;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->f:Lcom/viber/voip/stickers/bb;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->e()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->f:Lcom/viber/voip/stickers/bb;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->f:Lcom/viber/voip/stickers/bb;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->m:Lcom/viber/voip/messages/conversation/a/b/b;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->l:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/b;->e(Lcom/viber/voip/messages/conversation/a/a/a;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 111
    invoke-direct {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->c()V

    .line 112
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    .line 116
    invoke-direct {p0}, Lcom/viber/voip/messages/adapters/MediaLayout;->c()V

    .line 117
    return-void
.end method

.method public setBallonClickListener(Lcom/viber/voip/messages/conversation/a/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/MediaLayout;->m:Lcom/viber/voip/messages/conversation/a/b/b;

    .line 131
    return-void
.end method

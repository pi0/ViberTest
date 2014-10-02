.class Lcom/viber/voip/messages/adapters/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/viber/voip/stickers/ui/StickerGrid;

.field public b:Lcom/viber/voip/messages/adapters/t;

.field public c:[Lcom/viber/voip/messages/adapters/y;

.field final synthetic d:Lcom/viber/voip/messages/adapters/q;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/adapters/q;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/z;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/q;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/ui/StickerGrid;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    .line 296
    new-array v0, p2, [Lcom/viber/voip/messages/adapters/y;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    .line 297
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 298
    new-instance v1, Lcom/viber/voip/messages/adapters/y;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/adapters/y;-><init>(Lcom/viber/voip/messages/adapters/q;)V

    .line 299
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    aput-object v1, v2, v0

    .line 300
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    iget-object v1, v1, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/viber/voip/stickers/ui/StickerGrid;->addView(Landroid/view/View;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 339
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 340
    invoke-virtual {v3}, Lcom/viber/voip/messages/adapters/y;->a()V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/adapters/t;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->b:Lcom/viber/voip/messages/adapters/t;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/adapters/z;->e:I

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/z;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v2}, Lcom/viber/voip/messages/adapters/q;->f(Lcom/viber/voip/messages/adapters/q;)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->f(Lcom/viber/voip/messages/adapters/q;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/adapters/z;->e:I

    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->b:Lcom/viber/voip/messages/adapters/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->b:Lcom/viber/voip/messages/adapters/t;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/t;->b:Lcom/viber/voip/messages/adapters/z;

    if-ne v0, p0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->b:Lcom/viber/voip/messages/adapters/t;

    iput-object v5, v0, Lcom/viber/voip/messages/adapters/t;->b:Lcom/viber/voip/messages/adapters/z;

    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->b:Lcom/viber/voip/messages/adapters/t;

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/t;->a:[Lcom/viber/voip/messages/adapters/v;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 312
    invoke-virtual {v4}, Lcom/viber/voip/messages/adapters/v;->b()V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/z;->b:Lcom/viber/voip/messages/adapters/t;

    .line 317
    iput-object p0, p1, Lcom/viber/voip/messages/adapters/t;->b:Lcom/viber/voip/messages/adapters/z;

    .line 319
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/q;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->setLast(Z)V

    .line 320
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->a()V

    move v0, v1

    .line 321
    :goto_2
    iget-object v2, p1, Lcom/viber/voip/messages/adapters/t;->a:[Lcom/viber/voip/messages/adapters/v;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 322
    iget-object v2, p1, Lcom/viber/voip/messages/adapters/t;->a:[Lcom/viber/voip/messages/adapters/v;

    aget-object v2, v2, v0

    .line 323
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    aget-object v3, v3, v0

    .line 324
    iput-object v2, v3, Lcom/viber/voip/messages/adapters/y;->f:Lcom/viber/voip/messages/adapters/v;

    .line 325
    invoke-static {v2, v3}, Lcom/viber/voip/messages/adapters/v;->a(Lcom/viber/voip/messages/adapters/v;Lcom/viber/voip/messages/adapters/y;)V

    .line 326
    iget-object v4, v3, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/z;->a:Lcom/viber/voip/stickers/ui/StickerGrid;

    iget-object v3, v3, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    invoke-static {v2}, Lcom/viber/voip/messages/adapters/v;->a(Lcom/viber/voip/messages/adapters/v;)Lcom/viber/voip/stickers/c/a;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/viber/voip/stickers/ui/StickerGrid;->a(Landroid/view/View;Lcom/viber/voip/stickers/c/a;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 319
    goto :goto_1

    .line 330
    :cond_3
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/t;->a:[Lcom/viber/voip/messages/adapters/v;

    array-length v0, v0

    :goto_3
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 331
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/z;->c:[Lcom/viber/voip/messages/adapters/y;

    aget-object v1, v1, v0

    .line 332
    iput-object v5, v1, Lcom/viber/voip/messages/adapters/y;->f:Lcom/viber/voip/messages/adapters/v;

    .line 333
    iget-object v1, v1, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 336
    :cond_4
    return-void
.end method

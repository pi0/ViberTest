.class Lcom/viber/voip/messages/ui/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:I

.field private d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/viber/voip/messages/ui/bd;

.field private final h:Landroid/view/View$OnClickListener;

.field private i:Lcom/viber/voip/messages/ui/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/viber/voip/messages/ui/q;->a:Landroid/content/Context;

    .line 307
    iput p3, p0, Lcom/viber/voip/messages/ui/q;->b:I

    .line 308
    iget v0, p0, Lcom/viber/voip/messages/ui/q;->b:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/q;->c:I

    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/q;->e:I

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/q;->f:I

    .line 312
    iget v0, p0, Lcom/viber/voip/messages/ui/q;->c:I

    iget v1, p0, Lcom/viber/voip/messages/ui/q;->f:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/messages/ui/q;->d:I

    .line 313
    iget v0, p0, Lcom/viber/voip/messages/ui/q;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/viber/voip/messages/ui/q;->b:I

    div-int/2addr v0, v1

    .line 314
    iget v1, p0, Lcom/viber/voip/messages/ui/q;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/viber/voip/messages/ui/q;->c:I

    .line 315
    iget v1, p0, Lcom/viber/voip/messages/ui/q;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/ui/q;->d:I

    .line 317
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    .line 318
    new-instance v0, Lcom/viber/voip/messages/ui/r;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/r;-><init>(Lcom/viber/voip/messages/ui/q;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/q;->h:Landroid/view/View$OnClickListener;

    .line 324
    return-void
.end method

.method private a(II)Lcom/viber/voip/messages/ui/s;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 361
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/viber/voip/messages/ui/q;->f:I

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->f:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/q;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->d:I

    iget v4, p0, Lcom/viber/voip/messages/ui/q;->f:I

    add-int/2addr v3, v4

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 375
    :goto_0
    iget v2, p0, Lcom/viber/voip/messages/ui/q;->e:I

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->e:I

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 376
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    new-instance v2, Lcom/viber/voip/messages/ui/s;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/viber/voip/messages/ui/s;-><init>(Lcom/viber/voip/messages/ui/l;)V

    .line 380
    invoke-static {v2, v1}, Lcom/viber/voip/messages/ui/s;->a(Lcom/viber/voip/messages/ui/s;Landroid/view/View;)Landroid/view/View;

    .line 381
    invoke-static {v2, v0}, Lcom/viber/voip/messages/ui/s;->a(Lcom/viber/voip/messages/ui/s;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 383
    return-object v2

    .line 368
    :cond_0
    add-int/lit8 v2, p2, -0x1

    if-ne p1, v2, :cond_1

    .line 369
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->d:I

    iget v4, p0, Lcom/viber/voip/messages/ui/q;->f:I

    add-int/2addr v3, v4

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 372
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->c:I

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/s;

    .line 332
    invoke-static {v0}, Lcom/viber/voip/messages/ui/s;->a(Lcom/viber/voip/messages/ui/s;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/viber/voip/messages/ui/q;->i:Lcom/viber/voip/messages/ui/t;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/viber/voip/messages/ui/q;->i:Lcom/viber/voip/messages/ui/t;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/ui/t;->a(Lcom/viber/voip/messages/ui/bf;)V

    .line 336
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/s;

    .line 388
    invoke-static {v0}, Lcom/viber/voip/messages/ui/s;->c(Lcom/viber/voip/messages/ui/s;)Landroid/widget/ImageView;

    move-result-object v3

    .line 390
    iget-object v1, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/bd;->d()I

    move-result v1

    if-le v1, p2, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/bd;->e()[Lcom/viber/voip/messages/ui/bf;

    move-result-object v1

    aget-object v1, v1, p2

    :goto_0
    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/s;->a(Lcom/viber/voip/messages/ui/s;Lcom/viber/voip/messages/ui/bf;)Lcom/viber/voip/messages/ui/bf;

    .line 392
    invoke-static {v0}, Lcom/viber/voip/messages/ui/s;->a(Lcom/viber/voip/messages/ui/s;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/s;->a(Lcom/viber/voip/messages/ui/s;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/bd;->a(Lcom/viber/voip/messages/ui/bf;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    const v0, 0x7f0202a7

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 395
    iget-object v0, p0, Lcom/viber/voip/messages/ui/q;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :goto_1
    return-void

    :cond_0
    move-object v1, v2

    .line 390
    goto :goto_0

    .line 397
    :cond_1
    invoke-static {v3, v2}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 399
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/q;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/q;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget v0, p0, Lcom/viber/voip/messages/ui/q;->b:I

    mul-int/2addr v0, p1

    .line 417
    iget v2, p0, Lcom/viber/voip/messages/ui/q;->b:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->b:I

    add-int/2addr v2, v3

    .line 419
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/bd;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/bd;->e()[Lcom/viber/voip/messages/ui/bf;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    return-object v1
.end method

.method public a(Lcom/viber/voip/messages/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/viber/voip/messages/ui/q;->i:Lcom/viber/voip/messages/ui/t;

    .line 328
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget-object v2, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bd;->d()I

    move-result v2

    iget v3, p0, Lcom/viber/voip/messages/ui/q;->b:I

    div-int v3, v2, v3

    .line 407
    iget-object v2, p0, Lcom/viber/voip/messages/ui/q;->g:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bd;->d()I

    move-result v2

    iget v4, p0, Lcom/viber/voip/messages/ui/q;->b:I

    rem-int/2addr v2, v4

    if-lez v2, :cond_0

    move v2, v0

    .line 409
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    add-int/2addr v0, v3

    return v0

    :cond_0
    move v2, v1

    .line 407
    goto :goto_0

    :cond_1
    move v0, v1

    .line 409
    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/q;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 427
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 342
    if-nez p2, :cond_0

    .line 343
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/q;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 345
    :goto_0
    iget v2, p0, Lcom/viber/voip/messages/ui/q;->b:I

    if-ge v0, v2, :cond_1

    .line 346
    iget v2, p0, Lcom/viber/voip/messages/ui/q;->b:I

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/ui/q;->a(II)Lcom/viber/voip/messages/ui/s;

    move-result-object v2

    .line 347
    invoke-static {v2}, Lcom/viber/voip/messages/ui/s;->b(Lcom/viber/voip/messages/ui/s;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 348
    invoke-static {v2}, Lcom/viber/voip/messages/ui/s;->b(Lcom/viber/voip/messages/ui/s;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    check-cast p2, Landroid/widget/LinearLayout;

    .line 354
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 355
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/viber/voip/messages/ui/q;->b:I

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/ui/q;->a(Landroid/view/View;I)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_2
    return-object p2
.end method

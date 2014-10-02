.class public Lcom/viber/voip/messages/conversation/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lcom/viber/voip/widget/aa;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Lcom/viber/voip/messages/conversation/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/viber/voip/messages/conversation/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ax;->a:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ax;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->c:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/viber/voip/messages/conversation/bi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/bi;-><init>(Lcom/viber/voip/messages/conversation/ay;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->j:Lcom/viber/voip/messages/conversation/bi;

    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ax;->f:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ax;->d:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ax;->e:I

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/viber/voip/messages/conversation/ax;->i:I

    return p1
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 449
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 462
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 428
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/conversation/ax;->b(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 430
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    return-object v1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/widget/aa;)Lcom/viber/voip/messages/conversation/ax;
    .locals 2
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/viber/voip/messages/conversation/ax;

    invoke-virtual {p0}, Lcom/viber/voip/widget/aa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/ax;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ax;->b(Lcom/viber/voip/widget/aa;)V

    .line 62
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    return-object v0
.end method

.method private a([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 472
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/bh;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/conversation/bh;-><init>(Lcom/viber/voip/messages/conversation/ax;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method private a(Landroid/text/Spannable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, Lcom/viber/voip/messages/conversation/bj;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/conversation/bj;

    .line 113
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 114
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ax;->b(Landroid/text/Spannable;)V

    .line 117
    return-void
.end method

.method private a(Landroid/text/Spannable;IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    if-eq p2, p3, :cond_0

    .line 105
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getTextSize()F

    move-result v5

    .line 106
    :goto_0
    new-instance v0, Lcom/viber/voip/messages/conversation/bj;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ax;->f:Landroid/content/Context;

    invoke-interface {p1, p2, p3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/bj;-><init>(Lcom/viber/voip/messages/conversation/ax;Landroid/content/Context;Ljava/lang/CharSequence;IFZ)V

    .line 107
    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 109
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    goto :goto_0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 135
    const-string/jumbo v0, "updateTagSpanColors"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->c(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-class v1, Lcom/viber/voip/messages/conversation/bj;

    invoke-interface {v4, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/conversation/bj;

    .line 142
    array-length v6, v0

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v0, v3

    .line 143
    invoke-interface {v4, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 144
    invoke-interface {v4, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 145
    if-le v5, v8, :cond_1

    if-gt v5, v9, :cond_1

    const/4 v1, 0x1

    .line 146
    :goto_1
    iget-boolean v10, v7, Lcom/viber/voip/messages/conversation/bj;->a:Z

    if-eq v1, v10, :cond_0

    .line 147
    invoke-interface {v4, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0, v4, v8, v9, v1}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/text/Spannable;IIZ)V

    .line 142
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 145
    goto :goto_1

    .line 151
    :cond_2
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ax;->b(Landroid/text/Spannable;)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/text/Spannable;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;Landroid/text/Spannable;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/text/Spannable;IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/viber/voip/messages/conversation/ax;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(ILcom/viber/voip/messages/conversation/bi;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x20

    .line 372
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_0

    if-lez p1, :cond_2

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 379
    :cond_2
    iput p1, p2, Lcom/viber/voip/messages/conversation/bi;->a:I

    .line 380
    :goto_1
    iget v0, p2, Lcom/viber/voip/messages/conversation/bi;->a:I

    if-lez v0, :cond_3

    iget v0, p2, Lcom/viber/voip/messages/conversation/bi;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_3

    .line 381
    iget v0, p2, Lcom/viber/voip/messages/conversation/bi;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/viber/voip/messages/conversation/bi;->a:I

    goto :goto_1

    .line 384
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p1, v0, :cond_4

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    .line 385
    :cond_4
    iput p1, p2, Lcom/viber/voip/messages/conversation/bi;->b:I

    .line 392
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_6
    add-int/lit8 v0, p1, 0x1

    iput v0, p2, Lcom/viber/voip/messages/conversation/bi;->b:I

    .line 388
    :goto_2
    iget v0, p2, Lcom/viber/voip/messages/conversation/bi;->b:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget v0, p2, Lcom/viber/voip/messages/conversation/bi;->b:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_5

    .line 389
    iget v0, p2, Lcom/viber/voip/messages/conversation/bi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/viber/voip/messages/conversation/bi;->b:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ax;ILcom/viber/voip/messages/conversation/bi;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ax;->a(ILcom/viber/voip/messages/conversation/bi;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ax;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/viber/voip/messages/conversation/ax;->i:I

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 437
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 438
    if-eqz p5, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/ax;->e:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    invoke-virtual {v1, p3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v2}, Lcom/viber/voip/widget/aa;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v2}, Lcom/viber/voip/widget/aa;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 442
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 443
    if-eqz p5, :cond_1

    const v0, 0x7f02040b

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 444
    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/conversation/ax;->d:I

    goto :goto_0

    .line 443
    :cond_1
    const v0, 0x7f02040a

    goto :goto_1
.end method

.method private b(Landroid/text/Spannable;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/viber/voip/messages/conversation/ax;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 123
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 124
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/text/Spannable;IIZ)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ax;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ax;->a(I)V

    return-void
.end method

.method private b(Lcom/viber/voip/widget/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->a()V

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ax;->b()V

    .line 101
    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ax;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->j:Lcom/viber/voip/messages/conversation/bi;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/ax;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/ax;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ax;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/viber/voip/messages/conversation/ax;->a([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/ay;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ay;-><init>(Lcom/viber/voip/messages/conversation/ax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/viber/voip/messages/conversation/ax;->a([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ax;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ax;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ax;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 154
    const-string/jumbo v0, "setupEditorListeners"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->c(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/viber/voip/messages/conversation/az;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/az;-><init>(Lcom/viber/voip/messages/conversation/ax;)V

    .line 162
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    new-instance v2, Lcom/viber/voip/messages/conversation/ba;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/conversation/ba;-><init>(Lcom/viber/voip/messages/conversation/ax;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/aa;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    new-instance v2, Lcom/viber/voip/messages/conversation/bb;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/conversation/bb;-><init>(Lcom/viber/voip/messages/conversation/ax;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/aa;->setOnSelectionChangedListener(Lcom/viber/voip/widget/ae;)V

    .line 261
    new-instance v0, Lcom/viber/voip/messages/conversation/be;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/be;-><init>(Lcom/viber/voip/messages/conversation/ax;)V

    .line 326
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/aa;->setFilters([Landroid/text/InputFilter;)V

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ax;->g:Lcom/viber/voip/widget/aa;

    new-instance v1, Lcom/viber/voip/messages/conversation/bg;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/bg;-><init>(Lcom/viber/voip/messages/conversation/ax;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 353
    return-void
.end method

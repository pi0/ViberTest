.class public abstract Lcom/viber/voip/util/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Landroid/content/res/Resources;

.field protected c:Landroid/content/Context;

.field private d:Lcom/viber/voip/util/b/s;

.field private e:Z

.field private final f:Ljava/lang/Object;

.field private g:Lcom/viber/voip/util/b/al;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/viber/voip/util/b/ad;->e:Z

    .line 64
    iput-boolean v0, p0, Lcom/viber/voip/util/b/ad;->a:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->f:Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->c:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/viber/voip/util/b/ag;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lcom/viber/voip/util/b/ad;->b(Landroid/widget/ImageView;)Lcom/viber/voip/util/b/ag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/ad;Lcom/viber/voip/util/b/al;)Lcom/viber/voip/util/b/al;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/viber/voip/util/b/ad;->g:Lcom/viber/voip/util/b/al;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/util/b/ad;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 766
    iget-boolean v0, p3, Lcom/viber/voip/util/b/x;->f:Z

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 770
    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v0, p3, Lcom/viber/voip/util/b/x;->d:Z

    if-eqz v0, :cond_1

    .line 772
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    iget-object v5, p3, Lcom/viber/voip/util/b/x;->a:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    aput-object p2, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 775
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/ad;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/widget/ImageView;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 431
    invoke-static {p1}, Lcom/viber/voip/util/b/ad;->b(Landroid/widget/ImageView;)Lcom/viber/voip/util/b/ag;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_1

    .line 434
    invoke-static {v1}, Lcom/viber/voip/util/b/ag;->a(Lcom/viber/voip/util/b/ag;)Landroid/net/Uri;

    move-result-object v2

    .line 435
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    :cond_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/ag;->a(Z)Z

    .line 443
    :cond_1
    :goto_0
    return v0

    .line 440
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/viber/voip/util/b/ag;
    .locals 2
    .parameter

    .prologue
    .line 451
    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    instance-of v1, v0, Lcom/viber/voip/util/b/af;

    if-eqz v1, :cond_0

    .line 454
    check-cast v0, Lcom/viber/voip/util/b/af;

    .line 455
    invoke-virtual {v0}, Lcom/viber/voip/util/b/af;->a()Lcom/viber/voip/util/b/ag;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 476
    if-nez p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 496
    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lcom/viber/voip/util/b/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/util/b/ad;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/viber/voip/util/b/ad;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/util/b/ad;)Lcom/viber/voip/util/b/s;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 462
    if-eqz p0, :cond_0

    .line 463
    sget-object v0, Lcom/viber/voip/util/fq;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)Landroid/graphics/Bitmap;
.end method

.method protected a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    invoke-virtual {v1, p1}, Lcom/viber/voip/util/b/s;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 396
    :catch_0
    move-exception v1

    .line 398
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/s;->a()V

    .line 828
    :cond_0
    return-void
.end method

.method a(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 279
    new-instance v1, Lcom/viber/voip/util/b/ag;

    invoke-direct {v1, p0, p2, p5}, Lcom/viber/voip/util/b/ag;-><init>(Lcom/viber/voip/util/b/ad;Landroid/widget/ImageView;Lcom/viber/voip/util/b/al;)V

    .line 280
    if-nez p3, :cond_0

    iget-object p3, p4, Lcom/viber/voip/util/b/x;->a:Landroid/graphics/Bitmap;

    .line 281
    :cond_0
    if-eqz p2, :cond_1

    .line 282
    new-instance v0, Lcom/viber/voip/util/b/af;

    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v2, p3, v1}, Lcom/viber/voip/util/b/af;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/viber/voip/util/b/ag;)V

    .line 284
    invoke-direct {p0, p2, v0, p4, v3}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    .line 289
    :cond_1
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/viber/voip/util/b/a;->d:Ljava/util/concurrent/Executor;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/util/b/ag;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 290
    return-void

    .line 289
    :cond_2
    sget-object v0, Lcom/viber/voip/util/b/a;->c:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 129
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 153
    if-nez p3, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ImageFetcherConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p1, :cond_4

    .line 159
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p3, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    iget-object v2, p3, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2, v0, p3, v4}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    .line 166
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    iget-object v0, p3, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-interface {p4, p1, v0, v1}, Lcom/viber/voip/util/b/al;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 185
    :cond_2
    :goto_1
    return-void

    .line 163
    :cond_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_7

    iget-boolean v0, p3, Lcom/viber/voip/util/b/x;->e:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p3, Lcom/viber/voip/util/b/x;->g:Z

    if-nez v0, :cond_7

    .line 173
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    iget-object v1, p3, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    invoke-static {p1, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    :goto_2
    if-eqz v0, :cond_6

    .line 178
    if-eqz p2, :cond_5

    .line 179
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2, v1, p3, v4}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    .line 181
    :cond_5
    if-eqz p4, :cond_2

    invoke-interface {p4, p1, v0, v4}, Lcom/viber/voip/util/b/al;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 182
    :cond_6
    invoke-static {p1, p2}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 183
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    goto :goto_1

    :cond_7
    move-object v0, v3

    goto :goto_2
.end method

.method public a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 110
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/util/b/u;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 356
    invoke-static {p1, p2, p3}, Lcom/viber/voip/util/b/s;->a(Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/util/b/u;Ljava/lang/String;)Lcom/viber/voip/util/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    .line 357
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 358
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 205
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 232
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->b()Landroid/net/Uri;

    move-result-object p2

    .line 233
    :cond_0
    if-nez p2, :cond_2

    .line 235
    if-eqz p3, :cond_1

    iget-object v0, p4, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    iget-object v2, p4, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p3, v0, p4, v3}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    .line 237
    if-eqz p5, :cond_1

    iget-object v0, p4, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-interface {p5, p2, v0, v1}, Lcom/viber/voip/util/b/al;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-static {p2}, Lcom/viber/voip/util/upload/n;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 243
    const/4 v0, 0x0

    .line 244
    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v1, :cond_3

    iget-boolean v1, p4, Lcom/viber/voip/util/b/x;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p4, Lcom/viber/voip/util/b/x;->g:Z

    if-nez v1, :cond_3

    .line 245
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    iget-object v1, p4, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    invoke-static {v2, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    :cond_3
    if-eqz v0, :cond_4

    .line 250
    if-eqz p3, :cond_1

    .line 251
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p3, v1, p4, v3}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    .line 252
    if-eqz p5, :cond_1

    invoke-interface {p5, p2, v0, v3}, Lcom/viber/voip/util/b/al;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 257
    :cond_4
    new-instance v0, Lcom/viber/voip/util/b/ak;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/b/ak;-><init>(Lcom/viber/voip/util/b/ad;Landroid/net/Uri;Lcom/viber/voip/contacts/b/d;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->g:Lcom/viber/voip/util/b/al;

    .line 260
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->g:Lcom/viber/voip/util/b/al;

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/util/b/u;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 344
    new-instance v0, Lcom/viber/voip/util/b/s;

    invoke-direct {v0, p1}, Lcom/viber/voip/util/b/s;-><init>(Lcom/viber/voip/util/b/u;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    .line 345
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 346
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_1

    .line 851
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 854
    check-cast p1, Ljava/util/Collection;

    .line 855
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 856
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 857
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 858
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 859
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    goto :goto_0

    .line 861
    :cond_0
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 862
    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v2}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 863
    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v2}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 864
    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v2}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 865
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    check-cast p1, Landroid/net/Uri;

    sget-object v1, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    invoke-static {p1, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->b(Ljava/lang/String;)Z

    .line 868
    :cond_1
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_1

    .line 321
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 323
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 324
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 325
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 326
    iget-object v2, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v3, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v3}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 329
    :cond_1
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 791
    iget-object v1, p0, Lcom/viber/voip/util/b/ad;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :try_start_0
    iput-boolean p1, p0, Lcom/viber/voip/util/b/ad;->a:Z

    .line 793
    iget-boolean v0, p0, Lcom/viber/voip/util/b/ad;->a:Z

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 796
    :cond_0
    monitor-exit v1

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()Lcom/viber/voip/util/b/s;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    return-object v0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v1, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    invoke-static {p1, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 304
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {p1, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 305
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v1, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    invoke-static {p1, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 306
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    sget-object v1, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    invoke-static {p1, v1}, Lcom/viber/voip/util/b/ad;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;)Z

    .line 308
    :cond_1
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 88
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/s;->b()V

    .line 834
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/s;->c()V

    .line 840
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/s;->d()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/b/ad;->d:Lcom/viber/voip/util/b/s;

    .line 847
    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 871
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 872
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 875
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 876
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 879
    new-instance v0, Lcom/viber/voip/util/b/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/ah;-><init>(Lcom/viber/voip/util/b/ad;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ah;->c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 880
    return-void
.end method

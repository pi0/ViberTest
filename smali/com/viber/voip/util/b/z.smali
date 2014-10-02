.class public Lcom/viber/voip/util/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/viber/voip/util/b/aa;

.field private i:I

.field private j:I

.field private k:Lcom/viber/voip/util/b/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/viber/voip/util/b/z;->c:Z

    .line 188
    iput-boolean v0, p0, Lcom/viber/voip/util/b/z;->d:Z

    .line 189
    iput-boolean v0, p0, Lcom/viber/voip/util/b/z;->e:Z

    .line 190
    iput-boolean v0, p0, Lcom/viber/voip/util/b/z;->f:Z

    .line 191
    iput-boolean v1, p0, Lcom/viber/voip/util/b/z;->g:Z

    .line 192
    sget-object v0, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    iput-object v0, p0, Lcom/viber/voip/util/b/z;->h:Lcom/viber/voip/util/b/aa;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/b/z;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/viber/voip/util/b/z;->i:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/util/b/z;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/util/b/z;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/z;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/util/b/z;Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/aa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->h:Lcom/viber/voip/util/b/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/util/b/z;Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->k:Lcom/viber/voip/util/b/l;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/util/b/z;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/util/b/z;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/viber/voip/util/b/z;->j:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/util/b/z;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/util/b/z;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/util/b/z;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/util/b/z;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->d:Z

    return p1
.end method

.method private static c(ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-static {}, Lcom/viber/voip/util/b/x;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 383
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/util/b/x;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v1

    .line 391
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/util/b/z;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/viber/voip/util/b/z;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/util/b/z;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/util/b/z;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/viber/voip/util/b/z;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/util/b/z;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->e:Z

    return p1
.end method

.method static synthetic e(Lcom/viber/voip/util/b/z;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/viber/voip/util/b/z;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/util/b/z;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/viber/voip/util/b/z;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/util/b/z;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/viber/voip/util/b/z;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/util/b/z;)Lcom/viber/voip/util/b/aa;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/util/b/z;->h:Lcom/viber/voip/util/b/aa;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/util/b/z;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/viber/voip/util/b/z;->i:I

    return v0
.end method

.method static synthetic j(Lcom/viber/voip/util/b/z;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/viber/voip/util/b/z;->j:I

    return v0
.end method

.method static synthetic k(Lcom/viber/voip/util/b/z;)Lcom/viber/voip/util/b/l;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/util/b/z;->k:Lcom/viber/voip/util/b/l;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/util/b/z;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/b/z;->a:Landroid/graphics/Bitmap;

    .line 231
    return-object p0
.end method

.method public a(II)Lcom/viber/voip/util/b/z;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 333
    sget-object v0, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    iput-object v0, p0, Lcom/viber/voip/util/b/z;->h:Lcom/viber/voip/util/b/aa;

    .line 334
    iput p2, p0, Lcom/viber/voip/util/b/z;->j:I

    .line 335
    iput p1, p0, Lcom/viber/voip/util/b/z;->i:I

    .line 336
    return-object p0
.end method

.method public a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-static {p1, p2}, Lcom/viber/voip/util/b/z;->c(ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/z;->a:Landroid/graphics/Bitmap;

    .line 226
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->b:Landroid/graphics/Bitmap;

    .line 249
    return-object p0
.end method

.method public a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->h:Lcom/viber/voip/util/b/aa;

    .line 348
    return-object p0
.end method

.method public a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/viber/voip/util/b/z;->k:Lcom/viber/voip/util/b/l;

    .line 360
    return-object p0
.end method

.method public a(Z)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->c:Z

    .line 273
    return-object p0
.end method

.method public b()Lcom/viber/voip/util/b/x;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lcom/viber/voip/util/b/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/b/x;-><init>(Lcom/viber/voip/util/b/z;Lcom/viber/voip/util/b/y;)V

    return-object v0
.end method

.method public b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-static {p1, p2}, Lcom/viber/voip/util/b/z;->c(ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/z;->b:Landroid/graphics/Bitmap;

    .line 263
    return-object p0
.end method

.method public b(Z)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->d:Z

    .line 278
    return-object p0
.end method

.method public c(Z)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->e:Z

    .line 299
    return-object p0
.end method

.method public d(Z)Lcom/viber/voip/util/b/z;
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/viber/voip/util/b/z;->g:Z

    .line 315
    return-object p0
.end method

.class Lcom/viber/voip/util/b/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/ad;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Lcom/viber/voip/util/b/x;

.field private final f:Lcom/viber/voip/util/b/al;

.field private final g:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/viber/voip/util/b/ad;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/viber/voip/util/b/ai;->a:Lcom/viber/voip/util/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p3, p0, Lcom/viber/voip/util/b/ai;->b:Landroid/net/Uri;

    .line 563
    iput-object p2, p0, Lcom/viber/voip/util/b/ai;->c:Landroid/net/Uri;

    .line 564
    iput-object p4, p0, Lcom/viber/voip/util/b/ai;->d:Landroid/graphics/Bitmap;

    .line 565
    iput-object p6, p0, Lcom/viber/voip/util/b/ai;->e:Lcom/viber/voip/util/b/x;

    .line 566
    iput-object p7, p0, Lcom/viber/voip/util/b/ai;->f:Lcom/viber/voip/util/b/al;

    .line 567
    iput-object p5, p0, Lcom/viber/voip/util/b/ai;->g:Landroid/widget/ImageView;

    .line 568
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/util/b/ad;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;Lcom/viber/voip/util/b/ae;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/util/b/ai;-><init>(Lcom/viber/voip/util/b/ad;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/b/ai;)Lcom/viber/voip/util/b/x;
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/viber/voip/util/b/ai;->e:Lcom/viber/voip/util/b/x;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/util/b/ai;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/viber/voip/util/b/ai;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/util/b/ai;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/viber/voip/util/b/ai;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/util/b/ai;)Lcom/viber/voip/util/b/al;
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/viber/voip/util/b/ai;->f:Lcom/viber/voip/util/b/al;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 587
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/b/aj;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/util/b/aj;-><init>(Lcom/viber/voip/util/b/ai;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 573
    const/16 v0, 0xf

    if-ne p2, v0, :cond_0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/ai;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/viber/voip/util/b/ai;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/util/bu;->a(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    goto :goto_0
.end method

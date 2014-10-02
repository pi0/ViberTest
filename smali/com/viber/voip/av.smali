.class Lcom/viber/voip/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/as;

.field private b:Landroid/net/Uri;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/viber/voip/as;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/viber/voip/av;->a:Lcom/viber/voip/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/as;Lcom/viber/voip/at;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/viber/voip/av;-><init>(Lcom/viber/voip/as;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput p1, p0, Lcom/viber/voip/av;->c:I

    .line 337
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/viber/voip/av;->b:Landroid/net/Uri;

    .line 333
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 342
    iget v0, p0, Lcom/viber/voip/av;->c:I

    .line 344
    iget-object v1, p0, Lcom/viber/voip/av;->a:Lcom/viber/voip/as;

    invoke-static {v1}, Lcom/viber/voip/as;->b(Lcom/viber/voip/as;)I

    move-result v1

    iget v2, p0, Lcom/viber/voip/av;->c:I

    if-eq v1, v2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/av;->a:Lcom/viber/voip/as;

    iget-object v2, p0, Lcom/viber/voip/av;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/viber/voip/as;->e()I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 352
    new-instance v2, Lcom/viber/voip/aw;

    invoke-direct {v2, v1, v4}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 354
    iget-object v1, p0, Lcom/viber/voip/av;->a:Lcom/viber/voip/as;

    invoke-static {v1}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/viber/voip/av;->a:Lcom/viber/voip/as;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;Landroid/util/Pair;)Landroid/util/Pair;

    .line 356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, p0, Lcom/viber/voip/av;->a:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->g(Lcom/viber/voip/as;)V

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class Lcom/viber/voip/util/b/ag;
.super Lcom/viber/voip/util/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/util/b/a",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/ad;

.field private e:Landroid/net/Uri;

.field private f:Lcom/viber/voip/util/b/x;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/viber/voip/util/b/al;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/b/ad;Landroid/widget/ImageView;Lcom/viber/voip/util/b/al;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-direct {p0}, Lcom/viber/voip/util/b/a;-><init>()V

    .line 613
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/ag;->g:Ljava/lang/ref/WeakReference;

    .line 614
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/ag;->h:Ljava/lang/ref/WeakReference;

    .line 615
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/util/b/ag;->i:Z

    .line 616
    return-void

    .line 615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/ag;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->e:Landroid/net/Uri;

    return-object v0
.end method

.method private e()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 731
    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->a(Landroid/widget/ImageView;)Lcom/viber/voip/util/b/ag;

    move-result-object v1

    .line 733
    if-ne p0, v1, :cond_0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/ag;->d([Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 698
    invoke-virtual {p0}, Lcom/viber/voip/util/b/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->b(Lcom/viber/voip/util/b/ad;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, v1

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/util/b/ag;->e()Landroid/widget/ImageView;

    move-result-object v3

    .line 703
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/viber/voip/util/b/ag;->i:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 705
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    iget-object v4, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    invoke-static {v0, v3, p1, v4, v2}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/util/b/ad;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/viber/voip/util/b/x;Z)V

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/al;

    .line 710
    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/viber/voip/util/b/ag;->i:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/viber/voip/util/b/ag;->i:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 712
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 713
    :cond_4
    iget-object v3, p0, Lcom/viber/voip/util/b/ag;->e:Landroid/net/Uri;

    iget-object v4, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-object v4, v4, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    if-ne v1, v4, :cond_6

    :goto_0
    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/b/al;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 715
    :cond_5
    return-void

    .line 713
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/ag;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected b(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter

    .prologue
    .line 719
    invoke-super {p0, p1}, Lcom/viber/voip/util/b/a;->b(Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/util/b/ad;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/util/b/ad;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 722
    monitor-exit v1

    .line 723
    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/ag;->b(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected varargs d([Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    aget-object v0, p1, v2

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/util/b/ag;->e:Landroid/net/Uri;

    .line 626
    aget-object v0, p1, v1

    check-cast v0, Lcom/viber/voip/util/b/x;

    iput-object v0, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    .line 627
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->e:Landroid/net/Uri;

    iget-object v4, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-object v4, v4, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v4}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/aa;)Ljava/lang/String;

    move-result-object v6

    .line 632
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/util/b/ad;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 633
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    iget-boolean v0, v0, Lcom/viber/voip/util/b/ad;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/util/b/ag;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 635
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/util/b/ad;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    goto :goto_0

    .line 638
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    invoke-virtual {p0}, Lcom/viber/voip/util/b/ag;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/util/b/ag;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/util/b/ag;->i:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/viber/voip/util/b/ag;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->b(Lcom/viber/voip/util/b/ad;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 645
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v4}, Lcom/viber/voip/util/b/ad;->c(Lcom/viber/voip/util/b/ad;)Lcom/viber/voip/util/b/s;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-boolean v4, v4, Lcom/viber/voip/util/b/x;->e:Z

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    .line 646
    iget-object v4, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v4, v6}, Lcom/viber/voip/util/b/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 654
    :goto_2
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-boolean v5, v5, Lcom/viber/voip/util/b/x;->g:Z

    if-eqz v5, :cond_a

    :cond_2
    if-eqz v0, :cond_a

    .line 655
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    iget-object v5, p0, Lcom/viber/voip/util/b/ag;->e:Landroid/net/Uri;

    iget-object v7, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v5, v7}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 658
    if-eqz v5, :cond_9

    move-object v0, v5

    .line 660
    :goto_3
    if-eqz v5, :cond_6

    .line 665
    :goto_4
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-object v1, v1, Lcom/viber/voip/util/b/x;->h:Lcom/viber/voip/util/b/l;

    if-eqz v1, :cond_3

    .line 666
    iget-object v1, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-object v1, v1, Lcom/viber/voip/util/b/x;->h:Lcom/viber/voip/util/b/l;

    invoke-interface {v1, v0}, Lcom/viber/voip/util/b/l;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 670
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-boolean v1, v1, Lcom/viber/voip/util/b/x;->e:Z

    .line 671
    if-nez v0, :cond_8

    .line 672
    iget-object v0, p0, Lcom/viber/voip/util/b/ag;->f:Lcom/viber/voip/util/b/x;

    iget-object v0, v0, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 679
    :goto_5
    if-eqz v1, :cond_7

    .line 680
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    iget-object v3, v3, Lcom/viber/voip/util/b/ad;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 682
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v2}, Lcom/viber/voip/util/b/ad;->c(Lcom/viber/voip/util/b/ad;)Lcom/viber/voip/util/b/s;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 683
    iget-object v2, p0, Lcom/viber/voip/util/b/ag;->a:Lcom/viber/voip/util/b/ad;

    invoke-static {v2}, Lcom/viber/voip/util/b/ad;->c(Lcom/viber/voip/util/b/ad;)Lcom/viber/voip/util/b/s;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lcom/viber/voip/util/b/s;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 689
    :cond_4
    :goto_6
    return-object v0

    .line 638
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    .line 644
    goto :goto_1

    :cond_6
    move v1, v2

    .line 660
    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_6

    :cond_8
    move v2, v1

    move-object v1, v0

    goto :goto_5

    :cond_9
    move-object v0, v4

    goto :goto_3

    :cond_a
    move v1, v2

    move-object v0, v4

    goto :goto_4

    :cond_b
    move-object v4, v3

    goto :goto_2
.end method

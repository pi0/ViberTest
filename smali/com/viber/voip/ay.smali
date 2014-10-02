.class Lcom/viber/voip/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/net/Uri;

.field final b:I

.field final synthetic c:Lcom/viber/voip/as;


# direct methods
.method public constructor <init>(Lcom/viber/voip/as;ILandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/viber/voip/ay;->c:Lcom/viber/voip/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p3, p0, Lcom/viber/voip/ay;->a:Landroid/net/Uri;

    .line 299
    iput p2, p0, Lcom/viber/voip/ay;->b:I

    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcom/viber/voip/ay;->c:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->e(Lcom/viber/voip/as;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 308
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 309
    iget-object v0, p0, Lcom/viber/voip/ay;->c:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->f(Lcom/viber/voip/as;)Lcom/viber/voip/util/o;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/ay;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/viber/voip/util/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/viber/voip/ay;->c:Lcom/viber/voip/as;

    iget-object v1, p0, Lcom/viber/voip/ay;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/viber/voip/as;->d()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    :cond_0
    new-instance v1, Lcom/viber/voip/aw;

    invoke-direct {v1, v0, v3}, Lcom/viber/voip/aw;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 320
    iget-object v0, p0, Lcom/viber/voip/ay;->c:Lcom/viber/voip/as;

    iget-object v2, p0, Lcom/viber/voip/ay;->a:Landroid/net/Uri;

    invoke-static {v0, v2, v1}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;Landroid/net/Uri;Lcom/viber/voip/aw;)V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/ay;->c:Lcom/viber/voip/as;

    iget v2, p0, Lcom/viber/voip/ay;->b:I

    invoke-static {v0, v2, v1}, Lcom/viber/voip/as;->a(Lcom/viber/voip/as;ILcom/viber/voip/aw;)V

    .line 323
    return-void

    .line 311
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

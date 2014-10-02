.class Lcom/viber/voip/contacts/c/f/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/ad;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/a/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/jni/CAddressBookInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 388
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->o(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    sget-object v2, Lcom/viber/voip/contacts/c/f/b/a/m;->f:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 392
    monitor-exit v1

    .line 443
    :goto_0
    return-void

    .line 394
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->p(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/jni/controller/PhoneController;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/jni/controller/PhoneController;->generateSequence()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->b(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    .line 399
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->q(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->e(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a;->d(I)V

    .line 400
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->r(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->e(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a;->c(I)V

    .line 402
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v5, [Lcom/viber/jni/CAddressBookInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/jni/CAddressBookInfo;

    .line 404
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->s(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v1

    if-le v1, v2, :cond_1

    .line 405
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1, v5}, Lcom/viber/voip/contacts/c/f/b/a/a;->c(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    .line 408
    :cond_1
    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->t(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->u(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->w(Lcom/viber/voip/contacts/c/f/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->v(Lcom/viber/voip/contacts/c/f/b/a/a;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getAddressBookVersion()I

    move-result v1

    .line 414
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v3}, Lcom/viber/voip/contacts/c/f/b/a/a;->x(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/jni/controller/PhoneController;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v4}, Lcom/viber/voip/contacts/c/f/b/a/a;->e(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v4

    invoke-interface {v3, v0, v4, v1}, Lcom/viber/jni/controller/PhoneController;->shareAddressBookList([Lcom/viber/jni/CAddressBookInfo;II)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->b(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z

    .line 417
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->f(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, p2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    goto/16 :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, v5}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    goto/16 :goto_0

    .line 424
    :cond_5
    array-length v1, v0

    if-ne v1, v2, :cond_7

    .line 427
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getAddressBookVersion()I

    move-result v1

    .line 428
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->y(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/jni/controller/PhoneController;

    move-result-object v2

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v3}, Lcom/viber/voip/contacts/c/f/b/a/a;->e(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v3

    invoke-interface {v2, v0, v3, v1}, Lcom/viber/jni/controller/PhoneController;->shareContact(Lcom/viber/jni/CAddressBookInfo;II)Z

    move-result v0

    .line 431
    if-eqz v0, :cond_6

    .line 432
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->z(Lcom/viber/voip/contacts/c/f/b/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->k(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    goto/16 :goto_0

    .line 435
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, v5}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    goto/16 :goto_0

    .line 441
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/d;->b:Lcom/viber/voip/contacts/c/f/b/a/a;

    sget-object v1, Lcom/viber/voip/contacts/c/f/b/a/m;->g:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Lcom/viber/voip/contacts/c/f/b/a/m;)V

    goto/16 :goto_0
.end method

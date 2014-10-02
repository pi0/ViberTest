.class abstract Lcom/viber/voip/util/upload/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/net/Uri;

.field public final b:Lcom/viber/voip/util/upload/p;

.field protected final c:Lcom/viber/voip/util/upload/ak;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Lcom/viber/voip/util/upload/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    .line 355
    iput-object p2, p0, Lcom/viber/voip/util/upload/ah;->c:Lcom/viber/voip/util/upload/ak;

    .line 356
    iput-object p3, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    .line 357
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/viber/voip/util/http/HttpRequest;
.end method

.method protected a(Lcom/viber/voip/util/upload/r;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 369
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 370
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "execute, uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isCanceled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 371
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 454
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move v0, v2

    .line 369
    goto :goto_0

    .line 375
    :cond_2
    new-instance v3, Lcom/viber/voip/util/upload/al;

    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/viber/voip/util/upload/ah;->c:Lcom/viber/voip/util/upload/ak;

    invoke-direct {v3, v0, v4}, Lcom/viber/voip/util/upload/al;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;)V

    .line 378
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->c()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 379
    :try_start_0
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    if-eqz v0, :cond_3

    .line 383
    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    if-eqz v2, :cond_0

    .line 384
    const-string/jumbo v2, "startUpload image is already uploaded! notify listeners"

    invoke-static {v2}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 391
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/ah;->a()Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " starting upload request to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 397
    :try_start_3
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/ac;->a(Ljava/util/Map;)V

    .line 398
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 402
    :try_start_4
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v1, Lcom/viber/voip/util/upload/q;

    invoke-direct {v1}, Lcom/viber/voip/util/upload/q;-><init>()V

    .line 406
    invoke-virtual {v1, v0}, Lcom/viber/voip/util/upload/q;->a(Ljava/io/InputStream;)Lcom/viber/voip/util/upload/r;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 409
    :try_start_5
    iget-object v0, v1, Lcom/viber/voip/util/upload/r;->b:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hex id from server parsed successfully: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/viber/voip/util/upload/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", decimal:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    .line 416
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/viber/voip/util/upload/ah;->a(Lcom/viber/voip/util/upload/r;)V

    .line 418
    iget v0, v1, Lcom/viber/voip/util/upload/r;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 440
    :pswitch_1
    iget-object v0, v1, Lcom/viber/voip/util/upload/r;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 444
    :catch_0
    move-exception v0

    .line 446
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-static {v0, v7, v2}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 402
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3

    .line 447
    :catch_1
    move-exception v0

    .line 449
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 411
    :catch_2
    move-exception v0

    .line 412
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid hex id from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/viber/voip/util/upload/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 413
    throw v0
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3

    .line 450
    :catch_3
    move-exception v0

    .line 452
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 420
    :pswitch_2
    :try_start_9
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/ah;->b()Ljava/lang/String;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_4

    .line 424
    iget-object v1, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 427
    :cond_4
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->c()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_3

    .line 428
    :try_start_a
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Lcom/viber/voip/util/upload/r;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 431
    :try_start_b
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->b:Lcom/viber/voip/util/upload/p;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/viber/voip/util/upload/ah;->a:Landroid/net/Uri;

    iget-object v1, v1, Lcom/viber/voip/util/upload/r;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    .line 429
    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

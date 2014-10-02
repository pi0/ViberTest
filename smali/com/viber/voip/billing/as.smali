.class Lcom/viber/voip/billing/as;
.super Lcom/viber/voip/billing/bl;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/billing/bh;

.field final synthetic c:Lcom/viber/voip/billing/bn;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/bh;Lcom/viber/voip/billing/bn;Ljava/lang/String;ILandroid/app/Activity;)V
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
    .line 427
    iput-object p1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iput-object p3, p0, Lcom/viber/voip/billing/as;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    iput-object p5, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    iput-object p6, p0, Lcom/viber/voip/billing/as;->d:Ljava/lang/String;

    iput p7, p0, Lcom/viber/voip/billing/as;->e:I

    iput-object p8, p0, Lcom/viber/voip/billing/as;->f:Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/bl;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 431
    iget-object v1, p0, Lcom/viber/voip/billing/as;->a:Ljava/lang/String;

    const-string/jumbo v2, "subs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-boolean v1, v1, Lcom/viber/voip/billing/ap;->d:Z

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3f1

    const-string/jumbo v3, "Subscriptions are not available."

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    invoke-static {v2, v1, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    .line 486
    :goto_0
    return-void

    .line 439
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    invoke-static {v1}, Lcom/viber/voip/billing/ap;->c(Lcom/viber/voip/billing/ap;)Lcom/android/b/a/a;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Constructing buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 442
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, v3, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v4}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/billing/as;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/billing/as;->d:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 443
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    invoke-static {v2, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Landroid/os/Bundle;)I

    move-result v2

    .line 444
    if-eqz v2, :cond_1

    .line 445
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to buy item, Error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 447
    new-instance v1, Lcom/viber/voip/billing/bo;

    const-string/jumbo v3, "Unable to buy item"

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    invoke-static {v2, v1, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    .line 449
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SendIntentException while launching purchase flow for productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 466
    new-instance v1, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3ec

    const-string/jumbo v3, "Failed to send intent."

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    invoke-static {v2, v1, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    .line 468
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    invoke-static {v1, v8}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V

    goto/16 :goto_0

    .line 453
    :cond_1
    :try_start_1
    const-string/jumbo v2, "BUY_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 454
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/viber/voip/billing/as;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget v3, p0, Lcom/viber/voip/billing/as;->e:I

    iput v3, v1, Lcom/viber/voip/billing/ap;->h:I

    .line 456
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    iput-object v3, v1, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    .line 457
    iget-object v1, p0, Lcom/viber/voip/billing/as;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/billing/as;->e:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 470
    :catch_1
    move-exception v1

    .line 471
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException while launching purchase flow for productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 474
    new-instance v1, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while starting purchase flow"

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    invoke-static {v2, v1, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    .line 476
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    invoke-static {v1, v8}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V

    goto/16 :goto_0

    .line 478
    :catch_2
    move-exception v1

    .line 479
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while launching purchase flow for productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/as;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    new-instance v1, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "Exception while starting purchase flow"

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v3, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    invoke-static {v2, v1, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    .line 484
    iget-object v1, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    invoke-static {v1, v8}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V

    goto/16 :goto_0
.end method

.method a(Lcom/viber/voip/billing/bo;)V
    .locals 2
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/viber/voip/billing/as;->g:Lcom/viber/voip/billing/ap;

    iget-object v1, p0, Lcom/viber/voip/billing/as;->b:Lcom/viber/voip/billing/bh;

    invoke-static {v0, p1, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    .line 491
    return-void
.end method

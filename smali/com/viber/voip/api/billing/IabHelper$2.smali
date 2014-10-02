.class Lcom/viber/voip/api/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/api/billing/IabHelper;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$extraData:Ljava/lang/String;

.field final synthetic val$itemType:Ljava/lang/String;

.field final synthetic val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/viber/voip/api/billing/IabHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;ILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iput-object p2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$itemType:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$extraData:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    iput p6, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$requestCode:I

    iput-object p7, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Constructing buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$itemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-object v1, v1, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-object v3, v3, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$productId:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$itemType:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$extraData:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/viber/voip/api/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    #calls: Lcom/viber/voip/api/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I
    invoke-static {v2, v1}, Lcom/viber/voip/api/billing/IabHelper;->access$100(Lcom/viber/voip/api/billing/IabHelper;Landroid/os/Bundle;)I

    move-result v2

    .line 372
    if-eqz v2, :cond_1

    .line 373
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to buy item, Error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 375
    new-instance v1, Lcom/viber/voip/api/billing/IabResult;

    const-string/jumbo v3, "Unable to buy item"

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v2, 0x0

    #calls: Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V
    invoke-static {v1, v2}, Lcom/viber/voip/api/billing/IabHelper;->access$000(Lcom/viber/voip/api/billing/IabHelper;Z)V

    .line 405
    :goto_0
    return-void

    .line 381
    :cond_1
    const-string/jumbo v2, "BUY_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 382
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$requestCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget v3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$requestCode:I

    iput v3, v1, Lcom/viber/voip/api/billing/IabHelper;->mRequestCode:I

    .line 384
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-object v3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    iput-object v3, v1, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 385
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$requestCode:I

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
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SendIntentException while launching purchase flow for productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 393
    new-instance v1, Lcom/viber/voip/api/billing/IabResult;

    const/16 v2, -0x3ec

    const-string/jumbo v3, "Failed to send intent."

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v1, v9}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    #calls: Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V
    invoke-static {v1, v8}, Lcom/viber/voip/api/billing/IabHelper;->access$000(Lcom/viber/voip/api/billing/IabHelper;Z)V

    goto/16 :goto_0

    .line 397
    :catch_1
    move-exception v1

    .line 398
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException while launching purchase flow for productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    new-instance v1, Lcom/viber/voip/api/billing/IabResult;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while starting purchase flow"

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$2;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v1, v9}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$2;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    #calls: Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V
    invoke-static {v1, v8}, Lcom/viber/voip/api/billing/IabHelper;->access$000(Lcom/viber/voip/api/billing/IabHelper;Z)V

    goto/16 :goto_0
.end method

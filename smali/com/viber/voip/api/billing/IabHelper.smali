.class public Lcom/viber/voip/api/billing/IabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_PRODUCT_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_PRODUCT_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_PRODUCT_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mExecutor:Ljava/util/concurrent/ExecutorService;

.field mPendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

.field mQueueBlocked:Z

.field mRequestCode:I

.field mService:Lcom/viber/voip/api/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSubscriptionsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 976
    const-class v0, Lcom/viber/voip/api/billing/IabHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/api/billing/IabHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mDebugLog:Z

    .line 74
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mSetupDone:Z

    .line 80
    iput-boolean v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 148
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mQueueBlocked:Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mPendingTasks:Ljava/util/ArrayList;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/api/billing/IabHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/api/billing/IabHelper;Landroid/os/Bundle;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/viber/voip/api/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/viber/voip/api/billing/IabHelper;ZLjava/util/List;)Lcom/viber/voip/api/billing/IabInventory;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/api/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/viber/voip/api/billing/IabInventory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/api/billing/IabHelper;Lcom/viber/voip/api/billing/Purchase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/viber/voip/api/billing/IabHelper;->consume(Lcom/viber/voip/api/billing/Purchase;)V

    return-void
.end method

.method private checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    return-void
.end method

.method private consume(Lcom/viber/voip/api/billing/Purchase;)V
    .locals 5
    .parameter

    .prologue
    .line 620
    const-string/jumbo v0, "consume"

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 622
    iget-object v0, p1, Lcom/viber/voip/api/billing/Purchase;->mItemType:Ljava/lang/String;

    const-string/jumbo v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/viber/voip/api/billing/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/viber/voip/api/billing/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/viber/voip/api/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p1}, Lcom/viber/voip/api/billing/Purchase;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 630
    if-eqz v0, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 632
    new-instance v0, Lcom/viber/voip/api/billing/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PurchaseInfo is missing token for productId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    new-instance v1, Lcom/viber/voip/api/billing/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 636
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Consuming productId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/viber/voip/api/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 638
    if-nez v0, :cond_3

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Successfully consumed productId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 649
    return-void

    .line 642
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error consuming consuming productId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 643
    new-instance v2, Lcom/viber/voip/api/billing/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error consuming productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private consumeAsyncInternal(Ljava/util/List;Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/api/billing/Purchase;",
            ">;",
            "Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;",
            "Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 907
    const-string/jumbo v0, "consumeAsyncInternal"

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 908
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 909
    new-instance v0, Lcom/viber/voip/api/billing/IabHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/api/billing/IabHelper$4;-><init>(Lcom/viber/voip/api/billing/IabHelper;Ljava/util/List;Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->schedule(Ljava/lang/Runnable;)V

    .line 939
    return-void
.end method

.method private getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 750
    :try_start_0
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 754
    if-nez v0, :cond_0

    .line 755
    const-string/jumbo v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    .line 764
    :goto_0
    return v0

    .line 751
    :catch_0
    move-exception v0

    move v0, v1

    .line 752
    goto :goto_0

    .line 758
    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 759
    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 761
    :cond_2
    const-string/jumbo v2, "Unexpected type for bundle response code."

    invoke-virtual {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    move v0, v1

    .line 764
    goto :goto_0
.end method

.method private getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .parameter

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 771
    if-nez v0, :cond_0

    .line 772
    const-string/jumbo v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 773
    const/4 v0, 0x0

    .line 776
    :goto_0
    return v0

    .line 775
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 776
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 778
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 780
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 711
    const-string/jumbo v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string/jumbo v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 726
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 727
    rsub-int v0, p0, -0x3e8

    .line 728
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 734
    :goto_0
    return-object v0

    .line 729
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 732
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private queryInventory(ZLjava/util/List;)Lcom/viber/voip/api/billing/IabInventory;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/viber/voip/api/billing/IabInventory;"
        }
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/api/billing/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/viber/voip/api/billing/IabInventory;

    move-result-object v0

    return-object v0
.end method

.method private queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/viber/voip/api/billing/IabInventory;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/viber/voip/api/billing/IabInventory;"
        }
    .end annotation

    .prologue
    .line 511
    const-string/jumbo v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 513
    :try_start_0
    new-instance v0, Lcom/viber/voip/api/billing/IabInventory;

    invoke-direct {v0}, Lcom/viber/voip/api/billing/IabInventory;-><init>()V

    .line 514
    const-string/jumbo v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->queryPurchases(Lcom/viber/voip/api/billing/IabInventory;Ljava/lang/String;)I

    move-result v1

    .line 515
    if-eqz v1, :cond_0

    .line 516
    new-instance v0, Lcom/viber/voip/api/billing/IabException;

    const-string/jumbo v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    new-instance v1, Lcom/viber/voip/api/billing/IabException;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 519
    :cond_0
    if-eqz p1, :cond_1

    .line 520
    :try_start_1
    const-string/jumbo v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lcom/viber/voip/api/billing/IabHelper;->queryProductDetails(Ljava/lang/String;Lcom/viber/voip/api/billing/IabInventory;Ljava/util/List;)I

    move-result v1

    .line 521
    if-eqz v1, :cond_1

    .line 522
    new-instance v0, Lcom/viber/voip/api/billing/IabException;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 546
    :catch_1
    move-exception v0

    .line 547
    new-instance v1, Lcom/viber/voip/api/billing/IabException;

    const/16 v2, -0x3ea

    const-string/jumbo v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 527
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v1, :cond_3

    .line 528
    const-string/jumbo v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->queryPurchases(Lcom/viber/voip/api/billing/IabInventory;Ljava/lang/String;)I

    move-result v1

    .line 529
    if-eqz v1, :cond_2

    .line 530
    new-instance v0, Lcom/viber/voip/api/billing/IabException;

    const-string/jumbo v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 533
    :cond_2
    if-eqz p1, :cond_3

    .line 534
    const-string/jumbo v1, "subs"

    invoke-direct {p0, v1, v0, p3}, Lcom/viber/voip/api/billing/IabHelper;->queryProductDetails(Ljava/lang/String;Lcom/viber/voip/api/billing/IabInventory;Ljava/util/List;)I

    move-result v1

    .line 535
    if-eqz v1, :cond_3

    .line 536
    new-instance v0, Lcom/viber/voip/api/billing/IabException;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 541
    :cond_3
    return-object v0
.end method

.method private queryProductDetails(Ljava/lang/String;Lcom/viber/voip/api/billing/IabInventory;Ljava/util/List;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/viber/voip/api/billing/IabInventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 842
    const-string/jumbo v0, "Querying product details."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 843
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 844
    invoke-virtual {p2, p1}, Lcom/viber/voip/api/billing/IabInventory;->getAllOwnedProductIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 846
    if-eqz p3, :cond_1

    .line 847
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 848
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 849
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 854
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 855
    const-string/jumbo v0, "queryPrices: nothing to do because there are no productIds."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    move v0, v1

    .line 901
    :goto_1
    return v0

    .line 860
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 862
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v5, v0, 0x14

    .line 863
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v6, v0, 0x14

    move v2, v1

    .line 864
    :goto_2
    if-ge v2, v5, :cond_4

    .line 865
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 866
    mul-int/lit8 v0, v2, 0x14

    mul-int/lit8 v8, v2, 0x14

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v3, v0, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 867
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 869
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 871
    :cond_4
    if-eqz v6, :cond_6

    .line 872
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 873
    mul-int/lit8 v0, v5, 0x14

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 874
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 876
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 880
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 881
    const-string/jumbo v4, "ITEM_ID_LIST"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 882
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, p1, v3}, Lcom/viber/voip/api/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 883
    const-string/jumbo v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 884
    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    .line 885
    if-eqz v0, :cond_8

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProductDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 889
    :cond_8
    const-string/jumbo v0, "getProductDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 890
    const/16 v0, -0x3ea

    goto/16 :goto_1

    .line 894
    :cond_9
    const-string/jumbo v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 896
    new-instance v4, Lcom/viber/voip/api/billing/ProductDetails;

    invoke-direct {v4, p1, v0}, Lcom/viber/voip/api/billing/ProductDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got product details: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p2, v4}, Lcom/viber/voip/api/billing/IabInventory;->addProductDetails(Lcom/viber/voip/api/billing/ProductDetails;)V

    goto :goto_5

    :cond_a
    move v0, v1

    .line 901
    goto/16 :goto_1
.end method

.method private queryPurchases(Lcom/viber/voip/api/billing/IabInventory;Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 788
    const/4 v0, 0x0

    .line 791
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling getPurchases with continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/viber/voip/api/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 795
    invoke-direct {p0, v5}, Lcom/viber/voip/api/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Owned items response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 797
    if-eqz v0, :cond_1

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    move v4, v0

    .line 837
    :goto_0
    return v4

    .line 801
    :cond_1
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 804
    :cond_2
    const-string/jumbo v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 805
    const/16 v4, -0x3ea

    goto :goto_0

    .line 808
    :cond_3
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 810
    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 812
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move v3, v4

    .line 815
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 816
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 817
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 818
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 821
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ProductId is owned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 822
    new-instance v2, Lcom/viber/voip/api/billing/Purchase;

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/api/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v2}, Lcom/viber/voip/api/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 825
    const-string/jumbo v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Purchase data: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 830
    :cond_4
    invoke-virtual {p1, v2}, Lcom/viber/voip/api/billing/IabInventory;->addPurchase(Lcom/viber/voip/api/billing/Purchase;)V

    .line 815
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 833
    :cond_5
    const-string/jumbo v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method private schedule(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 942
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/api/billing/IabHelper;->schedule(Ljava/lang/Runnable;Z)V

    .line 943
    return-void
.end method

.method private declared-synchronized schedule(Ljava/lang/Runnable;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mQueueBlocked:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Queue is blocked, task pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :goto_0
    monitor-exit p0

    return-void

    .line 950
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Adding task to executor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setQueueBlocked(Z)V
    .locals 3
    .parameter

    .prologue
    .line 956
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/viber/voip/api/billing/IabHelper;->mQueueBlocked:Z

    .line 957
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mQueueBlocked:Z

    if-nez v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 959
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 961
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public consumeAsync(Lcom/viber/voip/api/billing/Purchase;Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 687
    const-string/jumbo v0, "consume"

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/viber/voip/api/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 691
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/api/billing/Purchase;",
            ">;",
            "Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 699
    const-string/jumbo v0, "consume"

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/viber/voip/api/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 701
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    const-string/jumbo v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mSetupDone:Z

    .line 276
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 277
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 279
    :cond_0
    iput-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 280
    iput-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    .line 281
    iput-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 286
    iput-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 288
    :cond_2
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/viber/voip/api/billing/IabHelper;->mDebugLog:Z

    .line 163
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/viber/voip/api/billing/IabHelper;->mDebugLog:Z

    .line 158
    iput-object p2, p0, Lcom/viber/voip/api/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/16 v7, -0x3ea

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 424
    iget v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mRequestCode:I

    if-eq p1, v2, :cond_0

    .line 489
    :goto_0
    return v0

    .line 426
    :cond_0
    const-string/jumbo v2, "handleActivityResult"

    invoke-direct {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V

    .line 429
    if-nez p3, :cond_2

    .line 430
    const-string/jumbo v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 431
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const-string/jumbo v2, "Null data in IAB result"

    invoke-direct {v0, v7, v2}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    :cond_1
    move v0, v1

    .line 433
    goto :goto_0

    .line 436
    :cond_2
    invoke-direct {p0, p3}, Lcom/viber/voip/api/billing/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 437
    const-string/jumbo v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    const-string/jumbo v3, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    if-ne p2, v4, :cond_8

    if-nez v0, :cond_8

    .line 441
    const-string/jumbo v0, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Purchase data: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data signature: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Extras: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 446
    if-eqz v2, :cond_3

    if-nez v3, :cond_5

    .line 447
    :cond_3
    const-string/jumbo v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    :cond_4
    move v0, v1

    .line 451
    goto/16 :goto_0

    .line 456
    :cond_5
    :try_start_0
    new-instance v0, Lcom/viber/voip/api/billing/Purchase;

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/api/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_6

    .line 458
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v3, Lcom/viber/voip/api/billing/IabResult;

    const/4 v4, 0x0

    const-string/jumbo v5, "Success"

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v0}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    move v0, v1

    .line 489
    goto/16 :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 464
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-direct {v0, v7, v2}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    :cond_7
    move v0, v1

    .line 466
    goto/16 :goto_0

    .line 470
    :cond_8
    if-ne p2, v4, :cond_9

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_6

    .line 474
    new-instance v2, Lcom/viber/voip/api/billing/IabResult;

    const-string/jumbo v3, "Problem purchashing item."

    invoke-direct {v2, v0, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v0, v2, v6}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    goto :goto_1

    .line 478
    :cond_9
    if-nez p2, :cond_a

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase canceled - Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 480
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const/16 v2, -0x3ed

    const-string/jumbo v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    goto :goto_1

    .line 484
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase failed. Result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/api/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 486
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const/16 v2, -0x3ee

    const-string/jumbo v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mPurchaseListener:Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    goto/16 :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/api/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    const-string/jumbo v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/api/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 352
    const-string/jumbo v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const/16 v1, -0x3f1

    const-string/jumbo v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 356
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/Purchase;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-direct {p0, v8}, Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V

    .line 363
    new-instance v0, Lcom/viber/voip/api/billing/IabHelper$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p5

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/api/billing/IabHelper$2;-><init>(Lcom/viber/voip/api/billing/IabHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;ILandroid/app/Activity;)V

    invoke-direct {p0, v0, v8}, Lcom/viber/voip/api/billing/IabHelper;->schedule(Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/api/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    const-string/jumbo v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/api/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/api/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 974
    return-void
.end method

.method public queryInventoryAsync(Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 602
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/viber/voip/api/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 603
    return-void
.end method

.method public queryInventoryAsync(ZLcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/viber/voip/api/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 607
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 579
    new-instance v0, Lcom/viber/voip/api/billing/IabHelper$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/api/billing/IabHelper$3;-><init>(Lcom/viber/voip/api/billing/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->schedule(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method

.method public startSetup(Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .parameter

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const-string/jumbo v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/viber/voip/api/billing/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/api/billing/IabHelper$1;-><init>(Lcom/viber/voip/api/billing/IabHelper;Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.api.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    if-eqz p1, :cond_1

    .line 260
    new-instance v0, Lcom/viber/voip/api/billing/IabResult;

    const/4 v1, 0x3

    const-string/jumbo v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/viber/voip/api/billing/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method

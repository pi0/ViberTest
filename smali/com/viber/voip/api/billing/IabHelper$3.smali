.class Lcom/viber/voip/api/billing/IabHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/api/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreProductIds:Ljava/util/List;

.field final synthetic val$queryProductDetails:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/api/billing/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/viber/voip/api/billing/IabHelper$3;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iput-boolean p2, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$queryProductDetails:Z

    iput-object p3, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$moreProductIds:Ljava/util/List;

    iput-object p4, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$listener:Lcom/viber/voip/api/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 581
    new-instance v1, Lcom/viber/voip/api/billing/IabResult;

    const/4 v0, 0x0

    const-string/jumbo v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    .line 584
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$3;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-boolean v3, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$queryProductDetails:Z

    iget-object v4, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$moreProductIds:Ljava/util/List;

    #calls: Lcom/viber/voip/api/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/viber/voip/api/billing/IabInventory;
    invoke-static {v2, v3, v4}, Lcom/viber/voip/api/billing/IabHelper;->access$200(Lcom/viber/voip/api/billing/IabHelper;ZLjava/util/List;)Lcom/viber/voip/api/billing/IabInventory;
    :try_end_0
    .catch Lcom/viber/voip/api/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 592
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/api/billing/IabHelper$3$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/viber/voip/api/billing/IabHelper$3$1;-><init>(Lcom/viber/voip/api/billing/IabHelper$3;Lcom/viber/voip/api/billing/IabResult;Lcom/viber/voip/api/billing/IabInventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    return-void

    .line 586
    :catch_0
    move-exception v1

    .line 587
    invoke-virtual {v1}, Lcom/viber/voip/api/billing/IabException;->getResult()Lcom/viber/voip/api/billing/IabResult;

    move-result-object v1

    goto :goto_0
.end method

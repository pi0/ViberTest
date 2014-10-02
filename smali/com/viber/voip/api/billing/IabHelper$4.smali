.class Lcom/viber/voip/api/billing/IabHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/api/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/billing/IabHelper;Ljava/util/List;Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/viber/voip/api/billing/IabHelper$4;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iput-object p2, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$singleListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$multiListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 912
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$purchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/api/billing/Purchase;

    .line 915
    :try_start_0
    iget-object v3, p0, Lcom/viber/voip/api/billing/IabHelper$4;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    #calls: Lcom/viber/voip/api/billing/IabHelper;->consume(Lcom/viber/voip/api/billing/Purchase;)V
    invoke-static {v3, v0}, Lcom/viber/voip/api/billing/IabHelper;->access$300(Lcom/viber/voip/api/billing/IabHelper;Lcom/viber/voip/api/billing/Purchase;)V

    .line 916
    new-instance v3, Lcom/viber/voip/api/billing/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Successful consume of productId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/viber/voip/api/billing/Purchase;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/viber/voip/api/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    invoke-virtual {v0}, Lcom/viber/voip/api/billing/IabException;->getResult()Lcom/viber/voip/api/billing/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$singleListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/api/billing/IabHelper$4$1;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/api/billing/IabHelper$4$1;-><init>(Lcom/viber/voip/api/billing/IabHelper$4;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$multiListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/api/billing/IabHelper$4$2;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/api/billing/IabHelper$4$2;-><init>(Lcom/viber/voip/api/billing/IabHelper$4;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 937
    :cond_2
    return-void
.end method

.class Lcom/viber/voip/api/billing/IabHelper$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/viber/voip/api/billing/IabHelper$4;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/billing/IabHelper$4;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/viber/voip/api/billing/IabHelper$4$1;->this$1:Lcom/viber/voip/api/billing/IabHelper$4;

    iput-object p2, p0, Lcom/viber/voip/api/billing/IabHelper$4$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 926
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4$1;->this$1:Lcom/viber/voip/api/billing/IabHelper$4;

    iget-object v2, v0, Lcom/viber/voip/api/billing/IabHelper$4;->val$singleListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4$1;->this$1:Lcom/viber/voip/api/billing/IabHelper$4;

    iget-object v0, v0, Lcom/viber/voip/api/billing/IabHelper$4;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/api/billing/Purchase;

    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$4$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/api/billing/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/api/billing/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/viber/voip/api/billing/Purchase;Lcom/viber/voip/api/billing/IabResult;)V

    .line 927
    return-void
.end method

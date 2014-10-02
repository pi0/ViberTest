.class Lcom/viber/voip/api/billing/IabHelper$4$2;
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
    .line 931
    iput-object p1, p0, Lcom/viber/voip/api/billing/IabHelper$4$2;->this$1:Lcom/viber/voip/api/billing/IabHelper$4;

    iput-object p2, p0, Lcom/viber/voip/api/billing/IabHelper$4$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 933
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$4$2;->this$1:Lcom/viber/voip/api/billing/IabHelper$4;

    iget-object v0, v0, Lcom/viber/voip/api/billing/IabHelper$4;->val$multiListener:Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$4$2;->this$1:Lcom/viber/voip/api/billing/IabHelper$4;

    iget-object v1, v1, Lcom/viber/voip/api/billing/IabHelper$4;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lcom/viber/voip/api/billing/IabHelper$4$2;->val$results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/api/billing/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 934
    return-void
.end method

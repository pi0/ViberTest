.class public Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;
.super Lcom/viber/voip/api/billing/IInAppBillingService$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/api/billing/InAppBillingService;


# direct methods
.method public constructor <init>(Lcom/viber/voip/api/billing/InAppBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    invoke-direct {p0}, Lcom/viber/voip/api/billing/IInAppBillingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    const-string/jumbo v0, "consumePurchase()"

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$100(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->getBillingService()Lcom/android/b/a/a;
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$200(Lcom/viber/voip/api/billing/InAppBillingService;)Lcom/android/b/a/a;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientBegin()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$300(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 223
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/b/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 228
    :goto_0
    return v0

    .line 225
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    throw v0

    .line 228
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    const-string/jumbo v0, "getBuyIntent()"

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$100(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->getBillingService()Lcom/android/b/a/a;
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$200(Lcom/viber/voip/api/billing/InAppBillingService;)Lcom/android/b/a/a;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientBegin()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$300(Lcom/viber/voip/api/billing/InAppBillingService;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 191
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 196
    :goto_0
    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    const-string/jumbo v0, "getPurchases()"

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$100(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->getBillingService()Lcom/android/b/a/a;
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$200(Lcom/viber/voip/api/billing/InAppBillingService;)Lcom/android/b/a/a;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientBegin()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$300(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 207
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 212
    :goto_0
    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    throw v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    const-string/jumbo v0, "getSkuDetails()"

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$100(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->getBillingService()Lcom/android/b/a/a;
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$200(Lcom/viber/voip/api/billing/InAppBillingService;)Lcom/android/b/a/a;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientBegin()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$300(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 175
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    throw v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    const-string/jumbo v0, "isBillingSupported()"

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$100(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->getBillingService()Lcom/android/b/a/a;
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$200(Lcom/viber/voip/api/billing/InAppBillingService;)Lcom/android/b/a/a;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientBegin()V
    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->access$300(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    iget-object v0, v0, Lcom/viber/voip/api/billing/InAppBillingService;->mService:Lcom/android/b/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    .line 164
    :goto_0
    return v0

    .line 161
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->this$0:Lcom/viber/voip/api/billing/InAppBillingService;

    #calls: Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V
    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V

    throw v0

    .line 164
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

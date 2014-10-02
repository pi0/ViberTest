.class Lcom/viber/voip/api/billing/IabHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/api/billing/IabHelper;

.field final synthetic val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/billing/IabHelper;Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iput-object p2, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const-string/jumbo v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    invoke-static {p2}, Lcom/viber/voip/api/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/viber/voip/api/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    .line 203
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-object v0, v0, Lcom/viber/voip/api/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const-string/jumbo v2, "Checking for in-app billing 3 support."

    invoke-virtual {v0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-object v0, v0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string/jumbo v3, "inapp"

    invoke-interface {v0, v2, v1, v3}, Lcom/viber/voip/api/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 214
    :goto_0
    if-eqz v0, :cond_2

    .line 215
    :try_start_2
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/viber/voip/api/billing/IabResult;

    const-string/jumbo v3, "Error checking for billing v3 support."

    invoke-direct {v2, v0, v3}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/viber/voip/api/billing/IabResult;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/viber/voip/api/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 249
    :cond_1
    :goto_1
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const/4 v0, 0x6

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    iget-object v0, v0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string/jumbo v3, "subs"

    invoke-interface {v0, v2, v1, v3}, Lcom/viber/voip/api/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const-string/jumbo v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/viber/voip/api/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 234
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/viber/voip/api/billing/IabHelper;->mSetupDone:Z

    .line 235
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v1, 0x0

    #calls: Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V
    invoke-static {v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->access$000(Lcom/viber/voip/api/billing/IabHelper;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 246
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/viber/voip/api/billing/IabResult;

    const-string/jumbo v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/viber/voip/api/billing/IabResult;)V

    goto :goto_1

    .line 231
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 237
    :catch_1
    move-exception v0

    .line 238
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_4

    .line 239
    iget-object v1, p0, Lcom/viber/voip/api/billing/IabHelper$1;->val$listener:Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/viber/voip/api/billing/IabResult;

    const/16 v3, -0x3e9

    const-string/jumbo v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/api/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/viber/voip/api/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/viber/voip/api/billing/IabResult;)V

    .line 242
    :cond_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const-string/jumbo v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/viber/voip/api/billing/IabHelper;->mService:Lcom/viber/voip/api/billing/IInAppBillingService;

    .line 196
    iget-object v0, p0, Lcom/viber/voip/api/billing/IabHelper$1;->this$0:Lcom/viber/voip/api/billing/IabHelper;

    const/4 v1, 0x1

    #calls: Lcom/viber/voip/api/billing/IabHelper;->setQueueBlocked(Z)V
    invoke-static {v0, v1}, Lcom/viber/voip/api/billing/IabHelper;->access$000(Lcom/viber/voip/api/billing/IabHelper;Z)V

    .line 197
    return-void
.end method

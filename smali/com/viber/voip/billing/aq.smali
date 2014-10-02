.class Lcom/viber/voip/billing/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bi;

.field final synthetic b:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bi;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    iput-object p2, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 244
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Billing service connected. curThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    invoke-static {p2}, Lcom/android/b/a/b;->a(Landroid/os/IBinder;)Lcom/android/b/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/billing/ap;->f:Lcom/android/b/a/a;

    .line 246
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    iget-object v0, v0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v2, Lcom/viber/voip/billing/ar;

    invoke-direct {v2, p0}, Lcom/viber/voip/billing/ar;-><init>(Lcom/viber/voip/billing/aq;)V

    invoke-static {v1, v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 259
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    invoke-static {v1}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    invoke-static {v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const-string/jumbo v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    iget-object v1, v1, Lcom/viber/voip/billing/ap;->f:Lcom/android/b/a/a;

    const/4 v2, 0x3

    const-string/jumbo v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 267
    if-eqz v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v2, Lcom/viber/voip/billing/bo;

    const-string/jumbo v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    invoke-static {v0, v2, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/viber/voip/billing/ap;->d:Z

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    iget-object v1, v1, Lcom/viber/voip/billing/ap;->f:Lcom/android/b/a/a;

    const/4 v2, 0x3

    const-string/jumbo v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 280
    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const-string/jumbo v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/viber/voip/billing/ap;->d:Z

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/viber/voip/billing/ap;->c:Z

    .line 289
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    invoke-static {v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 308
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    new-instance v1, Lcom/viber/voip/billing/bo;

    const-string/jumbo v2, "Setup successful."

    invoke-direct {v1, v5, v2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/bi;->a(Lcom/viber/voip/billing/bo;)V

    goto :goto_0

    .line 285
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v2, Lcom/viber/voip/billing/bo;

    const/16 v3, -0x3e9

    const-string/jumbo v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    invoke-static {v1, v2, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V

    .line 295
    :cond_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 298
    :catch_1
    move-exception v0

    .line 300
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    if-eqz v1, :cond_5

    .line 301
    iget-object v1, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    new-instance v2, Lcom/viber/voip/billing/bo;

    const/16 v3, -0x3f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while setting up in-app billing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    invoke-static {v1, v2, v3}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V

    .line 303
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const-string/jumbo v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/viber/voip/billing/ap;->f:Lcom/android/b/a/a;

    .line 239
    iget-object v0, p0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V

    .line 240
    return-void
.end method

.class Lcom/facebook/Session$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mApplicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1481
    iput-object p2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    .line 1482
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    .line 1483
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1476
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/Settings;->publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    const-string/jumbo v1, "Facebook-publish"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1476
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    monitor-enter v1

    .line 1499
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    const/4 v2, 0x0

    #setter for: Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    invoke-static {v0, v2}, Lcom/facebook/Session;->access$902(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;

    .line 1500
    monitor-exit v1

    .line 1501
    return-void

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

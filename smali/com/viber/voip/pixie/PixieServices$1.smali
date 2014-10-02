.class Lcom/viber/voip/pixie/PixieServices$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/pixie/PixieServices;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieServices;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/32 v11, 0x36ee80

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 868
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    #calls: Lcom/viber/voip/pixie/PixieServices;->validateAndCorrectTimestamps()V
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieServices;->access$200(Lcom/viber/voip/pixie/PixieServices;)V

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 870
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    #getter for: Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J
    invoke-static {v2}, Lcom/viber/voip/pixie/PixieServices;->access$300(Lcom/viber/voip/pixie/PixieServices;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 871
    iget-object v4, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    #getter for: Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J
    invoke-static {v4}, Lcom/viber/voip/pixie/PixieServices;->access$400(Lcom/viber/voip/pixie/PixieServices;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 872
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 875
    const/4 v4, 0x3

    :try_start_0
    invoke-static {}, Lcom/viber/voip/pixie/PixieServices;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pixie: refresher gonna sleep : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    #calls: Lcom/viber/voip/pixie/PixieServices;->loadActivationLists(Z)Z
    invoke-static {v2, v8}, Lcom/viber/voip/pixie/PixieServices;->access$600(Lcom/viber/voip/pixie/PixieServices;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 881
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    add-long v3, v0, v11

    #setter for: Lcom/viber/voip/pixie/PixieServices;->activationDataExpirationTime:J
    invoke-static {v2, v3, v4}, Lcom/viber/voip/pixie/PixieServices;->access$302(Lcom/viber/voip/pixie/PixieServices;J)J

    .line 883
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    #calls: Lcom/viber/voip/pixie/PixieServices;->loadEdgeProxyList(Z)Z
    invoke-static {v2, v8}, Lcom/viber/voip/pixie/PixieServices;->access$700(Lcom/viber/voip/pixie/PixieServices;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/viber/voip/pixie/PixieServices$1;->this$0:Lcom/viber/voip/pixie/PixieServices;

    add-long/2addr v0, v11

    #setter for: Lcom/viber/voip/pixie/PixieServices;->edgeProxyContentExpirationTime:J
    invoke-static {v2, v0, v1}, Lcom/viber/voip/pixie/PixieServices;->access$402(Lcom/viber/voip/pixie/PixieServices;J)J

    goto :goto_0

    .line 877
    :catch_0
    move-exception v2

    goto :goto_1
.end method

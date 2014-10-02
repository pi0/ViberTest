.class Lcom/viber/jni/ptt/MockPttController$5;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$downloadID:Ljava/lang/String;

.field final synthetic val$pttID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$5;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput-object p2, p0, Lcom/viber/jni/ptt/MockPttController$5;->val$pttID:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/jni/ptt/MockPttController$5;->val$downloadID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$5;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$400(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$5;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$400(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$5;->val$pttID:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$5;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$5;->val$downloadID:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$5;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$300(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/jni/ptt/MockPttController$5;->val$pttID:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/viber/jni/PhoneControllerListener;->onPttDownloaded(Ljava/lang/String;II)V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

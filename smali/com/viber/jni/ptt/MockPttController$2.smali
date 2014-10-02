.class Lcom/viber/jni/ptt/MockPttController$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$pttID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput-object p2, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->onStopPttIndicator()V

    .line 70
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    sget v2, Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;->RECORD_STOP_OK:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerListener;->onStopRecordPttReply(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$300(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_OK:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/viber/jni/PhoneControllerListener;->onPttUploaded(Ljava/lang/String;II)V

    .line 72
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$400(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$400(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_incom"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$300(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v4, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/viber/jni/PhoneControllerListener;->onPttDownloaded(Ljava/lang/String;II)V

    .line 75
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$2;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$400(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$2;->val$pttID:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

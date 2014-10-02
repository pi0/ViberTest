.class Lcom/viber/jni/ptt/MockPttController$1$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/viber/jni/ptt/MockPttController$1;


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$1$1;->this$1:Lcom/viber/jni/ptt/MockPttController$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$1$1;->this$1:Lcom/viber/jni/ptt/MockPttController$1;

    iget-object v0, v0, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mDuration:J
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$100(Lcom/viber/jni/ptt/MockPttController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$1$1;->this$1:Lcom/viber/jni/ptt/MockPttController$1;

    iget-object v2, v2, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mDuration:J
    invoke-static {v2}, Lcom/viber/jni/ptt/MockPttController;->access$100(Lcom/viber/jni/ptt/MockPttController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$1$1;->this$1:Lcom/viber/jni/ptt/MockPttController$1;

    iget-object v0, v0, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController$1$1;->this$1:Lcom/viber/jni/ptt/MockPttController$1;

    iget v1, v1, Lcom/viber/jni/ptt/MockPttController$1;->val$seq:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController$1$1;->this$1:Lcom/viber/jni/ptt/MockPttController$1;

    iget v2, v2, Lcom/viber/jni/ptt/MockPttController$1;->val$seq:I

    int-to-long v2, v2

    const/16 v4, 0x1f4

    sget v5, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_OK:I

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener;->onPttFirstChunkUploaded(Ljava/lang/String;JII)V

    .line 52
    :cond_0
    return-void
.end method

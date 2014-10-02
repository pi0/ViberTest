.class Lcom/viber/jni/ptt/MockPttController$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$objID:J

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;ILjava/lang/String;Lcom/viber/jni/LocationInfo;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$3;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput p2, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$seq:I

    iput-object p3, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$location:Lcom/viber/jni/LocationInfo;

    iput-wide p5, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$objID:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 98
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$3;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$seq:I

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener;->onMessageDelivered(JJII)Z

    .line 99
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$3;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$number:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$location:Lcom/viber/jni/LocationInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, p0, Lcom/viber/jni/ptt/MockPttController$3;->val$objID:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "_incom"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f4

    const-string/jumbo v11, "PTTMock"

    move v7, v6

    invoke-virtual/range {v0 .. v11}, Lcom/viber/jni/PhoneControllerListener;->onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z

    .line 101
    return-void
.end method

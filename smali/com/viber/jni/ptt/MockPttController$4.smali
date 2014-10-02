.class Lcom/viber/jni/ptt/MockPttController$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$groupID:J

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$objID:J

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;IJLcom/viber/jni/LocationInfo;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$4;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput p2, p0, Lcom/viber/jni/ptt/MockPttController$4;->val$seq:I

    iput-wide p3, p0, Lcom/viber/jni/ptt/MockPttController$4;->val$groupID:J

    iput-object p5, p0, Lcom/viber/jni/ptt/MockPttController$4;->val$location:Lcom/viber/jni/LocationInfo;

    iput-wide p6, p0, Lcom/viber/jni/ptt/MockPttController$4;->val$objID:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 115
    const/4 v8, 0x0

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/jni/ptt/MockPttController$4;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v2}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viber/jni/ptt/MockPttController$4;->val$seq:I

    invoke-virtual/range {v2 .. v8}, Lcom/viber/jni/PhoneControllerListener;->onMessageDelivered(JJII)Z

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/jni/ptt/MockPttController$4;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v2}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/viber/jni/ptt/MockPttController$4;->val$groupID:J

    move-wide/from16 v18, v0

    const-string/jumbo v5, "myGroup lol"

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v3

    const-string/jumbo v8, "+OLOLO"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/jni/ptt/MockPttController$4;->val$location:Lcom/viber/jni/LocationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/viber/jni/ptt/MockPttController$4;->val$objID:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_incom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1f4

    const-string/jumbo v16, "PttGroup"

    const/16 v17, 0x3e9

    move-wide/from16 v3, v18

    invoke-virtual/range {v2 .. v17}, Lcom/viber/jni/PhoneControllerListener;->onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 119
    return-void
.end method

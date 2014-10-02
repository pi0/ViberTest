.class Lcom/viber/jni/ptt/PttReceiverListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/PttReceiverListener;

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$downloadID:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$groupID:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$messageID:I

.field final synthetic val$seq:I

.field final synthetic val$timeSent:J

.field final synthetic val$token:J

.field final synthetic val$uploadDuration:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttReceiverListener;JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->this$0:Lcom/viber/jni/ptt/PttReceiverListener;

    iput-wide p2, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$groupID:J

    iput-object p4, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$groupName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$token:J

    iput-object p7, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$fromNumber:Ljava/lang/String;

    iput-wide p8, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$timeSent:J

    iput p10, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$flags:I

    iput p11, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$seq:I

    iput-object p12, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p13, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$downloadID:Ljava/lang/String;

    iput p14, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$uploadDuration:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$clientName:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$messageID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;)V
    .locals 17
    .parameter

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$groupID:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$groupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$token:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$fromNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$timeSent:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$flags:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$seq:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$downloadID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$uploadDuration:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$clientName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/ptt/PttReceiverListener$2;->val$messageID:I

    move/from16 v16, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v16}, Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;->onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 39
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttReceiverListener$2;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;)V

    return-void
.end method

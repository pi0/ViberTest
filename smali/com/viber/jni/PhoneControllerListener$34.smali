.class Lcom/viber/jni/PhoneControllerListener$34;
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
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerListener;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$downloadId:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$mediaType:I

.field final synthetic val$messageId:I

.field final synthetic val$msgSeq:I

.field final synthetic val$msgToken:J

.field final synthetic val$thumbnail:[B

.field final synthetic val$timeSent:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$34;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$groupName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$msgToken:J

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$fromNumber:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$thumbnail:[B

    iput-wide p9, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$timeSent:J

    iput p11, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$flags:I

    iput p12, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$msgSeq:I

    iput-object p13, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$location:Lcom/viber/jni/LocationInfo;

    iput p14, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$mediaType:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$bucketName:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$downloadId:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$clientName:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$description:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, Lcom/viber/jni/PhoneControllerListener$34;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 20
    .parameter

    .prologue
    .line 711
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$groupId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$groupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$msgToken:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$fromNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$thumbnail:[B

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$timeSent:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$flags:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$msgSeq:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$mediaType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$bucketName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$downloadId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$clientName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$description:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/PhoneControllerListener$34;->val$messageId:I

    move/from16 v19, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v19}, Lcom/viber/jni/PhoneControllerDelegate;->onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 713
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$34;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

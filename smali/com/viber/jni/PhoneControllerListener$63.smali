.class Lcom/viber/jni/PhoneControllerListener$63;
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

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$messageId:I

.field final synthetic val$messageSeq:I

.field final synthetic val$messageToken:J

.field final synthetic val$msgInfo:Ljava/lang/String;

.field final synthetic val$thumbnail:[B

.field final synthetic val$timeSent:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 1426
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$63;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$groupName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$messageToken:J

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$fromNumber:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$thumbnail:[B

    iput-wide p9, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$timeSent:J

    iput p11, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$flags:I

    iput p12, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$messageSeq:I

    iput-object p13, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p14, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$msgInfo:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$clientName:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/viber/jni/PhoneControllerListener$63;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 17
    .parameter

    .prologue
    .line 1429
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$groupId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$groupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$messageToken:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$fromNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$thumbnail:[B

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$timeSent:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$flags:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$messageSeq:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$msgInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$clientName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/PhoneControllerListener$63;->val$messageId:I

    move/from16 v16, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v16}, Lcom/viber/jni/PhoneControllerDelegate;->onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1431
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1426
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$63;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

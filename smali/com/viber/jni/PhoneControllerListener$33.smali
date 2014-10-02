.class Lcom/viber/jni/PhoneControllerListener$33;
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

.field final synthetic val$msgSeq:I

.field final synthetic val$msgToken:J

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$timeSent:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)V
    .locals 0
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
    .line 689
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$33;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$groupName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$msgToken:J

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$fromNumber:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$text:Ljava/lang/String;

    iput-wide p9, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$timeSent:J

    iput p11, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$flags:I

    iput p12, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$msgSeq:I

    iput-object p13, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p14, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$clientName:Ljava/lang/String;

    iput p15, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 15
    .parameter

    .prologue
    .line 693
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$groupId:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$groupName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$msgToken:J

    iget-object v6, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$fromNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$text:Ljava/lang/String;

    iget-wide v8, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$timeSent:J

    iget v10, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$flags:I

    iget v11, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$msgSeq:I

    iget-object v12, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$location:Lcom/viber/jni/LocationInfo;

    iget-object v13, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$clientName:Ljava/lang/String;

    iget v14, p0, Lcom/viber/jni/PhoneControllerListener$33;->val$messageId:I

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v14}, Lcom/viber/jni/PhoneControllerDelegate;->onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z

    .line 695
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$33;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

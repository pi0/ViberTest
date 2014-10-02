.class Lcom/viber/jni/PhoneControllerListener$87;
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

.field final synthetic val$formattedMessage:Ljava/lang/String;

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$messageSeq:I

.field final synthetic val$messageToken:J

.field final synthetic val$timeSent:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$87;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$messageToken:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$fromNumber:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$timeSent:J

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$flags:I

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$messageSeq:I

    iput-object p9, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p10, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$formattedMessage:Ljava/lang/String;

    iput-object p11, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$clientName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 11
    .parameter

    .prologue
    .line 1819
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$messageToken:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$fromNumber:Ljava/lang/String;

    iget-wide v4, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$timeSent:J

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$flags:I

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$messageSeq:I

    iget-object v8, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$location:Lcom/viber/jni/LocationInfo;

    iget-object v9, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$formattedMessage:Ljava/lang/String;

    iget-object v10, p0, Lcom/viber/jni/PhoneControllerListener$87;->val$clientName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerDelegate;->onFormattedMessageReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1820
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1816
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$87;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

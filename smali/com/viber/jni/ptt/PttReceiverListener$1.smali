.class Lcom/viber/jni/ptt/PttReceiverListener$1;
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

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$seq:I

.field final synthetic val$timeSent:J

.field final synthetic val$token:J

.field final synthetic val$uploadDuration:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttReceiverListener;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)V
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

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->this$0:Lcom/viber/jni/ptt/PttReceiverListener;

    iput-wide p2, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$token:J

    iput-object p4, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$number:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$timeSent:J

    iput p7, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$flags:I

    iput p8, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$seq:I

    iput-object p9, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p10, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$downloadID:Ljava/lang/String;

    iput p11, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$uploadDuration:I

    iput-object p12, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$clientName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;)V
    .locals 12
    .parameter

    .prologue
    .line 25
    iget-wide v1, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$token:J

    iget-object v3, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$number:Ljava/lang/String;

    iget-wide v4, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$timeSent:J

    iget v6, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$flags:I

    iget v7, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$seq:I

    iget-object v8, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$location:Lcom/viber/jni/LocationInfo;

    iget-object v9, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$downloadID:Ljava/lang/String;

    iget v10, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$uploadDuration:I

    iget-object v11, p0, Lcom/viber/jni/ptt/PttReceiverListener$1;->val$clientName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v11}, Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;->onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttReceiverListener$1;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;)V

    return-void
.end method

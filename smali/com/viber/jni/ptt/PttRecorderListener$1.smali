.class Lcom/viber/jni/ptt/PttRecorderListener$1;
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
        "Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/PttRecorderListener;

.field final synthetic val$pttID:Ljava/lang/String;

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttRecorderListener;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->this$0:Lcom/viber/jni/ptt/PttRecorderListener;

    iput p2, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->val$seq:I

    iput-object p3, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->val$pttID:Ljava/lang/String;

    iput p4, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->val$seq:I

    iget-object v1, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->val$pttID:Ljava/lang/String;

    iget v2, p0, Lcom/viber/jni/ptt/PttRecorderListener$1;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;->onStartRecordPttReply(ILjava/lang/String;I)V

    .line 22
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttRecorderListener$1;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;)V

    return-void
.end method

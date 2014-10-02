.class Lcom/viber/jni/ptt/PttUploaderListener$1;
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
        "Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/PttUploaderListener;

.field final synthetic val$objectID:J

.field final synthetic val$pttID:Ljava/lang/String;

.field final synthetic val$status:I

.field final synthetic val$uploadDuration:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttUploaderListener;Ljava/lang/String;JII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->this$0:Lcom/viber/jni/ptt/PttUploaderListener;

    iput-object p2, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$pttID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$objectID:J

    iput p5, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$uploadDuration:I

    iput p6, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;)V
    .locals 6
    .parameter

    .prologue
    .line 21
    iget-object v1, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$pttID:Ljava/lang/String;

    iget-wide v2, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$objectID:J

    iget v4, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$uploadDuration:I

    iget v5, p0, Lcom/viber/jni/ptt/PttUploaderListener$1;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;->onPttFirstChunkUploaded(Ljava/lang/String;JII)V

    .line 22
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttUploaderListener$1;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;)V

    return-void
.end method

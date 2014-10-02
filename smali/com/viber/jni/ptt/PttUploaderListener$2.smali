.class Lcom/viber/jni/ptt/PttUploaderListener$2;
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

.field final synthetic val$duration:I

.field final synthetic val$pttID:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttUploaderListener;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->this$0:Lcom/viber/jni/ptt/PttUploaderListener;

    iput-object p2, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->val$pttID:Ljava/lang/String;

    iput p3, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->val$duration:I

    iput p4, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->val$pttID:Ljava/lang/String;

    iget v1, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->val$duration:I

    iget v2, p0, Lcom/viber/jni/ptt/PttUploaderListener$2;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;->onPttUploaded(Ljava/lang/String;II)V

    .line 33
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttUploaderListener$2;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;)V

    return-void
.end method

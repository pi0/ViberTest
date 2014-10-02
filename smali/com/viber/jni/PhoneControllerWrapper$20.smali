.class Lcom/viber/jni/PhoneControllerWrapper$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback",
        "<",
        "Lcom/viber/jni/controller/PhoneController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic val$ackSequence:I

.field final synthetic val$joinMsg:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$20;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput p2, p0, Lcom/viber/jni/PhoneControllerWrapper$20;->val$ackSequence:I

    iput-boolean p3, p0, Lcom/viber/jni/PhoneControllerWrapper$20;->val$joinMsg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 2
    .parameter

    .prologue
    .line 1069
    iget v0, p0, Lcom/viber/jni/PhoneControllerWrapper$20;->val$ackSequence:I

    iget-boolean v1, p0, Lcom/viber/jni/PhoneControllerWrapper$20;->val$joinMsg:Z

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/controller/PhoneController;->handleSendRegisteredNumbersAck(IZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1065
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$20;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

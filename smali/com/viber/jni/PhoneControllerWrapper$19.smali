.class Lcom/viber/jni/PhoneControllerWrapper$19;
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

.field final synthetic val$lastMessageToken:J

.field final synthetic val$multDevState:I

.field final synthetic val$peerNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->val$peerNum:Ljava/lang/String;

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->val$lastMessageToken:J

    iput p5, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->val$multDevState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 4
    .parameter

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->val$peerNum:Ljava/lang/String;

    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->val$lastMessageToken:J

    iget v3, p0, Lcom/viber/jni/PhoneControllerWrapper$19;->val$multDevState:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/controller/PhoneController;->handleSendSyncConversationAck(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1054
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$19;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

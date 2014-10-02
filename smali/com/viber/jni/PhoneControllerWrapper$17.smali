.class Lcom/viber/jni/PhoneControllerWrapper$17;
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

.field final synthetic val$groupId:J

.field final synthetic val$lastMessageToken:J

.field final synthetic val$multDevState:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->val$groupId:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->val$lastMessageToken:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->val$multDevState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 6
    .parameter

    .prologue
    .line 1036
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->val$groupId:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->val$lastMessageToken:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerWrapper$17;->val$multDevState:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/controller/PhoneController;->handleSendSyncGroupAck(JJI)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1032
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$17;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

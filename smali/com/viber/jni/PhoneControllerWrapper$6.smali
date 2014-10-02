.class Lcom/viber/jni/PhoneControllerWrapper$6;
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

.field final synthetic val$PhotoID:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$6;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerWrapper$6;->val$PhotoID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 2
    .parameter

    .prologue
    .line 888
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerWrapper$6;->val$PhotoID:J

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/controller/PhoneController;->handleUpdateUserPhoto(J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 884
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$6;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

.class Lcom/viber/jni/PhoneControllerWrapper$9;
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

.field final synthetic val$pushToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$9;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerWrapper$9;->val$pushToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 1
    .parameter

    .prologue
    .line 936
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$9;->val$pushToken:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/jni/controller/PhoneController;->updateData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 932
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$9;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

.class Lcom/viber/jni/PhoneControllerWrapper$4;
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

.field final synthetic val$context:I

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$members:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput p2, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->val$context:I

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->val$members:[Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->val$groupName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 3
    .parameter

    .prologue
    .line 866
    iget v0, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->val$context:I

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->val$members:[Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper$4;->val$groupName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/controller/PhoneController;->handleCreateGroup(I[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 862
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$4;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

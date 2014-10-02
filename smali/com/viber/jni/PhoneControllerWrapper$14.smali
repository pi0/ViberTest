.class Lcom/viber/jni/PhoneControllerWrapper$14;
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


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$14;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 1
    .parameter

    .prologue
    .line 1002
    invoke-interface {p1}, Lcom/viber/jni/controller/PhoneController;->handleRecoverGroups()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 998
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$14;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

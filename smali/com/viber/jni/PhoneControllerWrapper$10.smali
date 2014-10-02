.class Lcom/viber/jni/PhoneControllerWrapper$10;
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

.field final synthetic val$forwarded:I

.field final synthetic val$locationInfo:Lcom/viber/jni/LocationInfo;

.field final synthetic val$msgToken:I

.field final synthetic val$resending:Z

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$toNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$toNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$msgToken:I

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$locationInfo:Lcom/viber/jni/LocationInfo;

    iput-boolean p6, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$resending:Z

    iput p7, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$forwarded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 7
    .parameter

    .prologue
    .line 947
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$toNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$text:Ljava/lang/String;

    iget v3, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$msgToken:I

    iget-object v4, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$locationInfo:Lcom/viber/jni/LocationInfo;

    iget-boolean v5, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$resending:Z

    iget v6, p0, Lcom/viber/jni/PhoneControllerWrapper$10;->val$forwarded:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/controller/PhoneController;->handleSendText(Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 943
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$10;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

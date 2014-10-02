.class Lcom/viber/jni/PhoneControllerListener$24;
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
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerListener;

.field final synthetic val$deviceId:I

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$isSecondaryDevice:Z

.field final synthetic val$startStopFlag:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$24;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$fromNumber:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$startStopFlag:Z

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$deviceId:I

    iput-boolean p5, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$isSecondaryDevice:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 549
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$fromNumber:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$startStopFlag:Z

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$deviceId:I

    iget-boolean v3, p0, Lcom/viber/jni/PhoneControllerListener$24;->val$isSecondaryDevice:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onUserIsTyping(Ljava/lang/String;ZIZ)V

    .line 550
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$24;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

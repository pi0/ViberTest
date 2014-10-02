.class Lcom/viber/jni/PhoneControllerListener$77;
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

.field final synthetic val$appId:I

.field final synthetic val$seq:I

.field final synthetic val$status:I

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$77;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$token:Ljava/lang/String;

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$status:I

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$appId:I

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$token:Ljava/lang/String;

    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$status:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$appId:I

    iget v3, p0, Lcom/viber/jni/PhoneControllerListener$77;->val$seq:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onAuthenticateAppReply(Ljava/lang/String;III)V

    .line 1657
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1653
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$77;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

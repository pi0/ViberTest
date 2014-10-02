.class Lcom/viber/jni/PhoneControllerListener$17;
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

.field final synthetic val$gsmState:I

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$17;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$17;->val$gsmState:I

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerListener$17;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 457
    iget v0, p0, Lcom/viber/jni/PhoneControllerListener$17;->val$gsmState:I

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerListener$17;->val$phoneNumber:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/PhoneControllerDelegate;->onGSMStateChange(ILjava/lang/String;)V

    .line 458
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$17;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

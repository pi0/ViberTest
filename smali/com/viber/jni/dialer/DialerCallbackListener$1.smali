.class Lcom/viber/jni/dialer/DialerCallbackListener$1;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerCallbackListener;

.field final synthetic val$callbackType:I

.field final synthetic val$dialType:I


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerCallbackListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerCallbackListener$1;->this$0:Lcom/viber/jni/dialer/DialerCallbackListener;

    iput p2, p0, Lcom/viber/jni/dialer/DialerCallbackListener$1;->val$callbackType:I

    iput p3, p0, Lcom/viber/jni/dialer/DialerCallbackListener$1;->val$dialType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/viber/jni/dialer/DialerCallbackListener$1;->val$callbackType:I

    iget v1, p0, Lcom/viber/jni/dialer/DialerCallbackListener$1;->val$dialType:I

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;->showCallBack(II)V

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerCallbackListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;)V

    return-void
.end method

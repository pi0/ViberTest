.class Lcom/viber/jni/dialer/DialerTransferCallListener$2;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerTransferCallListener;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerTransferCallListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerTransferCallListener$2;->this$0:Lcom/viber/jni/dialer/DialerTransferCallListener;

    iput p2, p0, Lcom/viber/jni/dialer/DialerTransferCallListener$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/viber/jni/dialer/DialerTransferCallListener$2;->val$reason:I

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;->onTransferFailed(I)V

    .line 40
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerTransferCallListener$2;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;)V

    return-void
.end method

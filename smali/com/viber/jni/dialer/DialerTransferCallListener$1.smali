.class Lcom/viber/jni/dialer/DialerTransferCallListener$1;
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

.field final synthetic val$transferToken:J


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerTransferCallListener;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerTransferCallListener$1;->this$0:Lcom/viber/jni/dialer/DialerTransferCallListener;

    iput-wide p2, p0, Lcom/viber/jni/dialer/DialerTransferCallListener$1;->val$transferToken:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/viber/jni/dialer/DialerTransferCallListener$1;->val$transferToken:J

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;->onTransferReplyOK(J)V

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerTransferCallListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;)V

    return-void
.end method

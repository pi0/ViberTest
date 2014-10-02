.class public Lcom/viber/jni/dialer/DialerTransferCallListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferFailed(I)V
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/viber/jni/dialer/DialerTransferCallListener$2;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerTransferCallListener$2;-><init>(Lcom/viber/jni/dialer/DialerTransferCallListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerTransferCallListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 42
    return-void
.end method

.method public onTransferReplyOK(J)V
    .locals 1
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerTransferCallListener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/dialer/DialerTransferCallListener$1;-><init>(Lcom/viber/jni/dialer/DialerTransferCallListener;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerTransferCallListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    return-void
.end method

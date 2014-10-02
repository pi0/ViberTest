.class public Lcom/viber/jni/dialer/DialerCallbackListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;"
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
.method public hideCallBack()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/viber/jni/dialer/DialerCallbackListener$2;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerCallbackListener$2;-><init>(Lcom/viber/jni/dialer/DialerCallbackListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerCallbackListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 42
    return-void
.end method

.method public showCallBack(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerCallbackListener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/dialer/DialerCallbackListener$1;-><init>(Lcom/viber/jni/dialer/DialerCallbackListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerCallbackListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    return-void
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/viber/jni/dialer/DialerCallbackListener$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/dialer/DialerCallbackListener$4;-><init>(Lcom/viber/jni/dialer/DialerCallbackListener;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerCallbackListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 63
    return-void
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/viber/jni/dialer/DialerCallbackListener$3;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerCallbackListener$3;-><init>(Lcom/viber/jni/dialer/DialerCallbackListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerCallbackListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 53
    return-void
.end method

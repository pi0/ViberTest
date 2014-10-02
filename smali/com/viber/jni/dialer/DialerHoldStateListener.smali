.class public Lcom/viber/jni/dialer/DialerHoldStateListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;"
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
.method public localHold()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/viber/jni/dialer/DialerHoldStateListener$1;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerHoldStateListener$1;-><init>(Lcom/viber/jni/dialer/DialerHoldStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 27
    return-void
.end method

.method public localUnhold()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/viber/jni/dialer/DialerHoldStateListener$2;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerHoldStateListener$2;-><init>(Lcom/viber/jni/dialer/DialerHoldStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 41
    return-void
.end method

.method public peerHold()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/viber/jni/dialer/DialerHoldStateListener$3;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerHoldStateListener$3;-><init>(Lcom/viber/jni/dialer/DialerHoldStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 55
    return-void
.end method

.method public peerUnhold()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/viber/jni/dialer/DialerHoldStateListener$4;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerHoldStateListener$4;-><init>(Lcom/viber/jni/dialer/DialerHoldStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 69
    return-void
.end method

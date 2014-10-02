.class public Lcom/viber/jni/dialer/DialerRemoteCallStateListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerBusy()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$4;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$4;-><init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 64
    return-void
.end method

.method public onPeerCapabilities(I)V
    .locals 1
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;-><init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 50
    return-void
.end method

.method public onPeerRinging()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$2;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$2;-><init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 39
    return-void
.end method

.method public onStartRingback(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;-><init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    return-void
.end method

.class public Lcom/viber/jni/dialer/DialerVideoListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;"
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
.method public onPeerVideoEnded()I
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/viber/jni/dialer/DialerVideoListener$3;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerVideoListener$3;-><init>(Lcom/viber/jni/dialer/DialerVideoListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerVideoListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoEndedAck()I
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/viber/jni/dialer/DialerVideoListener$4;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerVideoListener$4;-><init>(Lcom/viber/jni/dialer/DialerVideoListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerVideoListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStarted()I
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerVideoListener$1;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerVideoListener$1;-><init>(Lcom/viber/jni/dialer/DialerVideoListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerVideoListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStartedAck()I
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/viber/jni/dialer/DialerVideoListener$2;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerVideoListener$2;-><init>(Lcom/viber/jni/dialer/DialerVideoListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerVideoListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 43
    const/4 v0, 0x0

    return v0
.end method

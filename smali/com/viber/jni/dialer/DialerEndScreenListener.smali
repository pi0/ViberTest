.class public Lcom/viber/jni/dialer/DialerEndScreenListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;"
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
.method public hideEndCall()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/viber/jni/dialer/DialerEndScreenListener$2;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerEndScreenListener$2;-><init>(Lcom/viber/jni/dialer/DialerEndScreenListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerEndScreenListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 42
    return-void
.end method

.method public showEndCall()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerEndScreenListener$1;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerEndScreenListener$1;-><init>(Lcom/viber/jni/dialer/DialerEndScreenListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerEndScreenListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    return-void
.end method

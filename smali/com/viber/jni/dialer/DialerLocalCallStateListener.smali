.class public Lcom/viber/jni/dialer/DialerLocalCallStateListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;"
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
.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;-><init>(Lcom/viber/jni/dialer/DialerLocalCallStateListener;JZLjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 42
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 1
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;-><init>(Lcom/viber/jni/dialer/DialerLocalCallStateListener;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 27
    return-void
.end method

.method public onHangup()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$3;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener$3;-><init>(Lcom/viber/jni/dialer/DialerLocalCallStateListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 56
    return-void
.end method

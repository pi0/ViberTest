.class public Lcom/viber/jni/dialer/DialerPhoneStateListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;"
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
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/dialer/DialerPhoneStateListener$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerPhoneStateListener$1;-><init>(Lcom/viber/jni/dialer/DialerPhoneStateListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    return-void
.end method

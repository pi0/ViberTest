.class public Lcom/viber/jni/dialer/DialerCallInterruptionListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;"
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
.method public onDataInterruption(Z)V
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;-><init>(Lcom/viber/jni/dialer/DialerCallInterruptionListener;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerCallInterruptionListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 25
    return-void
.end method

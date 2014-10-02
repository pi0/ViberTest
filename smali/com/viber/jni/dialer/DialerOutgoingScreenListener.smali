.class public Lcom/viber/jni/dialer/DialerOutgoingScreenListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;"
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
.method public hideCall(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$2;-><init>(Lcom/viber/jni/dialer/DialerOutgoingScreenListener;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 44
    return-void
.end method

.method public showCall(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;-><init>(Lcom/viber/jni/dialer/DialerOutgoingScreenListener;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 30
    return-void
.end method

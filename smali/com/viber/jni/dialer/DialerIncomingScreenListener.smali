.class public Lcom/viber/jni/dialer/DialerIncomingScreenListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;",
        ">;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;"
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
.method public hideReception()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$2;

    invoke-direct {v0, p0}, Lcom/viber/jni/dialer/DialerIncomingScreenListener$2;-><init>(Lcom/viber/jni/dialer/DialerIncomingScreenListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 44
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;-><init>(Lcom/viber/jni/dialer/DialerIncomingScreenListener;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 30
    return-void
.end method

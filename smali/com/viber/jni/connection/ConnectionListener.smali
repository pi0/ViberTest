.class public Lcom/viber/jni/connection/ConnectionListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/connection/ConnectionDelegate;",
        ">;",
        "Lcom/viber/jni/connection/ConnectionDelegate;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/viber/jni/connection/ConnectionListener$1;

    invoke-direct {v0, p0}, Lcom/viber/jni/connection/ConnectionListener$1;-><init>(Lcom/viber/jni/connection/ConnectionListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/connection/ConnectionListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 23
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/viber/jni/connection/ConnectionListener$2;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/connection/ConnectionListener$2;-><init>(Lcom/viber/jni/connection/ConnectionListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/connection/ConnectionListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 37
    return-void
.end method

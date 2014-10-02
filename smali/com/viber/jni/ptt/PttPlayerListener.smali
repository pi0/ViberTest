.class public Lcom/viber/jni/ptt/PttPlayerListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Player;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Player;",
        ">;",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Player;"
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
.method public onPttBufferingStarted(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/viber/jni/ptt/PttPlayerListener$4;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/ptt/PttPlayerListener$4;-><init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttPlayerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 58
    return-void
.end method

.method public onPttBufferingStopped(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/viber/jni/ptt/PttPlayerListener$5;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/ptt/PttPlayerListener$5;-><init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttPlayerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 69
    return-void
.end method

.method public onPttPlayStopped(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/viber/jni/ptt/PttPlayerListener$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/ptt/PttPlayerListener$3;-><init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttPlayerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 47
    return-void
.end method

.method public onStartPlayPttReply(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/viber/jni/ptt/PttPlayerListener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/ptt/PttPlayerListener$1;-><init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttPlayerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 24
    return-void
.end method

.method public onStopPlayPttReply(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/viber/jni/ptt/PttPlayerListener$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/ptt/PttPlayerListener$2;-><init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttPlayerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 35
    return-void
.end method

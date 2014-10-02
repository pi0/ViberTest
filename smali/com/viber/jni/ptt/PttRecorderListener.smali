.class public Lcom/viber/jni/ptt/PttRecorderListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;",
        ">;",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;"
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
.method public onPttRecordStopped(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/viber/jni/ptt/PttRecorderListener$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/ptt/PttRecorderListener$3;-><init>(Lcom/viber/jni/ptt/PttRecorderListener;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttRecorderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 46
    return-void
.end method

.method public onStartPttIndicator()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/viber/jni/ptt/PttRecorderListener$4;

    invoke-direct {v0, p0}, Lcom/viber/jni/ptt/PttRecorderListener$4;-><init>(Lcom/viber/jni/ptt/PttRecorderListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttRecorderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 57
    return-void
.end method

.method public onStartRecordPttReply(ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/viber/jni/ptt/PttRecorderListener$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/ptt/PttRecorderListener$1;-><init>(Lcom/viber/jni/ptt/PttRecorderListener;ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttRecorderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 24
    return-void
.end method

.method public onStopPttIndicator()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/viber/jni/ptt/PttRecorderListener$5;

    invoke-direct {v0, p0}, Lcom/viber/jni/ptt/PttRecorderListener$5;-><init>(Lcom/viber/jni/ptt/PttRecorderListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttRecorderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 68
    return-void
.end method

.method public onStopRecordPttReply(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/viber/jni/ptt/PttRecorderListener$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/ptt/PttRecorderListener$2;-><init>(Lcom/viber/jni/ptt/PttRecorderListener;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttRecorderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 35
    return-void
.end method

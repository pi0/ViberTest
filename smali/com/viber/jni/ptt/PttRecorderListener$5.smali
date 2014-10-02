.class Lcom/viber/jni/ptt/PttRecorderListener$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/PttRecorderListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttRecorderListener;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/viber/jni/ptt/PttRecorderListener$5;->this$0:Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;->onStopPttIndicator()V

    .line 66
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttRecorderListener$5;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;)V

    return-void
.end method

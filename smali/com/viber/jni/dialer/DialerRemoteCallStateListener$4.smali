.class Lcom/viber/jni/dialer/DialerRemoteCallStateListener$4;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$4;->this$0:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;->onPeerBusy()V

    .line 62
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$4;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;)V

    return-void
.end method

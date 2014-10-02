.class Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;
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

.field final synthetic val$capabilities:I


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;->this$0:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    iput p2, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;->val$capabilities:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;->val$capabilities:I

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;->onPeerCapabilities(I)V

    .line 48
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$3;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;)V

    return-void
.end method

.class Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;
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

.field final synthetic val$toNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerRemoteCallStateListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;->this$0:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    iput-object p2, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;->val$toNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;->val$toNumber:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;->onStartRingback(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;)V

    return-void
.end method

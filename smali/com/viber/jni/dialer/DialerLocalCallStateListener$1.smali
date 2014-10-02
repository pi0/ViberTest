.class Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

.field final synthetic val$isInitiator:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerLocalCallStateListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;->this$0:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    iput-boolean p2, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;->val$isInitiator:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;->val$isInitiator:Z

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;->onCallStarted(Z)V

    .line 25
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;)V

    return-void
.end method

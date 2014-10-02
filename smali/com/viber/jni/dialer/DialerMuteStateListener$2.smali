.class Lcom/viber/jni/dialer/DialerMuteStateListener$2;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerMuteStateListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerMuteStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerMuteStateListener$2;->this$0:Lcom/viber/jni/dialer/DialerMuteStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;->unmute()V

    .line 40
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerMuteStateListener$2;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;)V

    return-void
.end method

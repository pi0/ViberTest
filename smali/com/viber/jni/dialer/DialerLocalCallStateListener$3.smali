.class Lcom/viber/jni/dialer/DialerLocalCallStateListener$3;
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


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerLocalCallStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$3;->this$0:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;->onHangup()V

    .line 54
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener$3;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;)V

    return-void
.end method

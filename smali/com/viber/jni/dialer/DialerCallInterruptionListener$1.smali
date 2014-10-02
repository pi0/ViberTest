.class Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerCallInterruptionListener;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerCallInterruptionListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;->this$0:Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    iput-boolean p2, p0, Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;->val$state:Z

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;->onDataInterruption(Z)V

    .line 23
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerCallInterruptionListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;)V

    return-void
.end method

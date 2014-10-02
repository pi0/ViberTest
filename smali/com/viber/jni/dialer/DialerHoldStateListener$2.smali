.class Lcom/viber/jni/dialer/DialerHoldStateListener$2;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerHoldStateListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerHoldStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerHoldStateListener$2;->this$0:Lcom/viber/jni/dialer/DialerHoldStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;->localUnhold()V

    .line 39
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerHoldStateListener$2;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;)V

    return-void
.end method

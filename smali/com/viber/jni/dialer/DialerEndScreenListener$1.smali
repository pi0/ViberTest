.class Lcom/viber/jni/dialer/DialerEndScreenListener$1;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerEndScreenListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerEndScreenListener;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerEndScreenListener$1;->this$0:Lcom/viber/jni/dialer/DialerEndScreenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;->showEndCall()V

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerEndScreenListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;)V

    return-void
.end method

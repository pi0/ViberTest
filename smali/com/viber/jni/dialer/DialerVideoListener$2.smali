.class Lcom/viber/jni/dialer/DialerVideoListener$2;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerVideoListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerVideoListener;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerVideoListener$2;->this$0:Lcom/viber/jni/dialer/DialerVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;->onPeerVideoStartedAck()I

    .line 41
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerVideoListener$2;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;)V

    return-void
.end method

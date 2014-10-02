.class Lcom/viber/jni/dialer/DialerIncomingScreenListener$2;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerIncomingScreenListener;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerIncomingScreenListener;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$2;->this$0:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-interface {p1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;->hideReception()V

    .line 42
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerIncomingScreenListener$2;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;)V

    return-void
.end method

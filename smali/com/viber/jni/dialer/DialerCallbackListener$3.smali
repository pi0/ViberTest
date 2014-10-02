.class Lcom/viber/jni/dialer/DialerCallbackListener$3;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerCallbackListener;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerCallbackListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerCallbackListener$3;->this$0:Lcom/viber/jni/dialer/DialerCallbackListener;

    iput-object p2, p0, Lcom/viber/jni/dialer/DialerCallbackListener$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/jni/dialer/DialerCallbackListener$3;->val$number:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;->switchToGSM(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerCallbackListener$3;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;)V

    return-void
.end method

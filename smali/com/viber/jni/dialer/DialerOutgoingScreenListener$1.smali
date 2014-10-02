.class Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

.field final synthetic val$isInitiator:Z

.field final synthetic val$isTransfer:Z

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerOutgoingScreenListener;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->this$0:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    iput-object p2, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->val$phoneNumber:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->val$isInitiator:Z

    iput-boolean p4, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->val$isTransfer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->val$phoneNumber:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->val$isInitiator:Z

    iget-boolean v2, p0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->val$isTransfer:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;->showCall(Ljava/lang/String;ZZ)V

    .line 28
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;)V

    return-void
.end method

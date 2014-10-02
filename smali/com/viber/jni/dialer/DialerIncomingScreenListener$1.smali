.class Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;
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

.field final synthetic val$callType:I

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$isTransfer:Z

.field final synthetic val$originPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerIncomingScreenListener;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->this$0:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    iput-object p2, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$originPhoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$clientName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$isTransfer:Z

    iput p5, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$callType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$originPhoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$clientName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$isTransfer:Z

    iget v3, p0, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->val$callType:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;->showReception(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 28
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerIncomingScreenListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;)V

    return-void
.end method

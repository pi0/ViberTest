.class Lcom/viber/jni/dialer/DialerPhoneStateListener$1;
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
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/dialer/DialerPhoneStateListener;

.field final synthetic val$state_id:I


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerPhoneStateListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerPhoneStateListener$1;->this$0:Lcom/viber/jni/dialer/DialerPhoneStateListener;

    iput p2, p0, Lcom/viber/jni/dialer/DialerPhoneStateListener$1;->val$state_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/viber/jni/dialer/DialerPhoneStateListener$1;->val$state_id:I

    invoke-interface {p1, v0}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;->onPhoneStateChanged(I)V

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerPhoneStateListener$1;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;)V

    return-void
.end method

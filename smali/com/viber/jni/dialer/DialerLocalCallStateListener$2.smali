.class Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;
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

.field final synthetic val$callToken:J

.field final synthetic val$dialType:I

.field final synthetic val$isInitiator:Z

.field final synthetic val$originPhoneNumber:Ljava/lang/String;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerLocalCallStateListener;JZLjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->this$0:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    iput-wide p2, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$callToken:J

    iput-boolean p4, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$isInitiator:Z

    iput-object p5, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$originPhoneNumber:Ljava/lang/String;

    iput p6, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$reason:I

    iput p7, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$dialType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;)V
    .locals 7
    .parameter

    .prologue
    .line 39
    iget-wide v1, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$callToken:J

    iget-boolean v3, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$isInitiator:Z

    iget-object v4, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$originPhoneNumber:Ljava/lang/String;

    iget v5, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$reason:I

    iget v6, p0, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->val$dialType:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;->onCallEnded(JZLjava/lang/String;II)V

    .line 40
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener$2;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;)V

    return-void
.end method

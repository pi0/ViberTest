.class Lcom/viber/jni/dialer/DialerCallbackListener$4;
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

.field final synthetic val$Ctx:Ljava/lang/String;

.field final synthetic val$netDefinesEDialogType:I


# direct methods
.method constructor <init>(Lcom/viber/jni/dialer/DialerCallbackListener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/jni/dialer/DialerCallbackListener$4;->this$0:Lcom/viber/jni/dialer/DialerCallbackListener;

    iput p2, p0, Lcom/viber/jni/dialer/DialerCallbackListener$4;->val$netDefinesEDialogType:I

    iput-object p3, p0, Lcom/viber/jni/dialer/DialerCallbackListener$4;->val$Ctx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/viber/jni/dialer/DialerCallbackListener$4;->val$netDefinesEDialogType:I

    iget-object v1, p0, Lcom/viber/jni/dialer/DialerCallbackListener$4;->val$Ctx:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;->showDialog(ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;

    invoke-virtual {p0, p1}, Lcom/viber/jni/dialer/DialerCallbackListener$4;->execute(Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;)V

    return-void
.end method

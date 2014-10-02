.class Lcom/viber/jni/connection/ConnectionListener$2;
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
        "Lcom/viber/jni/connection/ConnectionDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/connection/ConnectionListener;

.field final synthetic val$connectionState:I


# direct methods
.method constructor <init>(Lcom/viber/jni/connection/ConnectionListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/jni/connection/ConnectionListener$2;->this$0:Lcom/viber/jni/connection/ConnectionListener;

    iput p2, p0, Lcom/viber/jni/connection/ConnectionListener$2;->val$connectionState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/connection/ConnectionDelegate;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/jni/connection/ConnectionListener$2;->val$connectionState:I

    invoke-interface {p1, v0}, Lcom/viber/jni/connection/ConnectionDelegate;->onConnectionStateChange(I)V

    .line 35
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/viber/jni/connection/ConnectionDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/connection/ConnectionListener$2;->execute(Lcom/viber/jni/connection/ConnectionDelegate;)V

    return-void
.end method

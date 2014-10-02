.class Lcom/viber/jni/connection/ConnectionListener$1;
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


# direct methods
.method constructor <init>(Lcom/viber/jni/connection/ConnectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/viber/jni/connection/ConnectionListener$1;->this$0:Lcom/viber/jni/connection/ConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/connection/ConnectionDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/viber/jni/connection/ConnectionDelegate;->onConnect()V

    .line 21
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/viber/jni/connection/ConnectionDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/connection/ConnectionListener$1;->execute(Lcom/viber/jni/connection/ConnectionDelegate;)V

    return-void
.end method

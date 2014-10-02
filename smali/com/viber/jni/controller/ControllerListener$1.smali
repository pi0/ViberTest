.class Lcom/viber/jni/controller/ControllerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/jni/controller/ControllerListener;

.field final synthetic val$action:Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;

.field final synthetic val$t:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/viber/jni/controller/ControllerListener;Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/viber/jni/controller/ControllerListener$1;->this$0:Lcom/viber/jni/controller/ControllerListener;

    iput-object p2, p0, Lcom/viber/jni/controller/ControllerListener$1;->val$action:Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;

    iput-object p3, p0, Lcom/viber/jni/controller/ControllerListener$1;->val$t:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/jni/controller/ControllerListener$1;->val$action:Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;

    iget-object v1, p0, Lcom/viber/jni/controller/ControllerListener$1;->val$t:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;->execute(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

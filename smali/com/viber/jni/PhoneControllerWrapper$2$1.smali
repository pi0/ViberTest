.class Lcom/viber/jni/PhoneControllerWrapper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/viber/jni/PhoneControllerWrapper$2;

.field final synthetic val$callInfo:Lcom/viber/voip/phone/call/k;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper$2;Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$2$1;->this$1:Lcom/viber/jni/PhoneControllerWrapper$2;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerWrapper$2$1;->val$callInfo:Lcom/viber/voip/phone/call/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$2$1;->this$1:Lcom/viber/jni/PhoneControllerWrapper$2;

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerWrapper$2;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$1100(Lcom/viber/jni/PhoneControllerWrapper;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$2$1;->this$1:Lcom/viber/jni/PhoneControllerWrapper$2;

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerWrapper$2;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mCallInfoListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$1100(Lcom/viber/jni/PhoneControllerWrapper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/call/i;

    .line 312
    iget-object v3, p0, Lcom/viber/jni/PhoneControllerWrapper$2$1;->val$callInfo:Lcom/viber/voip/phone/call/k;

    invoke-interface {v0, v3}, Lcom/viber/voip/phone/call/i;->onCallInfoReady(Lcom/viber/voip/phone/call/k;)V

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    return-void
.end method

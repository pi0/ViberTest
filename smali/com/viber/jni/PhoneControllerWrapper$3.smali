.class Lcom/viber/jni/PhoneControllerWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/pixie/PixieController$PixieReadyListener;


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$3;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$3;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    const-string/jumbo v1, "library initialization pixi checking finished"

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$3;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mMutexInitialization:Ljava/lang/Object;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$1200(Lcom/viber/jni/PhoneControllerWrapper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$3;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mInitialized:Z
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$1300(Lcom/viber/jni/PhoneControllerWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$3;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->postInit()V
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$1400(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 341
    :cond_0
    monitor-exit v1

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

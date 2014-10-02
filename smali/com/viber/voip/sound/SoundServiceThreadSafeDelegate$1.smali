.class Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$result:[Ljava/lang/Object;

.field final synthetic val$target:Lcom/viber/voip/sound/ISoundService;

.field final synthetic val$waitableSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/reflect/Method;Lcom/viber/voip/sound/ISoundService;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->this$0:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;

    iput-object p2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    iput-object p4, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$result:[Ljava/lang/Object;

    iput-object p5, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$args:[Ljava/lang/Object;

    iput-object p6, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 303
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=>> invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$result:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    iget-object v4, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 313
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<= end invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v1

    .line 315
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 316
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<== releasing semaphore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 316
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 313
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<= end invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v1

    .line 315
    :try_start_4
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 316
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<== releasing semaphore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 313
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<= end invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v1

    .line 315
    :try_start_7
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 316
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 317
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<== releasing semaphore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 310
    :catch_2
    move-exception v0

    .line 311
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 313
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<= end invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v1

    .line 315
    :try_start_a
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 316
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 317
    sget-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<== releasing semaphore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; tgt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 313
    :catchall_4
    move-exception v0

    sget-object v1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<<= end invoking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; tgt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v1

    .line 315
    :try_start_c
    iget-object v2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$waitableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 316
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 317
    sget-object v1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<== releasing semaphore for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; tgt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;->val$target:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 316
    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

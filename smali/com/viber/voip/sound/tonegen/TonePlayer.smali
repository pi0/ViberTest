.class public Lcom/viber/voip/sound/tonegen/TonePlayer;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile _lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;


# instance fields
.field private final listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

.field private volatile loop_count:I

.field private volatile pause_index:I

.field private final playHandler:Landroid/os/Handler;

.field private volatile state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

.field private volatile stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

.field private volatile toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

.field private final toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

.field private volatile tone_index:I

.field private volatile urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    .line 37
    const-class v0, Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    iput-object v2, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iput-object p2, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->playHandler:Landroid/os/Handler;

    .line 52
    iput-object p3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    .line 53
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    .line 54
    iput-object p4, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    .line 55
    iput-object v2, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    .line 56
    invoke-virtual {p3}, Lcom/viber/voip/sound/tonegen/ToneRule;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->reset()V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V

    .line 64
    return-void
.end method

.method private _checkLoopStatus()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->loop_count:I

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v1}, Lcom/viber/voip/sound/tonegen/ToneRule;->getRepeatCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 174
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->loop_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->loop_count:I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    .line 176
    const/4 v0, 0x4

    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | reposting tone play immediately - loop requested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    invoke-interface {v0, p0}, Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;->onSampleLoop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->playHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback()Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->stop()V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0, p0}, Lcom/viber/voip/sound/AbstractSoundService;->unregisterModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    .line 332
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 333
    return-void
.end method

.method public getSoundService()Lcom/viber/voip/sound/AbstractSoundService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    return-object v0
.end method

.method public getToneRule()Lcom/viber/voip/sound/tonegen/ToneRule;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    return-object v0
.end method

.method public onModeStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Tone()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Dtmf()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->resume()V

    goto :goto_0
.end method

.method public onModeStatePreChanged(I)V
    .locals 5
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Tone()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v1

    .line 340
    const/4 v0, 0x4

    :try_start_0
    sget-object v2, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": urgency lock is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; will wait until be freed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 342
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    const/4 v0, 0x4

    sget-object v2, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": urgency lock seems that freed; proceeding with mode change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onToneEndCallback()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected onToneEndCallback(Ljava/lang/Throwable;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 286
    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | onToneEndCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    .line 288
    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": unlocking urgency lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-ne p0, v1, :cond_1

    .line 300
    const/4 v1, 0x0

    sput-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    .line 301
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/viber/voip/sound/AbstractSoundService;->clearRouteFlags(I)I

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    invoke-interface {v1, p0}, Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;->onPlayEnd(Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    .line 309
    :cond_2
    if-nez p1, :cond_3

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v2}, Lcom/viber/voip/sound/tonegen/ToneRule;->getRepeatCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 313
    :goto_0
    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 295
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onToneEndCallback was called not from locker thread - will wait until original starter thread unlock me"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->stop()V

    goto :goto_0
.end method

.method public play(Lcom/viber/voip/sound/AbstractSoundService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 198
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_PLAY:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    if-ne v0, v1, :cond_0

    .line 199
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | dropping doubleplay due to reported state (already playing)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-nez v0, :cond_3

    .line 203
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-static {p1}, Lcom/viber/voip/sound/ToneGeneratorFactory;->newToneGenerator(Lcom/viber/voip/sound/AbstractSoundService;)Lcom/viber/voip/sound/tonegen/IToneGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    .line 212
    :goto_1
    invoke-virtual {p1, p0}, Lcom/viber/voip/sound/AbstractSoundService;->registerModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    .line 213
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | play()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->reset()V

    .line 215
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_PLAY:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    .line 216
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v0, :cond_1

    .line 217
    sput-object p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    .line 218
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setRouteFlags(I)I

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Tone()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 221
    :cond_2
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | suspending and wait for MODE_VIBER_TONE to be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->suspend()V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eq v0, p1, :cond_4

    .line 207
    invoke-virtual {p1, p0}, Lcom/viber/voip/sound/AbstractSoundService;->unregisterModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    .line 208
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V

    .line 209
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-static {p1}, Lcom/viber/voip/sound/ToneGeneratorFactory;->newToneGenerator(Lcom/viber/voip/sound/AbstractSoundService;)Lcom/viber/voip/sound/tonegen/IToneGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    goto :goto_1

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V

    goto :goto_1

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    invoke-interface {v0, p0}, Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;->onPlayStart(Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->playHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->loop_count:I

    .line 190
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_SUSPENDED:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    if-eq v0, v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->play(Lcom/viber/voip/sound/AbstractSoundService;)V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 76
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": run() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/ToneRule;->getTonesArray()[I

    move-result-object v2

    .line 78
    if-nez v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback()Z

    goto :goto_0

    .line 92
    :cond_3
    const/4 v0, -0x2

    iget-object v3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v3}, Lcom/viber/voip/sound/tonegen/ToneRule;->getRepeatCount()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_4
    :goto_1
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    array-length v3, v2

    if-lt v0, v3, :cond_5

    .line 97
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/ToneRule;->isLooped()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    iput v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    .line 99
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    invoke-interface {v0, p0}, Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;->onSampleLoop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V

    .line 106
    :cond_6
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    array-length v3, v2

    if-ge v0, v3, :cond_a

    const/4 v0, -0x1

    iget v3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    aget v3, v2, v3

    if-eq v0, v3, :cond_a

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 110
    iget-object v3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    const/4 v0, 0x3

    :try_start_2
    sget-object v4, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | really playing tone on mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v6}, Lcom/viber/voip/sound/AbstractSoundService;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v6}, Lcom/viber/voip/sound/AbstractSoundService;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    check-cast v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    invoke-virtual {v0, p0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->setPlayer(Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    .line 115
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    iget v4, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    aget v4, v2, v4

    invoke-interface {v0, v4}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->startTone(I)V

    .line 116
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    .line 117
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/ToneRule;->getPauses()[I

    move-result-object v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    iget v3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    array-length v4, v0

    if-lt v3, v4, :cond_d

    .line 138
    iget-object v3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v3}, Lcom/viber/voip/sound/tonegen/ToneRule;->isLooped()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 139
    array-length v2, v0

    if-gtz v2, :cond_b

    move v0, v1

    .line 140
    :goto_3
    iget v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    move v1, v0

    .line 151
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    int-to-long v0, v1

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 157
    :goto_5
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback()Z

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 100
    :cond_8
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    iget-object v3, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v3}, Lcom/viber/voip/sound/tonegen/ToneRule;->getPauses()[I

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_5

    .line 101
    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->_checkLoopStatus()V

    goto/16 :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 119
    :cond_9
    :try_start_6
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 130
    :cond_a
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | skipping tone with pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    goto :goto_2

    .line 139
    :cond_b
    iput v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    aget v0, v0, v1

    goto :goto_3

    .line 141
    :cond_c
    iget v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->tone_index:I

    array-length v2, v2

    if-lt v0, v2, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->_checkLoopStatus()V

    goto/16 :goto_0

    .line 146
    :cond_d
    iget v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->pause_index:I

    aget v1, v0, v1

    goto :goto_4

    .line 154
    :catch_2
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method protected scheduleDeferredGuard(ILjava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->playHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 236
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot stop immediately cause of urgency lock is set to true; will wait until be freed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 244
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->urgencyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": urgency lock seems that freed; proceeding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->playHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->listener:Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;

    invoke-interface {v0, p0}, Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;->onPlayStop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    .line 252
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v0, :cond_4

    .line 257
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-ne p0, v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0, v3}, Lcom/viber/voip/sound/AbstractSoundService;->clearRouteFlags(I)I

    .line 266
    :cond_3
    :goto_0
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    .line 269
    :goto_1
    return-void

    .line 239
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 265
    :cond_4
    iput-object v5, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v0, :cond_6

    .line 257
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-ne p0, v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0, v3}, Lcom/viber/voip/sound/AbstractSoundService;->clearRouteFlags(I)I

    .line 266
    :cond_5
    :goto_2
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    goto :goto_1

    .line 265
    :cond_6
    iput-object v5, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    goto :goto_2

    .line 256
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v1, :cond_8

    .line 257
    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->_lastActivePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-ne p0, v1, :cond_7

    .line 258
    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->svcInstance:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1, v3}, Lcom/viber/voip/sound/AbstractSoundService;->clearRouteFlags(I)I

    .line 266
    :cond_7
    :goto_3
    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iput-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    throw v0

    .line 265
    :cond_8
    iput-object v5, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    goto :goto_3
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_PLAY:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    if-eq v0, v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->stop()V

    .line 274
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_SUSPENDED:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->state:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [rule:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/TonePlayer;->toneRule:Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

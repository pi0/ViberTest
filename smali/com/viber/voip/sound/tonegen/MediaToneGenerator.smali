.class public Lcom/viber/voip/sound/tonegen/MediaToneGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/viber/voip/sound/tonegen/IToneGenerator;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final mediaPlayer:Landroid/media/MediaPlayer;

.field private static final mediaStarter:Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;


# instance fields
.field private volatile _maxVolume:F

.field private final _modeSet:I

.field private volatile _streamType:I

.field private volatile callback:Ljava/lang/Runnable;

.field final soundService:Lcom/viber/voip/sound/ISoundService;

.field private volatile tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

.field private urgencyGuard:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 71
    new-instance v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;-><init>(Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;)V

    sput-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaStarter:Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;-><init>(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)V

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->urgencyGuard:Ljava/lang/Runnable;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    .line 77
    iput p3, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_streamType:I

    .line 78
    iput p4, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_maxVolume:F

    .line 79
    iput p2, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_modeSet:I

    .line 80
    return-void
.end method

.method private _stop()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 85
    return-void
.end method

.method static synthetic access$000()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_modeSet:I

    return v0
.end method

.method static synthetic access$200(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Lcom/viber/voip/sound/tonegen/TonePlayer;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->urgencyGuard:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    sget-object v1, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->onToneEndCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    .line 176
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 179
    :cond_1
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onModeStateChangeDeferred(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x5

    sget-object v1, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaToneGenerator got defer signal for mode state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onModeStateChangeRejected(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    const/4 v0, 0x5

    sget-object v1, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaToneGenerator got reject signal for mode state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onModeStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 151
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_modeSet:I

    if-ne p1, v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public setPlayer(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    .line 166
    return-void
.end method

.method public startTone(I)V
    .locals 1
    .parameter

    .prologue
    .line 98
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->startTone(II)V

    .line 99
    return-void
.end method

.method public startTone(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->startTone(IILjava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public startTone(IILjava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 106
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getToneRule()Lcom/viber/voip/sound/tonegen/ToneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/ToneRule;->isLooped()Z

    move-result v0

    :goto_1
    invoke-interface {v3, p1, v0, v1}, Lcom/viber/voip/sound/ISoundService;->getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v3

    .line 108
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 113
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 115
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v4}, Lcom/viber/voip/sound/ISoundService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->m_Uri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 116
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 117
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->loop()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 118
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_streamType:I

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_maxVolume:F

    iget v5, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_maxVolume:F

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 120
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 132
    :cond_2
    if-lt v1, v2, :cond_1

    .line 133
    iput-object p3, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;

    .line 134
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    iget v1, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_modeSet:I

    sget-object v2, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaStarter:Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;

    invoke-virtual {v2, p0, p2}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->start(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;I)Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/sound/ISoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 107
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    if-ne v1, v2, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopTone()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getToneRule()Lcom/viber/voip/sound/tonegen/ToneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/ToneRule;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_stop()V

    goto :goto_0
.end method

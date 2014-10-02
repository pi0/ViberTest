.class Lorg/webrtc/voiceengine/AudioDeviceAndroid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/voiceengine/IAudioDevice;


# static fields
.field private static final ENABLE_PLATFORMWIDE_AEC:Z = true

.field private static final ENABLE_PLATFORMWIDE_NS:Z = true

.field public static final FALLBACK_REC_AUDIOSOURCE:I = 0x1

.field public static final FLAG_AUDIOPLAYBACK_STARTED:I = 0x8

.field public static final FLAG_AUDIORECORD_INITIALIZED:I = 0x1

.field public static final FLAG_AUDIORECORD_STARTED:I = 0x4

.field public static final FLAG_AUDIOTRACK_INITIALIZED:I = 0x2

.field public static final FLAG_INACTIVE:I = 0x0

.field public static final FLAG_VE_STARTED:I = 0x10

.field public static final TAG:Ljava/lang/String;

.field public static final audioSources:[I


# instance fields
.field private _audioManager:Lcom/viber/voip/sound/ISoundService;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioSource:I

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _playbackStream:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufPlay:[B

.field private _tempBufRec:[B

.field private aecFilter:Ljava/lang/Object;

.field private volatile audioRoute:I

.field private volatile flags:I

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private nsFilter:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioSources:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const v0, 0xac44

    invoke-direct {p0, p1, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;-><init>(Lcom/viber/voip/sound/ISoundService;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3c0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    .line 43
    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 50
    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    .line 51
    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doPlayInit:Z

    .line 57
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doRecInit:Z

    .line 58
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isRecording:Z

    .line 59
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isPlaying:Z

    .line 62
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioSource:I

    .line 64
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedRecSamples:I

    .line 65
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    .line 66
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playPosition:I

    .line 68
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    .line 70
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    .line 73
    iput v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playbackStream:I

    .line 94
    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->aecFilter:Ljava/lang/Object;

    .line 95
    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->nsFilter:Ljava/lang/Object;

    .line 107
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_context:Landroid/content/Context;

    .line 108
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    .line 109
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    .line 110
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 111
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    .line 112
    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    .line 113
    invoke-static {p0}, Lorg/webrtc/voiceengine/AudioDeviceManager;->registerAudioDevice(Lorg/webrtc/voiceengine/IAudioDevice;)V

    .line 114
    return-void
.end method

.method private DoLog(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 660
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 664
    const/4 v0, 0x6

    sget-object v1, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private GetBufferedPlaySamplesCount()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    return v0
.end method

.method private InitPlayback(I)I
    .locals 2
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->InitPlaybackWithOwnBuffers(I[BLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private InitRecording(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->InitRecordingWithOwnBuffers(II[BLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private PlayAudio(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 454
    .line 456
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 459
    const/4 v0, -0x2

    .line 506
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 509
    :goto_0
    return v0

    .line 464
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doPlayInit:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 465
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_use_high_priority_media_thread()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :try_start_2
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_media_thread_priority()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 471
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doPlayInit:Z

    .line 475
    :cond_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 476
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    .line 478
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 483
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    .line 486
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    .line 487
    iget v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playPosition:I

    if-ge v0, v3, :cond_3

    .line 488
    const/4 v3, 0x0

    iput v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playPosition:I

    .line 490
    :cond_3
    iget v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    iget v4, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playPosition:I

    sub-int v4, v0, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    .line 491
    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playPosition:I

    .line 493
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isRecording:Z

    if-nez v0, :cond_5

    .line 494
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    :goto_2
    if-eq v2, p1, :cond_4

    .line 500
    const/4 v0, -0x1

    .line 506
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set play thread priority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 506
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private RecordAudio(I)I
    .locals 4
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 525
    const/4 v0, -0x2

    .line 555
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 558
    :goto_0
    return v0

    .line 530
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doRecInit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 531
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_use_high_priority_media_thread()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :try_start_2
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_media_thread_priority()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 537
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doRecInit:Z

    .line 540
    :cond_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 541
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 542
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 555
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 558
    :goto_2
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedPlaySamples:I

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set rec thread priority failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 549
    :catch_1
    move-exception v0

    .line 550
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RecordAudio try failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLogErr(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 555
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private SetPlayoutSpeakerInternal(Z)I
    .locals 2
    .parameter

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "changing speakerphone state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 569
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->syncSpeakerState()V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "speakerphone is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; platform reports "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 573
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 576
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static disableEffectForAudioRecordSession(Landroid/media/AudioRecord;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Landroid/media/audiofx/AudioEffect;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    check-cast p1, Landroid/media/audiofx/AudioEffect;

    invoke-virtual {p1}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    const/4 v2, 0x6

    sget-object v3, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to destroy platform-wide effect filter"

    invoke-static {v2, v3, v4, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static enableEffectForAudioRecordSession(Landroid/media/AudioRecord;Lorg/webrtc/voiceengine/AudioDeviceAndroid$EffectFactory;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    if-nez p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    :try_start_0
    invoke-interface {p1, p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid$EffectFactory;->create(Landroid/media/AudioRecord;)Landroid/media/audiofx/AudioEffect;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 222
    const/4 v2, 0x3

    sget-object v3, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to attach "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " effect to the active session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v2, Lorg/webrtc/voiceengine/AudioDeviceAndroid$1;

    invoke-direct {v2}, Lorg/webrtc/voiceengine/AudioDeviceAndroid$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/audiofx/AudioEffect;->setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V

    .line 229
    new-instance v2, Lorg/webrtc/voiceengine/AudioDeviceAndroid$2;

    invoke-direct {v2}, Lorg/webrtc/voiceengine/AudioDeviceAndroid$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/audiofx/AudioEffect;->setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 236
    const/4 v2, 0x3

    sget-object v3, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "AEC added and should be available"

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 237
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    const/4 v2, 0x6

    sget-object v3, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to create platform-wide AEC filter"

    invoke-static {v2, v3, v4, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static declared-synchronized getRecAudioSourceForNativeSourceInternal(I)I
    .locals 2
    .parameter

    .prologue
    .line 800
    const-class v1, Lorg/webrtc/voiceengine/AudioDeviceAndroid;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioSources:[I

    aget v0, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    monitor-exit v1

    return v0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    const/4 v0, 0x1

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processOnCapturePostStartEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 685
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-ne v1, v0, :cond_1

    .line 690
    :cond_0
    return-void

    .line 686
    :cond_1
    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->setFlagsInternal(I)V

    .line 687
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 688
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onCapturePostStart()V

    goto :goto_0
.end method

.method private processOnCaptureStartEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 677
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_1

    .line 682
    :cond_0
    return-void

    .line 678
    :cond_1
    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->setFlagsInternal(I)V

    .line 679
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 680
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onCaptureStart()V

    goto :goto_0
.end method

.method private processOnCaptureStopEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 668
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eq v1, v0, :cond_1

    .line 674
    :cond_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->clearFlagsInternal(I)V

    .line 670
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->clearFlagsInternal(I)V

    .line 671
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 672
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onCaptureStop()V

    goto :goto_0
.end method

.method private processOnOverallStartEvent()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 717
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-ne v2, v0, :cond_0

    .line 722
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 719
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onStart()V

    goto :goto_1

    .line 721
    :cond_1
    invoke-direct {p0, v2}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->setFlagsInternal(I)V

    goto :goto_0
.end method

.method private processOnOverallStopEvent()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 725
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eq v2, v0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 727
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onStop()V

    goto :goto_1

    .line 729
    :cond_1
    invoke-virtual {p0, v2}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->clearFlagsInternal(I)V

    goto :goto_0
.end method

.method private processOnPlaybackPostStartEvent()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 700
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onPlaybackPostStart()V

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method

.method private processOnPlaybackPostStopEvent()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 712
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onPlaybackPostStop()V

    goto :goto_0

    .line 714
    :cond_0
    return-void
.end method

.method private processOnPlaybackPreStartEvent()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 694
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onPlaybackPreStart()V

    goto :goto_0

    .line 696
    :cond_0
    return-void
.end method

.method private processOnPlaybackPreStopEvent()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 706
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onPlaybackPreStop()V

    goto :goto_0

    .line 708
    :cond_0
    return-void
.end method

.method private setFlagsInternal(I)V
    .locals 1
    .parameter

    .prologue
    .line 738
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    .line 739
    return-void
.end method

.method private sound_io_media_thread_priority()I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getThreadPriority()I

    move-result v0

    return v0
.end method

.method private sound_io_reset_playback_on_speaker_event()Z
    .locals 1

    .prologue
    .line 750
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->RESET_AUDIOTRACK_ON_SPEAKER_EVENT:Z

    return v0
.end method

.method private sound_io_reset_recorder_on_speaker_event()Z
    .locals 1

    .prologue
    .line 746
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->RESET_AUDIORECORDER_ON_SPEAKER_EVENT:Z

    return v0
.end method

.method private sound_io_use_high_priority_media_thread()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useThreadPriority()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public CheckDeviceVoiceCommunicationAbility(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 900
    invoke-static {p1, p2}, Lorg/webrtc/voiceengine/NativeADMDelegate;->isVoiceCommRouteAvailable(II)I

    move-result v0

    return v0
.end method

.method public GetAudioRoute()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    return v0
.end method

.method public GetPlayoutVolume()I
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getStreamType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v0

    .line 655
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method public InitPlaybackWithOwnBuffers(I[BLjava/nio/ByteBuffer;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x2

    .line 286
    const/4 v3, 0x4

    .line 287
    const/4 v4, 0x2

    .line 288
    iget v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-ne v8, v1, :cond_1

    move v0, v7

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-static {p1, v3, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 290
    const/4 v1, -0x2

    if-ne v1, v5, :cond_2

    .line 291
    invoke-static {p1, v8, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    move v3, v8

    .line 292
    :cond_2
    const/16 v1, 0x1770

    if-ge v5, v1, :cond_3

    .line 293
    shl-int/lit8 v5, v5, 0x1

    .line 294
    :cond_3
    if-nez p2, :cond_7

    .line 295
    new-array v1, v5, [B

    iput-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    .line 300
    :goto_1
    if-nez p3, :cond_8

    .line 301
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 305
    :goto_2
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    :cond_4
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 311
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-nez v0, :cond_5

    .line 312
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->mode_InCall()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setModeWithPriorityLock(I)V

    .line 313
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "creating audiodevice on channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; SCO mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; channel config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; speaker(int)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; speaker(pl)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 315
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playbackStream:I

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    .line 324
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack failed to be initialized for sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playbackStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", plyBufSz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "********************** AudioTrack creation FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 328
    :cond_6
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_9

    move v0, v7

    .line 329
    goto/16 :goto_0

    .line 297
    :cond_7
    iput-object p2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    goto/16 :goto_1

    .line 303
    :cond_8
    iput-object p3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playBuffer:Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 330
    :cond_9
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v9, :cond_a

    .line 332
    const-string/jumbo v0, "*********************** AudioTrack initialization FAILED"

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    move v0, v7

    .line 335
    goto/16 :goto_0

    .line 337
    :cond_a
    invoke-direct {p0, v8}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->setFlagsInternal(I)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audiodevice created on channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; SCO mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelConfiguration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 340
    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;->onPlaybackReady()V

    goto :goto_3

    .line 342
    :cond_b
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->SetPlayoutVolume(I)I

    .line 343
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->getStreamMaxVolume(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public InitRecordingWithOwnBuffers(II[BLjava/nio/ByteBuffer;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v7, 0x1

    const/4 v2, -0x2

    const/4 v6, -0x1

    const/4 v1, 0x2

    .line 122
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-ne v7, v0, :cond_0

    move v0, v6

    .line 193
    :goto_0
    return v0

    .line 123
    :cond_0
    iput p1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioSource:I

    .line 125
    invoke-static {p2, v3, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 126
    if-nez p3, :cond_6

    .line 127
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    if-nez v0, :cond_2

    .line 128
    if-ne v2, v5, :cond_1

    .line 129
    invoke-static {p2, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 131
    :cond_1
    if-eq v2, v5, :cond_2

    .line 132
    shl-int/lit8 v5, v5, 0x1

    .line 133
    new-array v0, v5, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    .line 140
    :cond_2
    :goto_1
    if-nez p4, :cond_7

    .line 141
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    .line 145
    :goto_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    :cond_3
    mul-int/lit8 v0, p2, 0x5

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedRecSamples:I

    .line 152
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 157
    :cond_4
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-nez v0, :cond_5

    .line 158
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->mode_InCall()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setModeWithPriorityLock(I)V

    .line 159
    :cond_5
    invoke-static {p1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->getRecAudioSourceForNativeSourceInternal(I)I

    move-result v1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating capture device on channel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; SCO mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; audioSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 162
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    .line 168
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioRecord failed to be initialized for sampleRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", audioSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", recBufSz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    .line 171
    goto/16 :goto_0

    .line 137
    :cond_6
    iput-object p3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufRec:[B

    goto/16 :goto_1

    .line 143
    :cond_7
    iput-object p4, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recBuffer:Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 172
    :catchall_0
    move-exception v0

    throw v0

    .line 176
    :cond_8
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioRecord initialization failure for sampleRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    move v0, v6

    .line 180
    goto/16 :goto_0

    .line 183
    :cond_9
    invoke-static {}, Lorg/webrtc/voiceengine/NativeADMDelegate;->isPlatformWideAECEffectAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    new-instance v1, Lorg/webrtc/voiceengine/AudioDeviceAndroid$AECDefaultFactory;

    invoke-direct {v1, p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid$AECDefaultFactory;-><init>(Lorg/webrtc/voiceengine/AudioDeviceAndroid;)V

    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->enableEffectForAudioRecordSession(Landroid/media/AudioRecord;Lorg/webrtc/voiceengine/AudioDeviceAndroid$EffectFactory;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->aecFilter:Ljava/lang/Object;

    .line 189
    :cond_a
    invoke-static {}, Lorg/webrtc/voiceengine/NativeADMDelegate;->isPlatformWideNSEffectAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    new-instance v1, Lorg/webrtc/voiceengine/AudioDeviceAndroid$NSDefaultFactory;

    invoke-direct {v1, p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid$NSDefaultFactory;-><init>(Lorg/webrtc/voiceengine/AudioDeviceAndroid;)V

    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->enableEffectForAudioRecordSession(Landroid/media/AudioRecord;Lorg/webrtc/voiceengine/AudioDeviceAndroid$EffectFactory;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->nsFilter:Ljava/lang/Object;

    .line 193
    :cond_b
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_bufferedRecSamples:I

    goto/16 :goto_0
.end method

.method public ProbePlayback(I)I
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v7, -0x1

    .line 839
    const/4 v0, 0x4

    .line 840
    const/4 v4, 0x2

    .line 842
    invoke-static {p1, v0, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 843
    const/4 v1, -0x2

    if-ne v1, v5, :cond_6

    .line 844
    invoke-static {p1, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 845
    :goto_0
    const/16 v0, 0x1770

    if-ge v5, v0, :cond_0

    .line 846
    shl-int/lit8 v5, v5, 0x1

    .line 847
    :cond_0
    const/4 v8, 0x0

    .line 849
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eq v1, v9, :cond_2

    .line 863
    if-eqz v0, :cond_1

    .line 864
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_1
    move v0, v7

    .line 869
    :goto_1
    return v0

    .line 863
    :cond_2
    if-eqz v0, :cond_3

    .line 864
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 868
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PLAYBACK RATE IS SET! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_1

    .line 860
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 863
    :goto_2
    if-eqz v0, :cond_4

    .line 864
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_4
    move v0, v7

    .line 865
    goto :goto_1

    .line 863
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_5

    .line 864
    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    .line 865
    :cond_5
    throw v0

    .line 863
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    .line 860
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_6
    move v3, v0

    goto :goto_0
.end method

.method public ProbeRecording(II)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x2

    const/4 v6, -0x1

    .line 811
    invoke-static {p2, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 812
    const/4 v7, 0x0

    .line 814
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    invoke-static {p1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->getRecAudioSourceForNativeSourceInternal(I)I

    move-result v1

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 827
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    move v0, v6

    .line 833
    :goto_0
    return v0

    .line 827
    :cond_1
    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 832
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RECORDER RATE IS SET! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 833
    mul-int/lit8 v0, p2, 0x5

    div-int/lit16 v0, v0, 0xc8

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 827
    :goto_1
    if-eqz v0, :cond_3

    .line 828
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_3
    move v0, v6

    .line 829
    goto :goto_0

    .line 827
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_4

    .line 828
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    .line 829
    :cond_4
    throw v0

    .line 827
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_2

    .line 824
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public SetAudioRoute(I)I
    .locals 1
    .parameter

    .prologue
    .line 881
    packed-switch p1, :pswitch_data_0

    .line 887
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playbackStream:I

    .line 890
    :goto_0
    iput p1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    return p1

    .line 884
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playbackStream:I

    goto :goto_0

    .line 881
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public SetPlayoutSpeaker(Z)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "acquired to change speakerphone state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 582
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v2

    .line 584
    iget v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService;->isHeadsetPluggedIn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    iget v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 591
    if-eqz p1, :cond_2

    .line 592
    const-string/jumbo v3, "looks like we\'re playing ptt, and bt or headset is connected, so no speakerphone"

    invoke-direct {p0, v3}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 594
    sget v2, Lcom/viber/voip/sound/ISoundService;->MODE_FOR_BLUETOOTH:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 596
    :cond_2
    const-string/jumbo v3, "looks like we\'re stopped playing ptt, putting everything bt related back"

    invoke-direct {p0, v3}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 598
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 599
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    goto :goto_0

    .line 603
    :cond_3
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-ne p1, v1, :cond_4

    .line 604
    const-string/jumbo v1, "rejected to change speakerphone state cause current state is the same as acquired"

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_4
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_recorder_on_speaker_event()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_playback_on_speaker_event()Z

    move-result v1

    if-nez v1, :cond_5

    .line 608
    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->SetPlayoutSpeakerInternal(Z)I

    move-result v0

    goto :goto_0

    .line 610
    :cond_5
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->isActive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 613
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 614
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 615
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_recorder_on_speaker_event()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_a

    .line 616
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    .line 617
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StopRecording()I

    move v2, v1

    .line 619
    :goto_1
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_playback_on_speaker_event()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_9

    .line 620
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v1

    .line 621
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StopPlayback()I

    .line 623
    :goto_2
    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->SetPlayoutSpeakerInternal(Z)I

    .line 624
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_recorder_on_speaker_event()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 625
    iget v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioSource:I

    invoke-direct {p0, v3, v2}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->InitRecording(II)I

    .line 626
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StartRecording()I

    .line 628
    :cond_6
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_playback_on_speaker_event()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 629
    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->InitPlayback(I)I

    .line 630
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StartPlayback()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :cond_7
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 634
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 633
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 634
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 637
    :cond_8
    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->SetPlayoutSpeakerInternal(Z)I

    goto/16 :goto_0

    :cond_9
    move v1, v0

    goto :goto_2

    :cond_a
    move v2, v0

    goto :goto_1
.end method

.method public SetPlayoutVolume(I)I
    .locals 3
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 649
    :cond_0
    return p1
.end method

.method public StartPlayback()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v4, 0x8

    .line 353
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    .line 376
    :goto_0
    return v0

    .line 355
    :cond_0
    iget v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->audioRoute:I

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService;->mode_InCall()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/viber/voip/sound/ISoundService;->setModeWithPriorityLock(I)V

    .line 357
    :cond_1
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->setPlaybackHeadPosition(I)I

    .line 358
    iget v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eq v4, v2, :cond_2

    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnPlaybackPreStartEvent()V

    .line 359
    :cond_2
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 361
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_3
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_tempBufPlay:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->PlayAudio(I)I

    .line 369
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 370
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eq v4, v0, :cond_4

    .line 371
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnPlaybackPostStartEvent()V

    .line 372
    const/4 v0, 0x4

    iget v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnOverallStartEvent()V

    .line 374
    :cond_4
    invoke-direct {p0, v4}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->setFlagsInternal(I)V

    .line 375
    iput-boolean v5, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isPlaying:Z

    move v0, v1

    .line 376
    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 364
    iput-boolean v5, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isPlaying:Z

    goto :goto_0
.end method

.method public StartRecording()I
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnCaptureStartEvent()V

    .line 265
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnCapturePostStartEvent()V

    .line 272
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isRecording:Z

    if-nez v0, :cond_0

    .line 273
    const/16 v0, 0x8

    iget v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnOverallStartEvent()V

    .line 277
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isRecording:Z

    .line 278
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 268
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public StopPlayback()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnPlaybackPreStopEvent()V

    .line 422
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 423
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 426
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 435
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doPlayInit:Z

    .line 439
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 441
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->mode_Normal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setModeWithPriorityLock(I)V

    .line 442
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnPlaybackPostStopEvent()V

    .line 443
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-ne v4, v0, :cond_2

    .line 444
    const/4 v0, 0x4

    iget v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnOverallStopEvent()V

    .line 446
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->clearFlagsInternal(I)V

    .line 447
    invoke-virtual {p0, v4}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->clearFlagsInternal(I)V

    .line 448
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isPlaying:Z

    .line 449
    return v2

    .line 427
    :catch_0
    move-exception v0

    .line 428
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doPlayInit:Z

    .line 439
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public StopRecording()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 382
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 383
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 386
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->aecFilter:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->aecFilter:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->disableEffectForAudioRecordSession(Landroid/media/AudioRecord;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->aecFilter:Ljava/lang/Object;

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->nsFilter:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->nsFilter:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->disableEffectForAudioRecordSession(Landroid/media/AudioRecord;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->nsFilter:Ljava/lang/Object;

    .line 402
    :cond_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 404
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doRecInit:Z

    .line 408
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 409
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnCaptureStopEvent()V

    .line 411
    invoke-virtual {p0, v2}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->clearFlagsInternal(I)V

    .line 412
    const/16 v0, 0x8

    iget v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnOverallStopEvent()V

    .line 413
    :cond_4
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isRecording:Z

    .line 414
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioManager:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->mode_Normal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setModeWithPriorityLock(I)V

    .line 415
    return v3

    .line 387
    :catch_0
    move-exception v0

    .line 388
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->DoLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_doRecInit:Z

    .line 408
    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 409
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->processOnCaptureStopEvent()V

    throw v0
.end method

.method public clearFlagsInternal(I)V
    .locals 2
    .parameter

    .prologue
    .line 742
    iget v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->flags:I

    .line 743
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 874
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StopRecording()I

    .line 875
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StopPlayback()I

    .line 876
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 877
    return-void
.end method

.method public declared-synchronized isActive()Z
    .locals 1

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 735
    return-void
.end method

.method public restartRecorder()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_isRecording:Z

    if-nez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    const/4 v0, 0x0

    .line 774
    :try_start_0
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_recorder_on_speaker_event()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    .line 775
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    .line 776
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StopRecording()I

    .line 778
    :cond_2
    invoke-direct {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->sound_io_reset_recorder_on_speaker_event()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 779
    iget v1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->_audioSource:I

    invoke-direct {p0, v1, v0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->InitRecording(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->StartRecording()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public waitForInitialize()V
    .locals 2

    .prologue
    .line 789
    :goto_0
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioDeviceAndroid;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    monitor-enter p0

    .line 793
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 794
    :catch_0
    move-exception v0

    goto :goto_1

    .line 796
    :cond_0
    return-void
.end method

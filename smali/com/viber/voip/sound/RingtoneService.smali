.class public Lcom/viber/voip/sound/RingtoneService;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/IVibratorService;


# static fields
.field private static final MSG_STOP_MEDIAPLAYBACK:I = 0x1

.field private static final PAUSE_LENGTH:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = null

.field private static final VIBRATE_LENGTH:I = 0x3e8

.field static volatile ringtoneServiceSingleton:Lcom/viber/voip/sound/IVibratorService;

.field private static final vibrationPattern_continuous:[J


# instance fields
.field private volatile _lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

.field private volatile durationControlHandler:Landroid/os/Handler;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final soundService:Lcom/viber/voip/sound/AbstractSoundService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/sound/RingtoneService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/sound/RingtoneService;->ringtoneServiceSingleton:Lcom/viber/voip/sound/IVibratorService;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/sound/RingtoneService;->vibrationPattern_continuous:[J

    .line 45
    return-void

    .line 44
    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/viber/voip/sound/AbstractSoundService;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    .line 35
    new-instance v0, Lcom/viber/voip/sound/RingtoneService$1;

    sget-object v1, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/sound/RingtoneService$1;-><init>(Lcom/viber/voip/sound/RingtoneService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->durationControlHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    .line 57
    invoke-virtual {p1}, Lcom/viber/voip/sound/AbstractSoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->mVibrator:Landroid/os/Vibrator;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/sound/RingtoneService;->processSampleEnd(Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/sound/RingtoneService;)Lcom/viber/voip/sound/AbstractSoundService;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/viber/voip/sound/RingtoneService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->durationControlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized forSoundService(Lcom/viber/voip/sound/AbstractSoundService;)Lcom/viber/voip/sound/IRingtoneService;
    .locals 2
    .parameter

    .prologue
    .line 48
    const-class v1, Lcom/viber/voip/sound/RingtoneService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->ringtoneServiceSingleton:Lcom/viber/voip/sound/IVibratorService;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/viber/voip/sound/RingtoneService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/RingtoneService;-><init>(Lcom/viber/voip/sound/AbstractSoundService;)V

    sput-object v0, Lcom/viber/voip/sound/RingtoneService;->ringtoneServiceSingleton:Lcom/viber/voip/sound/IVibratorService;

    .line 50
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->ringtoneServiceSingleton:Lcom/viber/voip/sound/IVibratorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSilent()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processSampleEnd(Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 71
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    sget-object v1, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnCompletion listener got signal"

    invoke-static {v3, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->durationControlHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/viber/voip/sound/AbstractSoundService;->clearRouteFlags(I)I

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/sound/AbstractSoundService;->setMode(I)V

    .line 78
    :cond_0
    if-eqz p2, :cond_2

    .line 79
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restarting VoCodec after previous suspend"

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    check-cast v0, Lcom/viber/voip/sound/AudioDeviceOperable;

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->suspendNativeOnParallelGSM()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/AudioDeviceOperable;->startAudioRecord(Z)V

    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getEndPlaybackCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getEndPlaybackCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    .line 87
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->unlockModeChange()V

    goto :goto_0
.end method


# virtual methods
.method public getRingtone(I)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/RingtoneService;->getRingtone(IZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(IZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/RingtoneService;->getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":"

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/viber/voip/sound/RingtoneService;->getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/RingtoneService;->getRingtone(Landroid/net/Uri;Z)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;Z)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/RingtoneService;->getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    new-instance v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;-><init>(Lcom/viber/voip/sound/ISoundService;Landroid/net/Uri;ZZ)V

    return-object v0
.end method

.method public onModeStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 211
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public playRingtone(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/RingtoneService;->getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/RingtoneService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 216
    return-void
.end method

.method public playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x3

    .line 91
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will try to play ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/viber/voip/sound/RingtoneService;->isSilent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/viber/voip/sound/AbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Silent mode, or GSM call is active. skipping ringtone"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->blockVibrateInSilentMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/sound/RingtoneService;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "vibrating instead of ringing"

    invoke-static {v5, v0, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/viber/voip/sound/RingtoneService;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Lcom/viber/voip/sound/RingtoneService;->vibrationPattern_continuous:[J

    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->loop()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 103
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->loop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/viber/voip/sound/AbstractSoundService;->setRouteFlags(I)I

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->getMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne v5, v0, :cond_7

    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    instance-of v0, v0, Lcom/viber/voip/sound/AudioDeviceOperable;

    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VoCodec seems active during ringtone playback - will try to stop and restart it after playback"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    check-cast v0, Lcom/viber/voip/sound/AudioDeviceOperable;

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->suspendNativeOnParallelGSM()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/AudioDeviceOperable;->stopAudioRecord(Z)V

    .line 113
    const/4 v1, 0x1

    move v3, v1

    .line 119
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getStreamType()I

    move-result v0

    if-eq v2, v0, :cond_5

    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getStreamType()I

    move-result v0

    move v1, v0

    .line 120
    :goto_3
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getAudioMode()I

    move-result v0

    if-eq v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getAudioMode()I

    move-result v0

    .line 121
    :goto_4
    iget-object v4, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v4, p1, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setMediaDataSource(Lcom/viber/voip/sound/IRingtoneService$Ringtone;I)Landroid/media/MediaPlayer;

    .line 122
    iget-object v4, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v4}, Lcom/viber/voip/sound/AbstractSoundService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v4

    .line 123
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->loop()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getVolume()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 125
    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getVolume()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getVolume()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 126
    :cond_3
    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 128
    new-instance v1, Lcom/viber/voip/sound/RingtoneService$2;

    invoke-direct {v1, p0, p1, v3}, Lcom/viber/voip/sound/RingtoneService$2;-><init>(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 134
    const/4 v1, 0x3

    sget-object v2, Lcom/viber/voip/sound/RingtoneService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduling ringtone playback when mode will be set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->lockModeChange()V

    .line 136
    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    new-instance v2, Lcom/viber/voip/sound/RingtoneService$3;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/sound/RingtoneService$3;-><init>(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/sound/AbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 102
    goto/16 :goto_1

    .line 119
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->stream_Ring()I

    move-result v0

    move v1, v0

    goto :goto_3

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Ringtone()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_4

    :cond_7
    move v3, v1

    goto/16 :goto_2
.end method

.method public shouldVibrate()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->shouldVibrate(I)Z

    move-result v0

    return v0
.end method

.method public stopRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->durationControlHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->clearRouteFlags(I)I

    .line 173
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->stopMediaPlayer()V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getEndPlaybackCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getEndPlaybackCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    .line 180
    return-void
.end method

.method public stopRingtone()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/RingtoneService;->stopRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(J)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 237
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 232
    return-void
.end method

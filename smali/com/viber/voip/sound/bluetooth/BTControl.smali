.class public Lcom/viber/voip/sound/bluetooth/BTControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_HEADSET_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.STATE_CHANGED"

.field private static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"

.field private static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field private static final BUTTON_CHECK_DELAY:J = 0x384L

.field private static final CONNECTION_DELAY:J = 0x3e8L

.field private static final DEVICE_CONNECTION_NOTIFY_DELAY:I = 0x4b0

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.STATE"

.field private static final RECONNECTION_DELAY:I = 0xc8

.field private static final RECONNECT_ATTEMPTS_LIMIT:I = 0x5

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

.field private mConnectionDetector:Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;

.field private mConnectionRequested:Z

.field private final mConnectionStateReceiver:Landroid/content/BroadcastReceiver;

.field private mLastStartTime:J

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainThreadDelegate:Landroid/os/Handler;

.field private mReconnectCounter:I

.field private mScoState:I

.field private final mScoStateReceiver:Landroid/content/BroadcastReceiver;

.field private wasDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/bluetooth/BTControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mMainThreadDelegate:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;

    .line 66
    iput-boolean v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->wasDisconnected:Z

    .line 67
    iput-boolean v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    .line 70
    iput v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mReconnectCounter:I

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mLastStartTime:J

    .line 197
    new-instance v0, Lcom/viber/voip/sound/bluetooth/BTControl$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/bluetooth/BTControl$1;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoStateReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/viber/voip/sound/bluetooth/BTControl$4;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/bluetooth/BTControl$4;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionStateReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    .line 82
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BtConnectionDetectorFactory;->create(Landroid/content/Context;)Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionDetector:Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 87
    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    :goto_0
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->getScoStateFromIntent(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Bt} Sticky Sco State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    invoke-static {v1}, Lcom/viber/voip/sound/bluetooth/BTControl;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    .line 99
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 101
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    :goto_1
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl;->registerStateListener(Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;)V

    .line 111
    :cond_1
    return-void

    .line 90
    :cond_2
    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string/jumbo v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/content/Intent;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl;->getScoStateFromIntent(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/sound/bluetooth/BTControl;)Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/sound/bluetooth/BTControl;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAdapterEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/viber/voip/sound/bluetooth/BTControl;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->wasDisconnected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/viber/voip/sound/bluetooth/BTControl;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->notifyButtonClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/sound/bluetooth/BTControl;->handleConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/viber/voip/sound/bluetooth/BTControl;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method protected static getDeviceClassString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 404
    sparse-switch p0, :sswitch_data_0

    .line 422
    const-string/jumbo v0, "OTHER"

    :goto_0
    return-object v0

    .line 406
    :sswitch_0
    const-string/jumbo v0, "AUDIO_VIDEO_HANDSFREE"

    goto :goto_0

    .line 408
    :sswitch_1
    const-string/jumbo v0, "AUDIO_VIDEO_CAR_AUDIO"

    goto :goto_0

    .line 410
    :sswitch_2
    const-string/jumbo v0, "AUDIO_VIDEO_HEADPHONES"

    goto :goto_0

    .line 412
    :sswitch_3
    const-string/jumbo v0, "AUDIO_VIDEO_HIFI_AUDIO"

    goto :goto_0

    .line 414
    :sswitch_4
    const-string/jumbo v0, "AUDIO_VIDEO_MICROPHONE"

    goto :goto_0

    .line 416
    :sswitch_5
    const-string/jumbo v0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    goto :goto_0

    .line 418
    :sswitch_6
    const-string/jumbo v0, "AUDIO_VIDEO_LOUDSPEAKER"

    goto :goto_0

    .line 420
    :sswitch_7
    const-string/jumbo v0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    goto :goto_0

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_7
        0x408 -> :sswitch_0
        0x410 -> :sswitch_4
        0x414 -> :sswitch_6
        0x418 -> :sswitch_2
        0x41c -> :sswitch_5
        0x420 -> :sswitch_1
        0x428 -> :sswitch_3
    .end sparse-switch
.end method

.method private getScoStateFromIntent(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    .line 380
    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getStateString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 389
    packed-switch p0, :pswitch_data_0

    .line 399
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 391
    :pswitch_0
    const-string/jumbo v0, "connected"

    goto :goto_0

    .line 393
    :pswitch_1
    const-string/jumbo v0, "in progress"

    goto :goto_0

    .line 395
    :pswitch_2
    const-string/jumbo v0, "disconnected"

    goto :goto_0

    .line 397
    :pswitch_3
    const-string/jumbo v0, "error"

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    packed-switch p2, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->wasDisconnected:Z

    .line 297
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl;->notifyDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 300
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->wasDisconnected:Z

    .line 301
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl;->notifyDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 304
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl;->notifyDeviceConnectionError(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAdapterEnabled()Z
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 2

    .prologue
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isMiui()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMiui()Z
    .locals 2

    .prologue
    .line 376
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string/jumbo v1, "MIUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 372
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/bluetooth/BTControl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private notifyButtonClicked()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mMainThreadDelegate:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/sound/bluetooth/BTControl$8;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/bluetooth/BTControl$8;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method

.method private notifyDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mMainThreadDelegate:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/sound/bluetooth/BTControl$5;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl$5;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method

.method private notifyDeviceConnectionError(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mMainThreadDelegate:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/sound/bluetooth/BTControl$7;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl$7;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method private notifyDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mMainThreadDelegate:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/sound/bluetooth/BTControl$6;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/sound/bluetooth/BTControl$6;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method private registerStateListener(Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;)V
    .locals 2
    .parameter

    .prologue
    .line 359
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterStateListener(Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;)V
    .locals 2
    .parameter

    .prologue
    .line 366
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public disableBluetoothRoute()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isScoOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string/jumbo v0, "{Bt} disableBluetoothRoute skipped - SCO was not on"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 158
    const-string/jumbo v0, "{Bt} route disabled"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    goto :goto_0
.end method

.method public enableBluetoothRoute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    const-string/jumbo v0, "{Bt} no headset"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    const-string/jumbo v0, "{Bt} not enabled. sco is not avialbale off-call"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    iget v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 131
    const-string/jumbo v0, "{Bt} setting route"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    const-string/jumbo v0, "{Bt} route already set"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_5
    iget v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->startBluetoothSco()V

    .line 140
    iput-boolean v2, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    .line 141
    iput v3, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mReconnectCounter:I

    .line 142
    iput-boolean v3, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->wasDisconnected:Z

    .line 143
    const-string/jumbo v0, "{Bt} starting sco"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleScoStateChange(I)V
    .locals 4
    .parameter

    .prologue
    .line 212
    iput p1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    .line 213
    iget v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    packed-switch v0, :pswitch_data_0

    .line 261
    const/4 v0, 0x2

    iget v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mScoState:I

    if-eq v0, v1, :cond_0

    .line 262
    const-string/jumbo v0, "{Bt} SCO intent unhandled"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mLastStartTime:J

    .line 217
    iget-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    if-eqz v0, :cond_0

    .line 218
    const-string/jumbo v0, "{Bt} SCO connected. setting route"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mReconnectCounter:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 226
    iget v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mReconnectCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mReconnectCounter:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Bt} SCO disconnected, but connection is needed and avialble. requesting connection again. attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mReconnectCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->stopBluetoothSco()V

    .line 231
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mMainThreadDelegate:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/sound/bluetooth/BTControl$2;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/bluetooth/BTControl$2;-><init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mLastStartTime:J

    sub-long/2addr v0, v2

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{Bt} SCO disconnected, but was connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isHeadsetConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionDetector:Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionDetector:Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;

    invoke-interface {v1}, Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;->getConnectedHeadsets()Ljava/util/List;

    move-result-object v1

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScoOn()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public stopBluetooth()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    if-nez v0, :cond_1

    .line 169
    const-string/jumbo v0, "{Bt} stop skipped - SCO was not requested"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->stopBluetoothSco()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl;->mConnectionRequested:Z

    .line 175
    const-string/jumbo v0, "{Bt} sco stopped"

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

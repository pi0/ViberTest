.class public Lcom/viber/voip/sound/MMControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final ENABLE_RESUME:Z = false

.field private static final FIELDID_PACKAGE:I = 0x0

.field private static final FIELDID_PAUSE_INTENT:I = 0x2

.field private static final FIELDID_RESUME_INTENT:I = 0x3

.field private static final FIELDID_SVCNAME:I = 0x1

.field private static final SEND_SHUTUP_BROADCAST:Z = true

.field public static final TAG:Ljava/lang/String; = null

.field private static final USE_REMOTE_INTF_CTL:Z = true

.field private static final blacklistedModels_badRemoteIntf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final maintainableServicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<[",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static volatile mediaController:Lcom/viber/voip/sound/MMControl;

.field private static final mediaPlaybackIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private volatile availableIntf:I

.field private final context:Landroid/content/Context;

.field private dummyMusicServiceReceiver:Landroid/content/BroadcastReceiver;

.field private volatile guessControlIsBroadcastOnly:Z

.field private mGenericService:Landroid/os/IInterface;

.field private volatile mm_interrupted:Z

.field private volatile remoteIntfFailed:Z

.field private soundService:Lcom/viber/voip/sound/ISoundService;

.field private volatile wasPlaying_broadcasted:Z

.field private volatile wasPlaying_intf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    const-class v0, Lcom/viber/voip/sound/MMControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/MMControl;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/MMControl;->blacklistedModels_badRemoteIntf:Ljava/util/List;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    .line 64
    sget-object v0, Lcom/viber/voip/sound/MMControl;->blacklistedModels_badRemoteIntf:Ljava/util/List;

    const-string/jumbo v1, "GT-S5570"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/viber/voip/sound/MMControl;->blacklistedModels_badRemoteIntf:Ljava/util/List;

    const-string/jumbo v1, "Milestone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "com.htc.music"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.htc.music.MediaPlaybackService"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.htc.music.musicservicecommand.pause"

    aput-object v3, v2, v6

    const-string/jumbo v3, "com.htc.music.musicservicecommand.togglepause"

    aput-object v3, v2, v7

    const-class v3, Lcom/b/a/b;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "com.android.music"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.android.music.player.service.CorePlayerService"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.android.music.musicservicecommand.pause"

    aput-object v3, v2, v6

    const-string/jumbo v3, "com.android.music.musicservicecommand.togglepause"

    aput-object v3, v2, v7

    const-class v3, Lcom/android/music/player/a/b;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "com.sec.android.app.music"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.sec.android.app.music.player.service.CorePlayerService"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.android.music.musicservicecommand.pause"

    aput-object v3, v2, v6

    const-string/jumbo v3, "com.android.music.musicservicecommand.togglepause"

    aput-object v3, v2, v7

    const-class v3, Lcom/sec/android/app/music/player/a/b;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "com.android.music"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.android.music.MediaPlaybackService"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.android.music.musicservicecommand.pause"

    aput-object v3, v2, v6

    const-string/jumbo v3, "com.android.music.musicservicecommand.togglepause"

    aput-object v3, v2, v7

    const-class v3, Lcom/android/music/b;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/sound/MMControl;->mediaController:Lcom/viber/voip/sound/MMControl;

    .line 263
    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    .line 45
    iput-boolean v1, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_intf:Z

    .line 46
    iput-boolean v1, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z

    .line 47
    iput-boolean v1, p0, Lcom/viber/voip/sound/MMControl;->mm_interrupted:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->remoteIntfFailed:Z

    .line 50
    iput-boolean v1, p0, Lcom/viber/voip/sound/MMControl;->guessControlIsBroadcastOnly:Z

    .line 123
    new-instance v0, Lcom/viber/voip/sound/MMControl$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/MMControl$1;-><init>(Lcom/viber/voip/sound/MMControl;)V

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->dummyMusicServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iput-object p1, p0, Lcom/viber/voip/sound/MMControl;->soundService:Lcom/viber/voip/sound/ISoundService;

    .line 226
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    .line 227
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/sound/MMControl;->dummyMusicServiceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/viber/voip/sound/MMControl;->mediaPlaybackIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-direct {p0}, Lcom/viber/voip/sound/MMControl;->reconnect()V

    .line 230
    return-void
.end method

.method static synthetic access$002(Lcom/viber/voip/sound/MMControl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/viber/voip/sound/MMControl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/sound/MMControl;->guessControlIsBroadcastOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/viber/voip/sound/MMControl;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/MMControl;->remote_isPlaying(Z)Z

    move-result v0

    return v0
.end method

.method private varargs findMethodDecl(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 173
    if-nez p1, :cond_1

    move-object v0, v2

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    invoke-direct {p0, p3}, Lcom/viber/voip/sound/MMControl;->objectToClassMap([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v5

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v3, v1

    move-object v0, v2

    :goto_1
    if-ge v3, v7, :cond_0

    aget-object v4, v6, v3

    .line 177
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 176
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_3
    array-length v8, v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-ne v8, v9, :cond_2

    move v0, v1

    .line 180
    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_7

    .line 182
    :try_start_0
    aget-object v8, v5, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :catch_0
    move-exception v8

    .line 184
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_6

    .line 185
    const-class v8, Ljava/lang/Integer;

    aget-object v9, v5, v0

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object v0, v4

    .line 197
    :goto_3
    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    .line 194
    goto :goto_3

    :cond_7
    move-object v0, v4

    goto :goto_3
.end method

.method public static declared-synchronized getMediaController(Lcom/viber/voip/sound/ISoundService;)Lcom/viber/voip/sound/MMControl;
    .locals 2
    .parameter

    .prologue
    .line 266
    const-class v1, Lcom/viber/voip/sound/MMControl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/sound/MMControl;->hasBadRemoteInterface_blacklisted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 273
    :goto_0
    monitor-exit v1

    return-object v0

    .line 270
    :cond_0
    :try_start_1
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaController:Lcom/viber/voip/sound/MMControl;

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Lcom/viber/voip/sound/MMControl;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/MMControl;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    sput-object v0, Lcom/viber/voip/sound/MMControl;->mediaController:Lcom/viber/voip/sound/MMControl;

    .line 273
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/MMControl;->mediaController:Lcom/viber/voip/sound/MMControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static hasBadRemoteInterface_blacklisted()Z
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lcom/viber/voip/sound/MMControl;->blacklistedModels_badRemoteIntf:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isServiceAccessible(Landroid/os/IInterface;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 386
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    move v0, v2

    .line 398
    :goto_0
    return v0

    .line 387
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 388
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 391
    iget-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    sget-object v1, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 398
    goto :goto_0
.end method

.method private varargs objectToClassMap([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    monitor-enter p0

    .line 166
    :try_start_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    move v2, v1

    .line 167
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_2

    aget-object v1, p1, v2

    if-eqz v1, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_2
    aput-object v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    const-class v1, Ljava/lang/Object;

    goto :goto_2

    .line 168
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reconnect()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_intf:Z

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->remoteIntfFailed:Z

    .line 237
    return-void
.end method

.method private remote_isPlaying()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/MMControl;->remote_isPlaying(Z)Z

    move-result v0

    return v0
.end method

.method private remote_isPlaying(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-static {}, Lcom/viber/voip/sound/MMControl;->hasBadRemoteInterface_blacklisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return v1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;

    const-string/jumbo v2, "isPlaying"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v3}, Lcom/viber/voip/sound/MMControl;->invoke(Landroid/os/IInterface;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private sendPlayerBroadcastAlt(I)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x55

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 301
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/MMControl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "publishing media source controlling broadcast..."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 307
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/sound/MMControl;->dummyMusicServiceReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 310
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 312
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/sound/MMControl;->dummyMusicServiceReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 314
    return-void
.end method

.method private sendPlayerCommand(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 277
    const/4 v0, -0x1

    iget v1, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    if-eq v0, v1, :cond_0

    if-ne v4, p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    iget v1, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v0, p1

    .line 282
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/viber/voip/sound/MMControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPlayerCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Landroid/content/ComponentName;

    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    iget v3, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    iget v4, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 296
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/MMControl;->sendPlayerBroadcastAlt(I)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/sound/MMControl;->dummyMusicServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 405
    return-void
.end method

.method public varargs invoke(Landroid/os/IInterface;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/sound/MMControl;->findMethodDecl(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 149
    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-object v0

    .line 150
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    :try_start_0
    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 157
    :catch_2
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, -0x1

    iget v1, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    if-ne v0, v1, :cond_1

    .line 204
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/MMControl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "media service replies with connection, but don\'t know which interface to use"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/MMControl;->maintainableServicesList:Ljava/util/List;

    iget v1, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 209
    const-class v1, Lcom/b/a/b;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-static {p2}, Lcom/b/a/b;->a(Landroid/os/IBinder;)Lcom/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :cond_2
    const-class v1, Lcom/android/music/b;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    invoke-static {p2}, Lcom/android/music/b;->a(Landroid/os/IBinder;)Lcom/android/music/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;

    goto :goto_0

    .line 213
    :cond_3
    const-class v1, Lcom/android/music/player/a/b;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p2}, Lcom/android/music/player/a/b;->a(Landroid/os/IBinder;)Lcom/android/music/player/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;

    .line 221
    invoke-direct {p0}, Lcom/viber/voip/sound/MMControl;->reconnect()V

    .line 222
    return-void
.end method

.method public processPhoneStateChange(I)V
    .locals 3
    .parameter

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 345
    :pswitch_0
    iget-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->mm_interrupted:Z

    if-eqz v0, :cond_2

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_1
    iget-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->mm_interrupted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/sound/MMControl;->hasBadRemoteInterface_blacklisted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->mm_interrupted:Z

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/sound/MMControl;->remote_isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_intf:Z

    .line 347
    iget-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->guessControlIsBroadcastOnly:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->mGenericService:Landroid/os/IInterface;

    iget v1, p0, Lcom/viber/voip/sound/MMControl;->availableIntf:I

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/sound/MMControl;->isServiceAccessible(Landroid/os/IInterface;I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/viber/voip/sound/MMControl;->hasBadRemoteInterface_blacklisted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->wasPlaying_intf:Z

    if-nez v0, :cond_6

    .line 360
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 364
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sound/MMControl;->mm_interrupted:Z

    goto :goto_0

    .line 349
    :cond_6
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/MMControl;->sendPlayerCommand(I)V

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

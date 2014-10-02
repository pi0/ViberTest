.class public Lcom/viber/voip/sound/VoENativeDebugHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _statsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _videoCaptureDebugLocation:Ljava/lang/String;

.field private static _videoCaptureEnabled:Z

.field private static _videoInRtpdumpLocation:Ljava/lang/String;

.field private static _videoOutRtpdumpLocation:Ljava/lang/String;

.field private static _videoRtpdumpEnabled:Z

.field private static _voiceInRtpdumpLocation:Ljava/lang/String;

.field private static _voiceOutRtpdumpLocation:Ljava/lang/String;

.field private static _voiceRtpdumpEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceInRtpdumpLocation:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceOutRtpdumpLocation:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoInRtpdumpLocation:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoOutRtpdumpLocation:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureDebugLocation:Ljava/lang/String;

    .line 27
    sput-boolean v1, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceRtpdumpEnabled:Z

    .line 28
    sput-boolean v1, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoRtpdumpEnabled:Z

    .line 29
    sput-boolean v1, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureEnabled:Z

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_statsListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_statsListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static addMediaStatisticsListener(Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    sget-object v1, Lcom/viber/voip/sound/VoENativeDebugHelper;->_statsListeners:Ljava/util/Set;

    monitor-enter v1

    .line 149
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_statsListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearDumps()V
    .locals 8

    .prologue
    .line 131
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/viber/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    new-instance v0, Lcom/viber/voip/sound/VoENativeDebugHelper$1;

    invoke-direct {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper$1;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 143
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 145
    :cond_0
    return-void
.end method

.method public static final getStandardDebugLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/viber/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMdd-ahhmmss"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".rtpdump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoCaptureLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureEnabled:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureDebugLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureDebugLocation:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videocapture"

    invoke-static {v1}, Lcom/viber/voip/sound/VoENativeDebugHelper;->getStandardDebugLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".i420p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoInRtpdumpLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoRtpdumpEnabled:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoInRtpdumpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoInRtpdumpLocation:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    const-string/jumbo v0, "videoin"

    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->getStandardDebugLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoInRtpdumpLocation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    sput-object p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoInRtpdumpLocation:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static getVideoOutRtpdumpLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoRtpdumpEnabled:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoOutRtpdumpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoOutRtpdumpLocation:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_1
    const-string/jumbo v0, "videoout"

    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->getStandardDebugLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoOutRtpdumpLocation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    sput-object p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoOutRtpdumpLocation:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static getVoiceInRtpdumpLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceRtpdumpEnabled:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceInRtpdumpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceInRtpdumpLocation:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_1
    const-string/jumbo v0, "voicein"

    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->getStandardDebugLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVoiceOutRtpdumpLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceRtpdumpEnabled:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceOutRtpdumpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceOutRtpdumpLocation:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_1
    const-string/jumbo v0, "voiceout"

    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->getStandardDebugLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVoiceOutRtpdumpLocation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    sput-object p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceOutRtpdumpLocation:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static isVideoCaptureEnabled()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureEnabled:Z

    return v0
.end method

.method public static isVideoRtpdumpEnabled()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoRtpdumpEnabled:Z

    return v0
.end method

.method public static isVoiceRtpdumpEnabled()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceRtpdumpEnabled:Z

    return v0
.end method

.method public static removeMediaStatisticsListener(Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    sget-object v1, Lcom/viber/voip/sound/VoENativeDebugHelper;->_statsListeners:Ljava/util/Set;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_statsListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setVideoCaptureEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput-boolean p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureEnabled:Z

    .line 47
    return-void
.end method

.method public static setVideoCaptureLocation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    sput-object p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoCaptureDebugLocation:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static setVideoRtpdumpEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-boolean p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_videoRtpdumpEnabled:Z

    .line 43
    return-void
.end method

.method public static setVoiceInRtpdumpLocation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    sput-object p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceInRtpdumpLocation:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static setVoiceRtpdumpEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-boolean p0, Lcom/viber/voip/sound/VoENativeDebugHelper;->_voiceRtpdumpEnabled:Z

    .line 39
    return-void
.end method

.method private static updateStatistics(Lcom/viber/jni/MediaStats;)V
    .locals 2
    .parameter
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/sound/VoENativeDebugHelper$2;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/VoENativeDebugHelper$2;-><init>(Lcom/viber/jni/MediaStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

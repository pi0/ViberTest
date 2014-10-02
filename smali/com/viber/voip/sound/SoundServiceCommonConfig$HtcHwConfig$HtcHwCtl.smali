.class public Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile _available:B

.field private static volatile _on:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, -0x1

    sput-byte v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_available:B

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_on:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized ctlHwAec(Landroid/content/Context;Landroid/media/AudioManager;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    const-class v1, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->ctlHwAecSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 178
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_on:Z

    if-eq v0, p2, :cond_0

    .line 179
    const-string/jumbo v0, "0"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "sound_settings_htc_hwaec"

    const-string/jumbo v4, "0"

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/SoundServiceCommonConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "HTC hwAEC is disabled by preferences, wouldn\'t set"

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 183
    :cond_2
    :try_start_2
    sput-boolean p2, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_on:Z

    if-eqz p2, :cond_3

    const-string/jumbo v0, "HTCHWAEC=ON"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/SoundServiceCommonConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTC hwAEC is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_on:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    const-string/jumbo v0, "HTCHWAEC=OFF"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static final declared-synchronized ctlHwAecSupported()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    const-class v2, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;

    monitor-enter v2

    :try_start_0
    sget-byte v3, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_available:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 166
    const-string/jumbo v3, "persist.audio.SupportHTCHWAEC"

    invoke-static {v3}, Lcom/viber/voip/sound/SoundServiceCommonConfig$SystemProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    if-nez v3, :cond_0

    const/4 v4, 0x0

    sput-byte v4, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_available:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    sput-byte v3, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_available:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :cond_1
    :goto_0
    :try_start_2
    sget-byte v3, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_available:B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v0, :cond_2

    :goto_1
    monitor-exit v2

    return v0

    .line 170
    :catch_0
    move-exception v3

    .line 171
    const/4 v3, 0x0

    :try_start_3
    sput-byte v3, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->_available:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    .line 174
    goto :goto_1
.end method

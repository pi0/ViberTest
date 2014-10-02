.class public Lorg/webrtc/videoengine/ViEVideoSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOW_WHITELISTED_DEVICES_ONLY:Z = false

.field private static final DEFAULT_MINIMAL_API_VERSION:I = 0xe

.field private static MINIMAL_API_VERSION:I

.field private static final deviceBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;",
            ">;"
        }
    .end annotation
.end field

.field private static final deviceWhitelist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceWhitelist:Ljava/util/Map;

    .line 74
    const/16 v0, 0xe

    sput v0, Lorg/webrtc/videoengine/ViEVideoSupport;->MINIMAL_API_VERSION:I

    .line 79
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "OT-4007D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "A3333"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "S710e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "A810e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "A510e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "A7272"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "LG-P500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "GT-S5830"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "GT-S5570"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "GT-i5510T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "GT-S5300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "GT-S5360"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "GT-S6102"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "X10i"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "E10i"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    const-string/jumbo v1, "ZTE U-V880"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lorg/webrtc/videoengine/ViEVideoSupport;->loadExternalSupportLists()Z

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public static final isVideoCallSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->isVideoSupportBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    .line 169
    :goto_0
    if-nez v3, :cond_1

    .line 181
    :goto_1
    return v2

    :cond_0
    move v3, v2

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    sget v0, Lorg/webrtc/videoengine/ViEVideoSupport;->MINIMAL_API_VERSION:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_2

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    .line 173
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    and-int/2addr v3, v0

    .line 174
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    and-int/2addr v0, v3

    .line 176
    sget-object v3, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceWhitelist:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 177
    sget-object v3, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceWhitelist:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 179
    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->getEngineStatus()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    :goto_5
    and-int v2, v0, v1

    .line 181
    goto :goto_1

    :cond_2
    move v0, v2

    .line 171
    goto :goto_2

    :cond_3
    move v0, v2

    .line 173
    goto :goto_3

    :cond_4
    move v0, v2

    .line 174
    goto :goto_4

    :cond_5
    move v1, v2

    .line 179
    goto :goto_5
.end method

.method static final loadExternalSupportLists()Z
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/viber/video_quirks.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEVideoSupport;->loadExternalSupportLists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final loadExternalSupportLists(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 102
    :cond_0
    :try_start_0
    new-instance v4, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 104
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 105
    :goto_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_2

    .line 140
    :cond_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    move v0, v2

    .line 144
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "blacklist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    :cond_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 111
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    const-string/jumbo v0, "blacklist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceBlacklist:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_3
    :try_start_1
    invoke-static {v4, v0}, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->fromJSON(Landroid/util/JsonReader;Ljava/util/Map;)Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;

    move-result-object v5

    .line 115
    if-eqz v5, :cond_4

    .line 116
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :try_start_2
    invoke-static {v5}, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->magic(Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    :catch_0
    move-exception v0

    .line 124
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    move v0, v1

    .line 142
    goto :goto_0

    .line 112
    :cond_6
    sget-object v0, Lorg/webrtc/videoengine/ViEVideoSupport;->deviceWhitelist:Ljava/util/Map;

    goto :goto_3

    .line 125
    :cond_7
    const-string/jumbo v0, "minimal_api_level"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    const-string/jumbo v0, "STRING"

    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 128
    const/16 v0, 0xa

    .line 129
    const-string/jumbo v5, "0x"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 130
    const-string/jumbo v0, "0x"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    const/16 v0, 0x10

    .line 133
    :cond_8
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/webrtc/videoengine/ViEVideoSupport;->MINIMAL_API_VERSION:I

    goto/16 :goto_1

    .line 135
    :cond_9
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    sput v0, Lorg/webrtc/videoengine/ViEVideoSupport;->MINIMAL_API_VERSION:I

    goto/16 :goto_1

    .line 138
    :cond_a
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

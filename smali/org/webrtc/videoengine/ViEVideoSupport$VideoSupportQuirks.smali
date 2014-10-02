.class Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ident:Ljava/lang/String;

.field public final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->vendor:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->ident:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromJSON(Landroid/util/JsonReader;Ljava/util/Map;)Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;",
            ">;)",
            "Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v2

    move-object v1, v2

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 44
    :try_start_1
    const-string/jumbo v4, "device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    const-string/jumbo v4, "vendor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    move-object v0, v2

    .line 58
    :goto_1
    return-object v0

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 56
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    throw v0

    .line 57
    :cond_3
    new-instance v2, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;

    invoke-direct {v2, v1, v0}, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 58
    goto :goto_1
.end method

.method public static final magic(Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->ident:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    instance-of v0, p1, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEVideoSupport$VideoSupportQuirks;->ident:Ljava/lang/String;

    return-object v0
.end method

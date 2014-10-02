.class Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final colorspaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field public final isEncoder:Z
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field public final mimetype:Ljava/lang/String;
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->colorspaces:Ljava/util/Set;

    .line 232
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->mimetype:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->name:Ljava/lang/String;

    .line 234
    iput-boolean p3, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->isEncoder:Z

    .line 235
    return-void
.end method


# virtual methods
.method public addSupportedColorspace(I)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->colorspaces:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 248
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

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
    .line 247
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public supportedColorspaces()[I
    .locals 5

    .prologue
    .line 240
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->colorspaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->colorspaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 243
    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->name:Ljava/lang/String;

    return-object v0
.end method

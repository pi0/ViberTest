.class public final enum Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field public static final enum kRenderOrientation0Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field public static final enum kRenderOrientation180Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field public static final enum kRenderOrientation270Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field public static final enum kRenderOrientation90Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field public static final enum kRenderOrientationFixed:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field public static final enum kRenderOrientationFloat:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const-string/jumbo v1, "kRenderOrientationFixed"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientationFixed:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 154
    new-instance v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const-string/jumbo v1, "kRenderOrientationFloat"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientationFloat:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 155
    new-instance v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const-string/jumbo v1, "kRenderOrientation0Deg"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation0Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 156
    new-instance v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const-string/jumbo v1, "kRenderOrientation90Deg"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation90Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 157
    new-instance v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const-string/jumbo v1, "kRenderOrientation180Deg"

    invoke-direct {v0, v1, v7}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation180Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 158
    new-instance v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const-string/jumbo v1, "kRenderOrientation270Deg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation270Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    sget-object v1, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientationFixed:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientationFloat:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation0Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation90Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    aput-object v1, v0, v6

    sget-object v1, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation180Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation270Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->$VALUES:[Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;
    .locals 1
    .parameter

    .prologue
    .line 152
    const-class v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->$VALUES:[Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    invoke-virtual {v0}, [Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    return-object v0
.end method

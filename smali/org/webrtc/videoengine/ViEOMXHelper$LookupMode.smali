.class final enum Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

.field public static final enum DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

.field public static final enum ENCODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

.field public static final enum ENCODER_AND_DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    new-instance v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    const-string/jumbo v1, "ENCODER_AND_DECODER"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER_AND_DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    .line 375
    new-instance v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    const-string/jumbo v1, "ENCODER"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    .line 376
    new-instance v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    const-string/jumbo v1, "DECODER"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    .line 373
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER_AND_DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->$VALUES:[Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

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
    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    .locals 1
    .parameter

    .prologue
    .line 373
    const-class v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->$VALUES:[Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-virtual {v0}, [Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    return-object v0
.end method

.class public final enum Lcom/viber/voip/sound/VoiceStateListener$VoiceState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/sound/VoiceStateListener$VoiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

.field public static final enum VS_GSM:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

.field public static final enum VS_RINGER:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

.field public static final enum VS_VOICE:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    const-string/jumbo v1, "VS_RINGER"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_RINGER:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    .line 6
    new-instance v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    const-string/jumbo v1, "VS_VOICE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_VOICE:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    .line 7
    new-instance v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    const-string/jumbo v1, "VS_GSM"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_GSM:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    sget-object v1, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_RINGER:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_VOICE:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_GSM:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->$VALUES:[Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/sound/VoiceStateListener$VoiceState;
    .locals 1
    .parameter

    .prologue
    .line 4
    const-class v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/sound/VoiceStateListener$VoiceState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->$VALUES:[Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    invoke-virtual {v0}, [Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    return-object v0
.end method

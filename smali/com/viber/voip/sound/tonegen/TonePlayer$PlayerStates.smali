.class final enum Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

.field public static final enum STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

.field public static final enum STATE_PLAY:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

.field public static final enum STATE_SUSPENDED:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    const-string/jumbo v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    .line 33
    new-instance v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    const-string/jumbo v1, "STATE_PLAY"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_PLAY:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    .line 34
    new-instance v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    const-string/jumbo v1, "STATE_SUSPENDED"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_SUSPENDED:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_IDLE:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_PLAY:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->STATE_SUSPENDED:Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->$VALUES:[Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->$VALUES:[Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    invoke-virtual {v0}, [Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/sound/tonegen/TonePlayer$PlayerStates;

    return-object v0
.end method

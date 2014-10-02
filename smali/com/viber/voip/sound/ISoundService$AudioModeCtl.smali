.class public final enum Lcom/viber/voip/sound/ISoundService$AudioModeCtl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/sound/ISoundService$AudioModeCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

.field public static final enum MODE_EARPIECE:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

.field public static final enum MODE_LOUDSPEAKER:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    const-string/jumbo v1, "MODE_EARPIECE"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->MODE_EARPIECE:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    .line 284
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    const-string/jumbo v1, "MODE_LOUDSPEAKER"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->MODE_LOUDSPEAKER:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->MODE_EARPIECE:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->MODE_LOUDSPEAKER:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->$VALUES:[Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

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
    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/sound/ISoundService$AudioModeCtl;
    .locals 1
    .parameter

    .prologue
    .line 282
    const-class v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/sound/ISoundService$AudioModeCtl;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->$VALUES:[Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    invoke-virtual {v0}, [Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    return-object v0
.end method

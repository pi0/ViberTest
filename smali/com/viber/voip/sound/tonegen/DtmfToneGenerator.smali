.class public Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;
.super Lcom/viber/voip/sound/tonegen/ToneGenerator;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = null

.field private static final USE_POOLED_DTMF_TONES_INTERNAL:Z = true

.field private static final dtmfPreloadSamplesIds:[I

.field static volatile modeReverter:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;


# instance fields
.field mediaGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

.field private final soundService:Lcom/viber/voip/sound/ISoundService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->dtmfPreloadSamplesIds:[I

    .line 63
    new-instance v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;

    invoke-direct {v0}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->modeReverter:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;

    .line 64
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
        0x7t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
        0xat 0x0t 0x6t 0x7ft
        0xbt 0x0t 0x6t 0x7ft
        0xct 0x0t 0x6t 0x7ft
        0xdt 0x0t 0x6t 0x7ft
        0x1t 0x0t 0x6t 0x7ft
        0x14t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;IIF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/sound/tonegen/ToneGenerator;-><init>(Lcom/viber/voip/sound/ISoundService;II)V

    .line 68
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    .line 73
    new-instance v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;

    sget-object v5, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->dtmfPreloadSamplesIds:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;-><init>(Lcom/viber/voip/sound/ISoundService;IIF[I)V

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->mediaGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;)Lcom/viber/voip/sound/ISoundService;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method


# virtual methods
.method protected repostCallbackAfter(Ljava/lang/Runnable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_0

    add-int/lit16 v0, p2, 0x3e8

    invoke-super {p0, p1, v0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->repostCallbackAfter(Ljava/lang/Runnable;I)V

    .line 105
    :cond_0
    return-void
.end method

.method public startTone(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->modeReverter:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    iget-object v2, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->mode_Normal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->revertTo(Lcom/viber/voip/sound/ISoundService;I)Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;

    move-result-object v0

    .line 113
    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->startTone(IILjava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public startTone(IILjava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduling DTMF tone #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->mode_Dtmf()I

    move-result v1

    new-instance v2, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;-><init>(Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;IILjava/lang/Runnable;)V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/sound/ISoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V

    .line 100
    return-void
.end method

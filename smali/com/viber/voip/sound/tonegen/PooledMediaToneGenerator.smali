.class public Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/tonegen/IToneGenerator;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final mediaHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaPool:Landroid/media/SoundPool;

.field private static volatile nowPlaying:I


# instance fields
.field private volatile _mode:I

.field private volatile _volume:F

.field private final context:Landroid/content/Context;

.field private volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->nowPlaying:I

    .line 32
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->stream_Dtmf()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaPool:Landroid/media/SoundPool;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaHash:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;IIF[I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->pending:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->_volume:F

    .line 27
    iput v1, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->_mode:I

    .line 38
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->context:Landroid/content/Context;

    .line 39
    iput p4, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->_volume:F

    .line 40
    if-eqz p5, :cond_0

    invoke-virtual {p0, p5}, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->loadSamples([I)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public getSoundId(I)I
    .locals 2
    .parameter

    .prologue
    .line 61
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public loadSamples([I)V
    .locals 8
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->pending:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->pending:I

    .line 47
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 48
    const/4 v3, 0x3

    sget-object v4, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loading resId#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    sget-object v3, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaHash:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaPool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->context:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 55
    :cond_0
    return-void
.end method

.method public onModeStateChangeDeferred(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x5

    sget-object v1, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PooledMediaToneGenerator got defer signal for mode state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onModeStateChangeRejected(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x5

    sget-object v1, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PooledMediaToneGenerator got reject signal for mode state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onModeStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->_mode:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->stopTone()V

    .line 70
    :cond_0
    return-void
.end method

.method public startTone(I)V
    .locals 1
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->startTone(II)V

    .line 86
    return-void
.end method

.method public startTone(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->startTone(IILjava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public startTone(IILjava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 95
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->getSoundId(I)I

    move-result v1

    .line 96
    const/4 v0, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    sget-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no sample for resource#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found preloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduling sample#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/res#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for playing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->_volume:F

    iget v3, p0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->_volume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->nowPlaying:I

    goto :goto_0
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->mediaPool:Landroid/media/SoundPool;

    sget v1, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->nowPlaying:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/viber/voip/sound/tonegen/PooledMediaToneGenerator;->nowPlaying:I

    .line 81
    return-void
.end method

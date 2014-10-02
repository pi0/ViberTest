.class public Lcom/viber/voip/AudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUDIOHANDLER_MAGIC:I = 0x2

.field public static final TAG:Ljava/lang/String; = null

.field private static final USE_NATIVE_CALLBACKS:Z = true

.field public static buffer:[B

.field static minBufferSize:I


# instance fields
.field mPlatformAudioRecord:Landroid/media/AudioRecord;

.field oActiveObject:I

.field sampleRate:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 11
    const-class v0, Lcom/viber/voip/AudioRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/AudioRecord;->$assertionsDisabled:Z

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/viber/voip/AudioRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-JAVA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    .line 165
    const v0, 0xac44

    invoke-static {v0, v2, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sput v0, Lcom/viber/voip/AudioRecord;->minBufferSize:I

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/AudioRecord;->buffer:[B

    .line 169
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v6, p0, Lcom/viber/voip/AudioRecord;->oActiveObject:I

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/viber/voip/AudioRecord;->sampleRate:[I

    .line 45
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new object with native callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0x%8x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/viber/voip/AudioRecord;->setActiveObjectCallback(I)V

    .line 48
    return-void

    .line 59
    :array_0
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x22t 0x56t 0x0t 0x0t
        0x11t 0x2bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method private setActiveObjectCallback(I)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput p1, p0, Lcom/viber/voip/AudioRecord;->oActiveObject:I

    .line 152
    return-void
.end method

.method public static native staticinit()I
.end method


# virtual methods
.method public native nativeSet(IIIIII)I
.end method

.method public native nativeStart(I)V
.end method

.method public native nativeStop(I)V
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 119
    :goto_0
    return v0

    .line 117
    :cond_0
    sget-boolean v0, Lcom/viber/voip/AudioRecord;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_0
.end method

.method public set(IIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    .line 69
    sget-object v0, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set: audioSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; sampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->sampleRate:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; channelConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; audioformat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; bufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/media/AudioRecord;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    .line 97
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bad state reported, retrying"

    invoke-static {v7, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 105
    iget v1, p0, Lcom/viber/voip/AudioRecord;->oActiveObject:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/AudioRecord;->nativeSet(IIIIII)I

    .line 106
    sget-object v0, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set: result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "fmt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cfg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelConfiguration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/srate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/rst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/ntf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getPositionNotificationPeriod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/mark:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getNotificationMarkerPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-object v0, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cannot initialize recorder"

    invoke-static {v7, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startRecording"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-boolean v0, Lcom/viber/voip/AudioRecord;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget v0, p0, Lcom/viber/voip/AudioRecord;->oActiveObject:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/AudioRecord;->nativeStart(I)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 134
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/AudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-boolean v0, Lcom/viber/voip/AudioRecord;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_1
    iget v0, p0, Lcom/viber/voip/AudioRecord;->oActiveObject:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/AudioRecord;->nativeStop(I)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/AudioRecord;->mPlatformAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_0
.end method

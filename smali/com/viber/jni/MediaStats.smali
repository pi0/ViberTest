.class public Lcom/viber/jni/MediaStats;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isP2P:Z

.field public isTCP:Z

.field public recv_bitrate:I

.field public rx_codec:Ljava/lang/String;

.field public send_bitrate:I

.field public tx_codec:Ljava/lang/String;

.field public final videoStats:Lcom/viber/jni/MediaStats$VideoStats;

.field public final voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/viber/jni/MediaStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/jni/MediaStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/viber/jni/MediaStats;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIILcom/viber/jni/MediaStats$VoiceStats;Lcom/viber/jni/MediaStats$VideoStats;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIILcom/viber/jni/MediaStats$VoiceStats;Lcom/viber/jni/MediaStats$VideoStats;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    sget-object v0, Lcom/viber/jni/MediaStats;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaStats ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object p1, p0, Lcom/viber/jni/MediaStats;->tx_codec:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/viber/jni/MediaStats;->rx_codec:Ljava/lang/String;

    .line 194
    iput-boolean p3, p0, Lcom/viber/jni/MediaStats;->isP2P:Z

    .line 195
    iput-boolean p4, p0, Lcom/viber/jni/MediaStats;->isTCP:Z

    .line 196
    iput p5, p0, Lcom/viber/jni/MediaStats;->send_bitrate:I

    .line 197
    iput p6, p0, Lcom/viber/jni/MediaStats;->recv_bitrate:I

    .line 198
    iput-object p7, p0, Lcom/viber/jni/MediaStats;->voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;

    .line 199
    iput-object p8, p0, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    .line 200
    return-void
.end method

.method protected static create(Ljava/lang/String;Ljava/lang/String;ZZII)Lcom/viber/jni/MediaStats;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v0, Lcom/viber/jni/MediaStats;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/MediaStats;-><init>(Ljava/lang/String;Ljava/lang/String;ZZII)V

    return-object v0
.end method

.method protected static create(Ljava/lang/String;Ljava/lang/String;ZZIILcom/viber/jni/MediaStats$VoiceStats;Lcom/viber/jni/MediaStats$VideoStats;)Lcom/viber/jni/MediaStats;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Lcom/viber/jni/MediaStats;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/viber/jni/MediaStats;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIILcom/viber/jni/MediaStats$VoiceStats;Lcom/viber/jni/MediaStats$VideoStats;)V

    return-object v0
.end method

.method protected static createVideoStats(IIIIIIIIIIIIIIIIIIIII)Lcom/viber/jni/MediaStats$VideoStats;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    new-instance v4, Lcom/viber/jni/MediaStats$VideoStats;

    new-instance v8, Lcom/viber/jni/MediaStats$VideoStats$RTP;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/viber/jni/MediaStats$VideoStats$RTP;-><init>(IIII)V

    new-instance v9, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v9, v0, v1}, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;-><init>(II)V

    new-instance v10, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    move/from16 v0, p9

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;-><init>(IIII)V

    new-instance v11, Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    move/from16 v0, p13

    move/from16 v1, p14

    move/from16 v2, p15

    move/from16 v3, p16

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/viber/jni/MediaStats$VideoStats$RTCP;-><init>(IIII)V

    new-instance v12, Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    move/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p19

    move/from16 v3, p20

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/viber/jni/MediaStats$VideoStats$RTCP;-><init>(IIII)V

    move v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v4 .. v12}, Lcom/viber/jni/MediaStats$VideoStats;-><init>(IIILcom/viber/jni/MediaStats$VideoStats$RTP;Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;Lcom/viber/jni/MediaStats$VideoStats$RTCP;Lcom/viber/jni/MediaStats$VideoStats$RTCP;)V

    return-object v4
.end method

.method protected static createVoiceStats(IIIIIIIIIIIII)Lcom/viber/jni/MediaStats$VoiceStats;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    new-instance v0, Lcom/viber/jni/MediaStats$VoiceStats;

    move v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/viber/jni/MediaStats$VoiceStats;-><init>(IIIIIIIIIIIII)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/MediaStats;->tx_codec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/MediaStats;->rx_codec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/viber/jni/MediaStats;->isP2P:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, " P2P "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/viber/jni/MediaStats;->isTCP:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, " TCP "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats;->send_bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats;->recv_bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/viber/jni/MediaStats;->voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " voice: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/MediaStats;->voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;

    invoke-virtual {v1}, Lcom/viber/jni/MediaStats$VoiceStats;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " video: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    invoke-virtual {v1}, Lcom/viber/jni/MediaStats$VideoStats;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1
    return-object v0

    .line 204
    :cond_2
    const-string/jumbo v0, " nP2P"

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, " nTCP "

    goto :goto_1
.end method

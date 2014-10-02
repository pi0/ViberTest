.class public Lcom/viber/jni/MediaStats$VideoStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

.field public final bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

.field public final discardedPacketsCount:I

.field public final local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

.field public final recvSideDelay:I

.field public final remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

.field public final rtpStats:Lcom/viber/jni/MediaStats$VideoStats$RTP;

.field public final targetBitrate:I


# direct methods
.method public constructor <init>(IIILcom/viber/jni/MediaStats$VideoStats$RTP;Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;Lcom/viber/jni/MediaStats$VideoStats$RTCP;Lcom/viber/jni/MediaStats$VideoStats$RTCP;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/viber/jni/MediaStats$VideoStats;->recvSideDelay:I

    .line 166
    iput p2, p0, Lcom/viber/jni/MediaStats$VideoStats;->discardedPacketsCount:I

    .line 167
    iput p3, p0, Lcom/viber/jni/MediaStats$VideoStats;->targetBitrate:I

    .line 168
    iput-object p4, p0, Lcom/viber/jni/MediaStats$VideoStats;->rtpStats:Lcom/viber/jni/MediaStats$VideoStats$RTP;

    .line 169
    iput-object p5, p0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    .line 170
    iput-object p6, p0, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    .line 171
    iput-object p7, p0, Lcom/viber/jni/MediaStats$VideoStats;->local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    .line 172
    iput-object p8, p0, Lcom/viber/jni/MediaStats$VideoStats;->remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    .line 173
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recvSideDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats;->recvSideDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " discardedPacketsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats;->discardedPacketsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " targetBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats;->targetBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/jni/MediaStats$VideoStats;->rtpStats:Lcom/viber/jni/MediaStats$VideoStats$RTP;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " RTP: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/jni/MediaStats$VideoStats;->rtpStats:Lcom/viber/jni/MediaStats$VideoStats$RTP;

    invoke-virtual {v2}, Lcom/viber/jni/MediaStats$VideoStats$RTP;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " BandwidthEstimation: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    invoke-virtual {v2}, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " BandwidthUtilization: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    invoke-virtual {v2}, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

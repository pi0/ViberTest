.class public Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final estimatedRecvBandwidth:I

.field public final estimatedSendBandwidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedSendBandwidth:I

    .line 148
    iput p2, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedRecvBandwidth:I

    .line 149
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "estimatedSendBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedSendBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " estimatedRecvBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedRecvBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

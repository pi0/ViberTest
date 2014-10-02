.class public Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fecBitrateSent:I

.field public final nackBitrateSent:I

.field public final totalBitrateSent:I

.field public final videoBitrateSent:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->totalBitrateSent:I

    .line 131
    iput p2, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->videoBitrateSent:I

    .line 132
    iput p3, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->fecBitrateSent:I

    .line 133
    iput p4, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->nackBitrateSent:I

    .line 134
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalBitrateSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->totalBitrateSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " videoBitrateSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->videoBitrateSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fecBitrateSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->fecBitrateSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " nackBitrateSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->nackBitrateSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

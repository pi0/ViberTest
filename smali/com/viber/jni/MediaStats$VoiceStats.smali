.class public Lcom/viber/jni/MediaStats$VoiceStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bytes_recv:I

.field public final bytes_sent:I

.field public final curr_delay:I

.field public final jitter:I

.field public final packets_lost:I

.field public final packets_received:I

.field public final packets_recovered:I

.field public final packets_sent:I

.field public final peer_jitter:I

.field public final percent_loss:I

.field public final recv_bitrate:I

.field public final rtt:I

.field public final send_bitrate:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 0
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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->jitter:I

    .line 52
    iput p2, p0, Lcom/viber/jni/MediaStats$VoiceStats;->peer_jitter:I

    .line 53
    iput p3, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_received:I

    .line 54
    iput p4, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_lost:I

    .line 55
    iput p5, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_recovered:I

    .line 56
    iput p6, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_sent:I

    .line 57
    iput p7, p0, Lcom/viber/jni/MediaStats$VoiceStats;->bytes_sent:I

    .line 58
    iput p8, p0, Lcom/viber/jni/MediaStats$VoiceStats;->bytes_recv:I

    .line 59
    iput p9, p0, Lcom/viber/jni/MediaStats$VoiceStats;->rtt:I

    .line 60
    iput p10, p0, Lcom/viber/jni/MediaStats$VoiceStats;->percent_loss:I

    .line 61
    iput p11, p0, Lcom/viber/jni/MediaStats$VoiceStats;->curr_delay:I

    .line 62
    iput p12, p0, Lcom/viber/jni/MediaStats$VoiceStats;->send_bitrate:I

    .line 63
    iput p13, p0, Lcom/viber/jni/MediaStats$VoiceStats;->recv_bitrate:I

    .line 64
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "jitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->jitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " peer_jitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->peer_jitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " packets_received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_received:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " packets_lost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_lost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " packets_recovered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_recovered:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " packets_sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->packets_sent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes_sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->bytes_sent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes_recv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->bytes_recv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->rtt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " percent_loss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->percent_loss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " curr_delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->curr_delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " send_bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->send_bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " recv_bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/MediaStats$VoiceStats;->recv_bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

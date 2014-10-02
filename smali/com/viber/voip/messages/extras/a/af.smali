.class Lcom/viber/voip/messages/extras/a/af;
.super Lcom/viber/voip/messages/extras/a/ad;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/viber/voip/messages/extras/a/e;

.field private c:J

.field private d:Lcom/viber/voip/messages/extras/a/b;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/af;->b:Lcom/viber/voip/messages/extras/a/e;

    .line 419
    const/16 v0, 0x4e20

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/extras/a/ad;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;ILcom/viber/voip/messages/extras/a/f;)V

    .line 420
    iput-wide p3, p0, Lcom/viber/voip/messages/extras/a/af;->c:J

    .line 421
    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/af;->d:Lcom/viber/voip/messages/extras/a/b;

    .line 422
    invoke-static {p1, p3, p4, p0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;JLcom/viber/voip/messages/extras/a/af;)V

    .line 423
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/af;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/af;->c:J

    iget-object v3, p0, Lcom/viber/voip/messages/extras/a/af;->d:Lcom/viber/voip/messages/extras/a/b;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;JLcom/viber/voip/messages/extras/a/b;)V

    .line 428
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberLocationListener onLocationChanged location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 433
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/a/ad;->onLocationChanged(Landroid/location/Location;)V

    .line 434
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/af;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/af;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/Long;)V

    .line 435
    new-instance v0, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/af;->c:J

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/logger/QaLogger$QaLocationReceivedEvent;-><init>(JZ)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 436
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberLocationListener onProviderDisabled provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 441
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/a/ad;->onProviderDisabled(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/af;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/af;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/Long;)V

    .line 443
    return-void
.end method

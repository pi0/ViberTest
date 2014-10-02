.class Lcom/viber/voip/messages/extras/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 221
    if-eqz p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "distanceWPSvsGPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 224
    const/high16 v1, 0x447a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/o;-><init>(Lcom/viber/voip/messages/extras/a/n;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 234
    const-string/jumbo v0, "cachedGPSLocation was expired"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/n;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/p;-><init>(Lcom/viber/voip/messages/extras/a/n;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    goto :goto_0
.end method

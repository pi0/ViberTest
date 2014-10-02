.class Lcom/viber/voip/messages/extras/a/l;
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
    .line 193
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/l;->a:Lcom/viber/voip/messages/extras/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x447a

    .line 196
    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/l;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/l;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "distanceWPS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", distanceWPSvsGPS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 201
    cmpl-float v0, v0, v4

    if-gtz v0, :cond_0

    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/l;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/l;->a:Lcom/viber/voip/messages/extras/a/i;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/m;-><init>(Lcom/viber/voip/messages/extras/a/l;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    const-string/jumbo v0, "nothing to init. caches are valid."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

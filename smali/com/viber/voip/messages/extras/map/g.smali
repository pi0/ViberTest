.class Lcom/viber/voip/messages/extras/map/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/map/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/map/f;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 254
    :try_start_0
    new-instance v1, Lcom/viber/voip/messages/extras/map/b;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-wide v2, v2, Lcom/viber/voip/messages/extras/map/f;->a:D

    invoke-static {v2, v3}, Lcom/viber/voip/messages/extras/map/d;->a(D)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-wide v3, v3, Lcom/viber/voip/messages/extras/map/f;->b:D

    invoke-static {v3, v4}, Lcom/viber/voip/messages/extras/map/d;->a(D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/extras/map/b;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    new-instance v2, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v2}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    .line 261
    invoke-virtual {v2, p2}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/extras/map/k;->d(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/voip/messages/extras/map/b;)V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/map/f;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-wide v3, v1, Lcom/viber/voip/messages/extras/map/f;->a:D

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-wide v5, v1, Lcom/viber/voip/messages/extras/map/f;->b:D

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 265
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/map/f;->d:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->b(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/i;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/viber/voip/messages/extras/map/i;->a(Lcom/viber/voip/messages/extras/map/k;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/g;->a:Lcom/viber/voip/messages/extras/map/f;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/map/f;->d:Lcom/viber/voip/messages/extras/map/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AddressLoader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V

    goto :goto_0
.end method

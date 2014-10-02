.class Lcom/viber/voip/messages/extras/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/b;

.field final synthetic b:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/s;->b:Lcom/viber/voip/messages/extras/a/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/s;->a:Lcom/viber/voip/messages/extras/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWPSLocation.onLocationReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/s;->a:Lcom/viber/voip/messages/extras/a/b;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/s;->a:Lcom/viber/voip/messages/extras/a/b;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 294
    :cond_0
    return-void
.end method

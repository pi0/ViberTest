.class Lcom/viber/voip/messages/extras/map/f;
.super Lcom/viber/voip/messages/extras/map/e;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/viber/voip/messages/extras/map/d;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/map/d;DD)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/f;->d:Lcom/viber/voip/messages/extras/map/d;

    .line 240
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/extras/map/e;-><init>(Lcom/viber/voip/messages/extras/map/d;DD)V

    .line 241
    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .prologue
    .line 246
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/map/f;->a:D

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/map/f;->b:D

    new-instance v5, Lcom/viber/voip/messages/extras/map/g;

    invoke-direct {v5, p0}, Lcom/viber/voip/messages/extras/map/g;-><init>(Lcom/viber/voip/messages/extras/map/f;)V

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/extras/a/a;->a(DDLcom/viber/voip/messages/extras/a/c;)V

    .line 270
    return-void
.end method

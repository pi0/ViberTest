.class public Lcom/viber/voip/messages/extras/map/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/viber/voip/messages/extras/map/b;

.field private g:Lcom/viber/dexshared/GMaps$LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/viber/dexshared/GMaps$LatLng;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->g:Lcom/viber/dexshared/GMaps$LatLng;

    .line 556
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/map/b;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->f:Lcom/viber/voip/messages/extras/map/b;

    .line 552
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->a:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public b()Lcom/viber/voip/messages/extras/map/b;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/k;->f:Lcom/viber/voip/messages/extras/map/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->b:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public c()Lcom/viber/dexshared/GMaps$LatLng;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/k;->g:Lcom/viber/dexshared/GMaps$LatLng;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->e:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->d:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/k;->c:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlaceItem{mFullVicinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/k;->f:Lcom/viber/voip/messages/extras/map/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

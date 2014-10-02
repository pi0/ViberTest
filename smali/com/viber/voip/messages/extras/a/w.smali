.class Lcom/viber/voip/messages/extras/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Lcom/viber/voip/messages/extras/a/c;

.field final synthetic d:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;DDLcom/viber/voip/messages/extras/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    iput-wide p2, p0, Lcom/viber/voip/messages/extras/a/w;->a:D

    iput-wide p4, p0, Lcom/viber/voip/messages/extras/a/w;->b:D

    iput-object p6, p0, Lcom/viber/voip/messages/extras/a/w;->c:Lcom/viber/voip/messages/extras/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAddressWithCuttingOwn own location ready = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 530
    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    new-instance v6, Lcom/viber/voip/messages/extras/a/x;

    invoke-direct {v6, p0}, Lcom/viber/voip/messages/extras/a/x;-><init>(Lcom/viber/voip/messages/extras/a/w;)V

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/a/e;->a(DDZLcom/viber/voip/messages/extras/a/c;)V

    .line 554
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string/jumbo v0, "getAddressWithCuttingOwn WITHOUT OWN LOCATION!!!"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/w;->a:D

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/a/w;->b:D

    new-instance v6, Lcom/viber/voip/messages/extras/a/z;

    invoke-direct {v6, p0}, Lcom/viber/voip/messages/extras/a/z;-><init>(Lcom/viber/voip/messages/extras/a/w;)V

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/a/e;->a(DDZLcom/viber/voip/messages/extras/a/c;)V

    goto :goto_0
.end method

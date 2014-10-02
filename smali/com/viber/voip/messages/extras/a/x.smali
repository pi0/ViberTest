.class Lcom/viber/voip/messages/extras/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/w;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAddressWithCuttingOwn own address ready = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;)Landroid/location/Address;

    .line 536
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/w;->d:Lcom/viber/voip/messages/extras/a/e;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-wide v1, v1, Lcom/viber/voip/messages/extras/a/w;->a:D

    iget-object v3, p0, Lcom/viber/voip/messages/extras/a/x;->a:Lcom/viber/voip/messages/extras/a/w;

    iget-wide v3, v3, Lcom/viber/voip/messages/extras/a/w;->b:D

    const/4 v5, 0x1

    new-instance v6, Lcom/viber/voip/messages/extras/a/y;

    invoke-direct {v6, p0}, Lcom/viber/voip/messages/extras/a/y;-><init>(Lcom/viber/voip/messages/extras/a/x;)V

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/a/e;->a(DDZLcom/viber/voip/messages/extras/a/c;)V

    .line 543
    return-void
.end method

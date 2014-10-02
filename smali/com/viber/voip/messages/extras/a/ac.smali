.class Lcom/viber/voip/messages/extras/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/map/j;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/ab;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/ac;->a:Lcom/viber/voip/messages/extras/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/messages/extras/map/k;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPlacesReady places:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 596
    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ac;->a:Lcom/viber/voip/messages/extras/a/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/ab;->e:Lcom/viber/voip/messages/extras/a/e;

    aget-object v1, p1, v2

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/ac;->a:Lcom/viber/voip/messages/extras/a/ab;

    iget-boolean v2, v2, Lcom/viber/voip/messages/extras/a/ab;->c:Z

    iget-object v3, p0, Lcom/viber/voip/messages/extras/a/ac;->a:Lcom/viber/voip/messages/extras/a/ab;

    iget-object v3, v3, Lcom/viber/voip/messages/extras/a/ab;->d:Lcom/viber/voip/messages/extras/a/c;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/map/k;ZLcom/viber/voip/messages/extras/a/c;)V

    .line 599
    :cond_0
    return-void
.end method

.class Lcom/viber/voip/messages/extras/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/map/j;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/c;

.field final synthetic b:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/g;->b:Lcom/viber/voip/messages/extras/a/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/g;->a:Lcom/viber/voip/messages/extras/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/messages/extras/map/k;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlacesReady places:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 659
    array-length v2, p1

    if-lez v2, :cond_3

    .line 660
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 662
    const-string/jumbo v5, "locality"

    invoke-virtual {v4}, Lcom/viber/voip/messages/extras/map/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlacesReady found locality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/g;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/g;->a:Lcom/viber/voip/messages/extras/a/c;

    invoke-static {v1, v4, v0, v2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/map/k;ZLcom/viber/voip/messages/extras/a/c;)V

    .line 676
    :goto_1
    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/g;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/g;->a:Lcom/viber/voip/messages/extras/a/c;

    invoke-static {v0, v7, v7, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;Lcom/viber/voip/messages/extras/a/c;)V

    .line 680
    :cond_0
    return-void

    .line 667
    :cond_1
    const-string/jumbo v5, "administrative_area_level_1"

    invoke-virtual {v4}, Lcom/viber/voip/messages/extras/map/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlacesReady found administrative_area_level_1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/g;->b:Lcom/viber/voip/messages/extras/a/e;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/g;->a:Lcom/viber/voip/messages/extras/a/c;

    invoke-static {v1, v4, v0, v2}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/map/k;ZLcom/viber/voip/messages/extras/a/c;)V

    goto :goto_1

    .line 660
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

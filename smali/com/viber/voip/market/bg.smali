.class Lcom/viber/voip/market/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/ac;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/ak;


# direct methods
.method private constructor <init>(Lcom/viber/voip/market/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/viber/voip/market/bg;->a:Lcom/viber/voip/market/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/market/ak;Lcom/viber/voip/market/al;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/viber/voip/market/bg;-><init>(Lcom/viber/voip/market/ak;)V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMarketReceiver.onFollowPublicGroup UI attached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/bg;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->d(Lcom/viber/voip/market/ak;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/viber/voip/market/bg;->a:Lcom/viber/voip/market/ak;

    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/String;I)V

    .line 432
    return-void
.end method

.method public b(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMarketReceiver.onUnfollowPublicGroup UI attached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/bg;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->d(Lcom/viber/voip/market/ak;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/viber/voip/market/bg;->a:Lcom/viber/voip/market/ak;

    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/viber/voip/market/ak;->b(Lcom/viber/voip/market/ak;Ljava/lang/String;I)V

    .line 438
    return-void
.end method

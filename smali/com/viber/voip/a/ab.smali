.class public Lcom/viber/voip/a/ab;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 574
    const-string/jumbo v0, "Market_settings"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/viber/voip/a/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/viber/voip/a/x;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 578
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Stickers"

    const-string/jumbo v2, "Re-position"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final a(IZ)Lcom/viber/voip/a/x;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 582
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Stickers"

    if-eqz p2, :cond_0

    const-string/jumbo v2, "Turn_pack_ON"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "Turn_pack_OFF"

    goto :goto_0
.end method

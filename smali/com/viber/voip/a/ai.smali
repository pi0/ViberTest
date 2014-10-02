.class public Lcom/viber/voip/a/ai;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 738
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 739
    const-string/jumbo v0, "Messages"

    invoke-virtual {p0, v0}, Lcom/viber/voip/a/ai;->a(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/viber/voip/a/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/viber/voip/a/aj;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 762
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/ai;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/a/aj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

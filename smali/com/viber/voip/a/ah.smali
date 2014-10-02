.class public Lcom/viber/voip/a/ah;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1461
    const-string/jumbo v0, "Quick_replay"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1464
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Start_Typing"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ah;->a:Lcom/viber/voip/a/x;

    .line 1462
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1458
    invoke-direct {p0}, Lcom/viber/voip/a/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1471
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/viber/voip/a/ah;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.class public Lcom/viber/voip/a/av;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/a/x;

.field private final b:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 516
    const-string/jumbo v0, "View_Location"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 519
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Open_In_maps"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/av;->a:Lcom/viber/voip/a/x;

    .line 520
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Share_Email"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/av;->b:Lcom/viber/voip/a/x;

    .line 517
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/viber/voip/a/av;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/viber/voip/a/av;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

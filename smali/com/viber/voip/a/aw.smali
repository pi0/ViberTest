.class public Lcom/viber/voip/a/aw;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/ao;

.field private final b:Lcom/viber/voip/a/x;

.field private final c:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 465
    const-string/jumbo v0, "ViewMedia"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 468
    new-instance v0, Lcom/viber/voip/a/ao;

    invoke-direct {v0, v4}, Lcom/viber/voip/a/ao;-><init>(Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aw;->a:Lcom/viber/voip/a/ao;

    .line 470
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Share_Email"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aw;->b:Lcom/viber/voip/a/x;

    .line 471
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Share_Viber"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aw;->c:Lcom/viber/voip/a/x;

    .line 466
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 461
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 468
    new-instance v0, Lcom/viber/voip/a/ao;

    invoke-direct {v0, v4}, Lcom/viber/voip/a/ao;-><init>(Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aw;->a:Lcom/viber/voip/a/ao;

    .line 470
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Share_Email"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aw;->b:Lcom/viber/voip/a/x;

    .line 471
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Share_Viber"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/aw;->c:Lcom/viber/voip/a/x;

    .line 462
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/viber/voip/a/aw;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

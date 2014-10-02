.class public Lcom/viber/voip/a/d;
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

    .line 84
    const-string/jumbo v0, "Activation"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 87
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Timeout"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/d;->a:Lcom/viber/voip/a/x;

    .line 88
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Get_call"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/d;->b:Lcom/viber/voip/a/x;

    .line 85
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Auto_insert"

    const-string/jumbo v3, ""

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/a/d;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/a/d;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

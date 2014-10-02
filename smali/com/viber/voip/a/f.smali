.class public Lcom/viber/voip/a/f;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1512
    const-string/jumbo v0, "Block_List"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1513
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1516
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "Block_number"

    const-string/jumbo v3, "Privacy"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1520
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "Block_contact"

    const-string/jumbo v3, "Privacy"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1524
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "Unblock"

    const-string/jumbo v3, "Privacy"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final f()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1528
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "General"

    const-string/jumbo v2, "Banner_undo"

    const-string/jumbo v3, "Privacy"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

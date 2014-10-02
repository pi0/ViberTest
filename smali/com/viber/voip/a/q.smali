.class public Lcom/viber/voip/a/q;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/k;

.field private final b:Lcom/viber/voip/a/x;

.field private final c:Lcom/viber/voip/a/x;

.field private final d:Lcom/viber/voip/a/x;

.field private final e:Lcom/viber/voip/a/x;

.field private final f:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 421
    const-string/jumbo v0, "1on1_Info"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 424
    new-instance v0, Lcom/viber/voip/a/k;

    const-string/jumbo v1, "ContactInfo"

    invoke-direct {v0, v1}, Lcom/viber/voip/a/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->a:Lcom/viber/voip/a/k;

    .line 426
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Set_Background"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->b:Lcom/viber/voip/a/x;

    .line 427
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Change_Background"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->c:Lcom/viber/voip/a/x;

    .line 428
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Remove_Background"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->d:Lcom/viber/voip/a/x;

    .line 429
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Add_participants"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->e:Lcom/viber/voip/a/x;

    .line 430
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Set_"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->f:Lcom/viber/voip/a/x;

    .line 422
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 424
    new-instance v0, Lcom/viber/voip/a/k;

    const-string/jumbo v1, "ContactInfo"

    invoke-direct {v0, v1}, Lcom/viber/voip/a/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->a:Lcom/viber/voip/a/k;

    .line 426
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Set_Background"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->b:Lcom/viber/voip/a/x;

    .line 427
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Change_Background"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->c:Lcom/viber/voip/a/x;

    .line 428
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Remove_Background"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->d:Lcom/viber/voip/a/x;

    .line 429
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Add_participants"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->e:Lcom/viber/voip/a/x;

    .line 430
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Set_"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/q;->f:Lcom/viber/voip/a/x;

    .line 418
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 453
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final a(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 449
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Smart_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "On"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "OFF"

    goto :goto_0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/viber/voip/a/q;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/viber/voip/a/q;->c:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/viber/voip/a/q;->d:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final f()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/viber/voip/a/q;->e:Lcom/viber/voip/a/x;

    return-object v0
.end method

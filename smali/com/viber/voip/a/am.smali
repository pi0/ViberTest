.class public Lcom/viber/voip/a/am;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/c;

.field public final b:Lcom/viber/voip/a/c;

.field public final c:Lcom/viber/voip/a/x;

.field public final d:Lcom/viber/voip/a/x;

.field public final e:Lcom/viber/voip/a/x;

.field public final f:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 542
    const-string/jumbo v0, "Send_Media"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 546
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Preview_Photo"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/am;->a:Lcom/viber/voip/a/c;

    .line 547
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Preview_Video"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/am;->b:Lcom/viber/voip/a/c;

    .line 549
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Photo"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/am;->c:Lcom/viber/voip/a/x;

    .line 550
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Photo_With_description"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/am;->d:Lcom/viber/voip/a/x;

    .line 551
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Video"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/am;->e:Lcom/viber/voip/a/x;

    .line 552
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Video_With_description"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/am;->f:Lcom/viber/voip/a/x;

    .line 543
    const-string/jumbo v0, "Messages"

    invoke-virtual {p0, v0}, Lcom/viber/voip/a/am;->a(Ljava/lang/String;)V

    .line 544
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 559
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/am;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Send_Photo_With_description"

    const-string/jumbo v3, "Messaging"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final b(J)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 567
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/am;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Send_Video_With_description"

    const-string/jumbo v3, "Messaging"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 555
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/am;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Send_Photo"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 563
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/am;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Send_Video"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.class public Lcom/viber/voip/a/ad;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/a/x;

.field private final b:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 823
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 827
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Select"

    const-string/jumbo v3, "Edit"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ad;->a:Lcom/viber/voip/a/x;

    .line 828
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Enter_Suggested"

    const-string/jumbo v3, "Enhancement"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ad;->b:Lcom/viber/voip/a/x;

    .line 824
    const-string/jumbo v0, "Messages"

    invoke-virtual {p0, v0}, Lcom/viber/voip/a/ad;->a(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/viber/voip/a/ad;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 835
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Delete_conversations"

    const-string/jumbo v3, "Edit"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 851
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/ad;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Finish_Recording"

    const-string/jumbo v3, "Voice_Messages"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/viber/voip/a/ad;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/viber/voip/a/ad;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public e()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 843
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/ad;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Open_Button"

    const-string/jumbo v3, "Voice_Messages"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public f()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 847
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/ad;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Start_Recording"

    const-string/jumbo v3, "Voice_Messages"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public g()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 855
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/ad;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Play_Incoming_voice_message"

    const-string/jumbo v3, "Voice_Messages"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public h()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 859
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/ad;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Play_outgoing_voice_message"

    const-string/jumbo v3, "Voice_Messages"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

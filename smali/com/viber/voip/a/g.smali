.class public Lcom/viber/voip/a/g;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/x;

.field public final b:Lcom/viber/voip/a/x;

.field public final c:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1007
    const-string/jumbo v0, "Calls"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1116
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Initiate_call_Contacts_badge"

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/g;->a:Lcom/viber/voip/a/x;

    .line 1117
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Initiate_call_Synced_account"

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/g;->b:Lcom/viber/voip/a/x;

    .line 1118
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Initiate_call_Redail"

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/g;->c:Lcom/viber/voip/a/x;

    .line 1008
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/viber/voip/a/g;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1003
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1116
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Initiate_call_Contacts_badge"

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/g;->a:Lcom/viber/voip/a/x;

    .line 1117
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Initiate_call_Synced_account"

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/g;->b:Lcom/viber/voip/a/x;

    .line 1118
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Initiate_call_Redail"

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/g;->c:Lcom/viber/voip/a/x;

    .line 1004
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private j(Z)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Initiate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "VO_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "call_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1057
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Answer"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1065
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "With_message"

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public a(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1077
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "Mute_On"

    :goto_0
    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "Mute_OFF"

    goto :goto_0
.end method

.method public b(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1061
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Ignore"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1053
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Incoming_call"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public b(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1081
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "Speaker_On"

    :goto_0
    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "Speaker_OFF"

    goto :goto_0
.end method

.method public c()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1011
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Calling"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public c(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1097
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Call_Transfer_Cancel"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public c(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1121
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Recent_icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public d()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1015
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Ringing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public d(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1105
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Call_Transfer_success"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public d(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1125
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Keypad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public e()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1019
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Ongoing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public e(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1109
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "End_Call"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public e(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1129
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Contact-info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public f()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Hold"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public f(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1113
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Call_ended"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public f(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1133
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1on1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public g()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1027
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Being held"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public g(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1137
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public h()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1031
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public h(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1141
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "End_call_screen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public i()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1035
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Failed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public i(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1145
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/viber/voip/a/g;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Synced_account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calls"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public j()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1039
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Ended"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public k()Lcom/viber/voip/a/c;
    .locals 3

    .prologue
    .line 1043
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Busy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public l()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1069
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Keypad_open"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public m()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1085
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Minimize_Call"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public n()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1089
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Maximize_Call"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public o()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1093
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Call_Transfer"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public p()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1101
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Call_Transfer_Timeout"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

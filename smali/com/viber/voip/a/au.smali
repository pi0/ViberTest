.class public Lcom/viber/voip/a/au;
.super Lcom/viber/voip/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1155
    const-string/jumbo v0, "Video_calls"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/g;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1156
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1180
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "Mute_On"

    :goto_0
    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "Mute_OFF"

    goto :goto_0
.end method

.method public c(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1190
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Call_Transfer_Cancel"

    const-string/jumbo v3, "video"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public d(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1200
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Call_Transfer_success"

    const-string/jumbo v3, "video"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public e(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1205
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "End_Call"

    const-string/jumbo v3, "video"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public f(Ljava/lang/Long;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 1210
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Call_ended"

    const-string/jumbo v3, "video"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public j(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1175
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "Turn_On_Video"

    :goto_0
    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "Turn_OFF_Video"

    goto :goto_0
.end method

.method public m()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1215
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Minimize_Call"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public n()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1220
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Maximize_Call"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public o()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1185
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Call_Transfer"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public p()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1195
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Call_Transfer_Timeout"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public q()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1159
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Send_message"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public r()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1163
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Flip_camera"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public s()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1167
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Send_Video"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public t()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1171
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Video_calls"

    const-string/jumbo v2, "Receive_Video"

    const-string/jumbo v3, "video"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

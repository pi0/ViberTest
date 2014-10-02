.class public Lcom/viber/voip/a/an;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/ao;

.field public final b:Lcom/viber/voip/a/c;

.field public final c:Lcom/viber/voip/a/c;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    const-string/jumbo v0, "Settings"

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 184
    new-instance v0, Lcom/viber/voip/a/ao;

    invoke-direct {v0, v2}, Lcom/viber/voip/a/ao;-><init>(Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    .line 185
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "EmailHistory"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/an;->b:Lcom/viber/voip/a/c;

    .line 186
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "RestoreDefaults"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/an;->c:Lcom/viber/voip/a/c;

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/viber/voip/a/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 189
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ContactJoinedViber_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final b(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 193
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ShowAllContacts_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final c(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 197
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UseSystemSounds_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final d(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VibrateWhenRinging_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final e(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 205
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ShowPreview_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final f(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 209
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NewMessagePopup_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final g(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 213
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UnlockForPopups_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final h(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 217
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FreeReplyWithViber_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final i(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 221
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ShowViberStatusIcon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final j(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 225
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GoogleAnalytics_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final k(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 229
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ShowTranslation_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final l(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LastOnline_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final m(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 237
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AutoDownloadPhotosOn3G_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final n(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 241
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AutoDownloadVideosOn3G_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final o(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 257
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReadState_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

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
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

.method public final p(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 265
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chat_heads_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "TurnON"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Notifications"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "TurnOFF"

    goto :goto_0
.end method

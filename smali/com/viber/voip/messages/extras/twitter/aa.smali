.class public Lcom/viber/voip/messages/extras/twitter/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/extras/twitter/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string/jumbo v0, "prefs_twitter"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "twitter_token"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 37
    const-string/jumbo v1, "twitter_token_secret"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 38
    const-string/jumbo v1, "twitter_username"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/aa;->a:Lcom/viber/voip/messages/extras/twitter/ab;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/aa;->a:Lcom/viber/voip/messages/extras/twitter/ab;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/twitter/ab;->a(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/twitter/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/aa;->a:Lcom/viber/voip/messages/extras/twitter/ab;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const-string/jumbo v0, "prefs_twitter"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "twitter_token"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 27
    const-string/jumbo v1, "twitter_token_secret"

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 28
    const-string/jumbo v1, "twitter_username"

    invoke-interface {v0, v1, p3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/aa;->a:Lcom/viber/voip/messages/extras/twitter/ab;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/aa;->a:Lcom/viber/voip/messages/extras/twitter/ab;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/twitter/ab;->a(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    const-string/jumbo v0, "prefs_twitter"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "twitter_username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v0, "prefs_twitter"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "twitter_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v0, "prefs_twitter"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "twitter_token_secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

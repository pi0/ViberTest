.class Lcom/viber/voip/messages/ui/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/ab;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/dn;->a(Ljava/lang/String;)V

    .line 220
    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Z)V

    .line 229
    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dh;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->k()V

    .line 233
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

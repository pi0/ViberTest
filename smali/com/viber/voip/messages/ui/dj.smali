.class Lcom/viber/voip/messages/ui/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dj;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dj;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-static {v0, v1, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;ZZ)V

    .line 687
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dj;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dj;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dj;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dn;->b(Ljava/util/Map;)V

    .line 688
    :cond_0
    return-void
.end method

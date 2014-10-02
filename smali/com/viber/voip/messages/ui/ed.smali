.class Lcom/viber/voip/messages/ui/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ed;->a:Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ed;->a:Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ed;->a:Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ed;->a:Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dn;->b(Ljava/util/Map;)V

    .line 48
    :cond_0
    return-void
.end method

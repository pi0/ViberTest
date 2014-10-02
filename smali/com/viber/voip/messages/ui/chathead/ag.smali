.class Lcom/viber/voip/messages/ui/chathead/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/af;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ag;->b:Lcom/viber/voip/messages/ui/chathead/af;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/ag;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2667
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ag;->b:Lcom/viber/voip/messages/ui/chathead/af;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/af;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 2668
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ag;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2669
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    .line 2670
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->isConversationGroup()Z

    move-result v3

    .line 2673
    if-eqz v3, :cond_1

    .line 2674
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 2675
    if-eqz v3, :cond_3

    .line 2676
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    :goto_1
    move-object v3, v1

    move-object v1, v2

    .line 2683
    :goto_2
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/ag;->b:Lcom/viber/voip/messages/ui/chathead/af;

    iget-object v5, v5, Lcom/viber/voip/messages/ui/chathead/af;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/ag;->b:Lcom/viber/voip/messages/ui/chathead/af;

    iget-object v6, v6, Lcom/viber/voip/messages/ui/chathead/af;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6, v1, v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/ui/chathead/b;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    goto :goto_0

    .line 2680
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v3

    .line 2681
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 2686
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

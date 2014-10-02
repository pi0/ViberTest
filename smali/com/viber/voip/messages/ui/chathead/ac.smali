.class Lcom/viber/voip/messages/ui/chathead/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/ab;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/ab;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2561
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/ac;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2565
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 2566
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/ac;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2567
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 2568
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->a()V

    .line 2569
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2570
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->ac(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2571
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 2572
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2573
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ac;->b:Lcom/viber/voip/messages/ui/chathead/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ab;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;Z)V

    goto :goto_0

    .line 2577
    :cond_1
    return-void
.end method

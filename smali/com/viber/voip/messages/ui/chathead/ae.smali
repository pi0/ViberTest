.class Lcom/viber/voip/messages/ui/chathead/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/ad;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/ad;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2615
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ae;->b:Lcom/viber/voip/messages/ui/chathead/ad;

    iput-wide p2, p0, Lcom/viber/voip/messages/ui/chathead/ae;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2619
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/chathead/ae;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2620
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    .line 2621
    iget-wide v1, p0, Lcom/viber/voip/messages/ui/chathead/ae;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 2622
    iget-wide v2, p0, Lcom/viber/voip/messages/ui/chathead/ae;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v2

    .line 2623
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2624
    :cond_1
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSystemMessage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isMuteNotifications()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isTrialPublicGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2626
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 2627
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/ae;->b:Lcom/viber/voip/messages/ui/chathead/ad;

    iget-object v4, v4, Lcom/viber/voip/messages/ui/chathead/ad;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->O(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/registration/cp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2628
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNew: own message(number is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") and isConversationGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2631
    :cond_3
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isNotification()Z

    move-result v0

    if-nez v0, :cond_4

    move v4, v6

    .line 2632
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ae;->b:Lcom/viber/voip/messages/ui/chathead/ad;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ad;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ae;->b:Lcom/viber/voip/messages/ui/chathead/ad;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/chathead/ad;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/viber/voip/messages/ui/chathead/ae;->a:J

    if-nez v4, :cond_5

    move v4, v6

    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V

    goto/16 :goto_0

    :cond_4
    move v4, v5

    .line 2631
    goto :goto_1

    :cond_5
    move v4, v5

    .line 2632
    goto :goto_2
.end method

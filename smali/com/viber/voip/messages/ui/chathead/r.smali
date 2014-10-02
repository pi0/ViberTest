.class Lcom/viber/voip/messages/ui/chathead/r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1530
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1532
    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;)V

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    const-string/jumbo v1, "com.viber.voip.action.MESSAGE_CHAT_HEADS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    const-string/jumbo v0, "conversation"

    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1536
    const-string/jumbo v0, "pop_to_chat_head"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1537
    const-string/jumbo v1, "from_message_fragment"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1538
    cmp-long v5, v2, v5

    if-eqz v5, :cond_9

    .line 1539
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1540
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    new-instance v5, Lcom/viber/voip/registration/cp;

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/viber/voip/registration/cp;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/registration/cp;)Lcom/viber/voip/registration/cp;

    .line 1542
    if-eqz v0, :cond_2

    .line 1544
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V

    goto :goto_0

    .line 1547
    :cond_2
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    .line 1548
    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 1549
    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v5

    .line 1550
    if-eqz v5, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSystemMessage()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1551
    :cond_3
    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isMuteNotifications()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isTrialPublicGroup()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1552
    if-eqz v1, :cond_a

    .line 1553
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v8}, Lcom/viber/voip/messages/ui/chathead/d;->O(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/registration/cp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v8

    if-eq v6, v8, :cond_4

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1555
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: own message(number is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") and isConversationGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1559
    :cond_5
    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isNotification()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v7

    .line 1561
    :goto_1
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v6

    if-nez v0, :cond_7

    move v9, v7

    :goto_2
    move-wide v7, v2

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V

    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 1559
    goto :goto_1

    :cond_7
    move v9, v4

    .line 1561
    goto :goto_2

    .line 1564
    :cond_8
    if-eqz v1, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/r;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V

    goto/16 :goto_0

    .line 1570
    :cond_9
    const-string/jumbo v0, "onReceive: conversationId = 0"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto :goto_1
.end method

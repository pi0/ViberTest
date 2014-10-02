.class public Lcom/viber/voip/util/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 35
    instance-of v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->B()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s()Z

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->z()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gk;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v5, v0

    .line 35
    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/an;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->ac()Z

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->aa()Z

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->P()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gk;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ar;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ar;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->o()Z

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->m()Z

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gk;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    instance-of v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v5, 0x1

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gk;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v5, v0

    .line 27
    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationData;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/gk;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isTypeViberOut()Z

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isMissed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isAnswerredOnAnotherDevice()Z

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isTransferredIn()Z

    move-result v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isOutgoing()Z

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gk;->a(ZZZZZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    const-string/jumbo v0, "vo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/high16 v0, 0x7f0f

    .line 131
    :goto_0
    if-lez v0, :cond_6

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 117
    :cond_0
    const-string/jumbo v0, "missed_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const v0, 0x7f0f0003

    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v0, "answ_another_dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const v0, 0x7f0f0005

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v0, "transferred"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const v0, 0x7f0f0004

    goto :goto_0

    .line 123
    :cond_3
    const-string/jumbo v0, "outgoing_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    const v0, 0x7f0f0002

    goto :goto_0

    .line 125
    :cond_4
    const-string/jumbo v0, "incoming_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    const v0, 0x7f0f0001

    goto :goto_0

    .line 128
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    if-eqz p0, :cond_1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c04a3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gk;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    if-eqz p0, :cond_1

    .line 53
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object p2

    .line 62
    :cond_0
    :goto_0
    return-object p2

    .line 55
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :cond_2
    if-nez p1, :cond_3

    invoke-static {p3}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object p2, p3

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-nez p5, :cond_4

    invoke-static {p4}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object p2, p4

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(ZZZZZI)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    const/high16 v0, 0x7f0f

    .line 109
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    .line 98
    const v0, 0x7f0f0003

    goto :goto_0

    .line 99
    :cond_1
    if-eqz p2, :cond_2

    .line 100
    const v0, 0x7f0f0005

    goto :goto_0

    .line 101
    :cond_2
    if-eqz p3, :cond_3

    .line 102
    const v0, 0x7f0f0004

    goto :goto_0

    .line 103
    :cond_3
    if-eqz p4, :cond_4

    .line 104
    const v0, 0x7f0f0002

    goto :goto_0

    .line 106
    :cond_4
    const v0, 0x7f0f0001

    goto :goto_0
.end method

.method public static b(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/gk;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

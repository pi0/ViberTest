.class public Lcom/viber/voip/messages/controller/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JIJLjava/lang/String;IJLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_0

    move v0, v1

    .line 94
    :goto_0
    new-instance v3, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    .line 95
    invoke-virtual {v3, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 96
    invoke-virtual {v3, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 97
    invoke-virtual {v3, p4, p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v3, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 101
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 102
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 109
    :goto_1
    invoke-virtual {v3, p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, p8, p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 111
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLat(I)V

    .line 112
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLng(I)V

    .line 113
    invoke-virtual {v3, p7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setFlag(I)V

    .line 114
    invoke-virtual {v3, p10}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, p11}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    .line 116
    const-string/jumbo v0, "notif"

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 117
    return-object v3

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 105
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    if-eqz p3, :cond_a

    if-lez p2, :cond_a

    .line 34
    and-int/lit8 v3, p2, 0x7

    .line 35
    add-int/lit8 v2, v3, -0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 37
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    .line 40
    if-eqz v2, :cond_5

    .line 41
    const v5, 0x7f0c06c9

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1

    .line 49
    if-eqz v2, :cond_6

    .line 50
    const v5, 0x7f0c06ca

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 58
    if-eqz v2, :cond_7

    .line 59
    const v3, 0x7f0c06cb

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    if-eqz v2, :cond_a

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ne v5, v7, :cond_8

    .line 72
    const/16 v2, 0x20

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0c06c8

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 35
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 43
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    invoke-static/range {p4 .. p4}, Lcom/viber/voip/messages/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p8

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 81
    :goto_2
    return-object v2

    .line 52
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    invoke-static/range {p4 .. p4}, Lcom/viber/voip/messages/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p8

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    goto :goto_2

    .line 61
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/ViberApplication;

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-static {v2, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-static {v2, v0, v1}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p8

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    goto :goto_2

    .line 73
    :cond_8
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3

    .line 74
    const-string/jumbo v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 77
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p11

    invoke-static {v0, v2, v1}, Lcom/viber/voip/messages/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p8

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    goto/16 :goto_2

    .line 81
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

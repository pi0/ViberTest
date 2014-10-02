.class public Lcom/viber/voip/e/a/a/e;
.super Lcom/viber/voip/e/a/a/h;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/e/a/a/h;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/e/a/a/e;->a(J)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f0203f5

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/e/a/a/e;->b(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/viber/voip/e/a/a/e;->a(JLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(J)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberAdvancedNotificationFactory"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 12
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
    .parameter

    .prologue
    .line 62
    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/e/a/a/e;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 63
    const/4 v2, 0x0

    .line 65
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v3

    .line 67
    if-nez p6, :cond_0

    if-eqz p5, :cond_1

    .line 68
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/e/a/a/e;->a(J)Landroid/net/Uri;

    move-result-object v2

    const v3, 0x7f0202cb

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/e/a/a/e;->b(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createMessageNotification: sShowPreview="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/viber/voip/e/u;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/String;)V

    .line 77
    if-eqz p5, :cond_7

    sget-boolean v3, Lcom/viber/voip/e/u;->d:Z

    if-eqz v3, :cond_7

    .line 78
    const-string/jumbo v3, "video"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "image"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "animated_message"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/viber/voip/e/a/a/e;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/viber/voip/util/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    move-object v10, v2

    move-object v3, p2

    move-object v4, p1

    .line 94
    :goto_1
    if-eqz p6, :cond_3

    .line 95
    const/16 p4, 0x1

    .line 98
    :cond_3
    const v5, 0x7f0203f5

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    const-string/jumbo v7, ""

    :goto_2
    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v8

    move-object v2, p0

    move-object v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 72
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    move-object/from16 v0, p7

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/e/a/a/e;->a(JLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v2

    const v3, 0x7f0202cb

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/e/a/a/e;->b(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    .line 81
    :cond_6
    const-string/jumbo v3, "location"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 82
    iget-object v3, p0, Lcom/viber/voip/e/a/a/e;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v5

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/viber/voip/e/a/a/e;->a(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    move-object v10, v2

    move-object v3, p2

    move-object v4, p1

    goto :goto_1

    .line 84
    :cond_7
    if-nez p6, :cond_9

    const/4 v3, 0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_9

    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/e/a/a/e;->b()Lcom/viber/voip/e/a/a/d;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/viber/voip/e/a/a/e;->a:Landroid/content/Context;

    const v4, 0x7f0c02c2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p2, v2, Lcom/viber/voip/e/a/a/d;->b:Ljava/lang/String;

    .line 90
    iget-object v3, v2, Lcom/viber/voip/e/a/a/d;->a:Ljava/util/List;

    iget-object v2, v2, Lcom/viber/voip/e/a/a/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 91
    const v3, 0x7f0202ca

    invoke-virtual {p0, v3, v2}, Lcom/viber/voip/e/a/a/e;->a(I[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v10, v2

    move-object v3, p2

    move-object v4, p1

    goto/16 :goto_1

    .line 98
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_9
    move-object v10, v2

    move-object v3, p2

    move-object v4, p1

    goto/16 :goto_1
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/viber/voip/e/a/a/h;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;JLcom/viber/voip/contacts/b/b;Ljava/lang/String;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CreateJoinedContactNotification: contentText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " contentTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ticker = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " photoContactUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/String;)V

    .line 41
    invoke-super/range {p0 .. p6}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;JLcom/viber/voip/contacts/b/b;Ljava/lang/String;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/a/a/e;->a:Landroid/content/Context;

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v2

    const v3, 0x7f02034c

    invoke-static {v1, v2, v3}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p4}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f0203f5

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/e/a/a/e;->a(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;JLandroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 3
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
    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p5, :cond_0

    .line 51
    iget-object v0, p0, Lcom/viber/voip/e/a/a/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v1

    const v2, 0x7f0202cb

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;JLandroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/support/v4/app/NotificationCompat$Builder;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 135
    const v1, 0x7f0202ca

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/e/a/a/e;->a(I[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    :goto_1
    invoke-super/range {p0 .. p9}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v0}, Lcom/viber/voip/e/a/a/e;->a(JLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-super/range {p0 .. p8}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p6, p7, p8}, Lcom/viber/voip/e/a/a/e;->a(JLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-super/range {p0 .. p7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0, p6, p7}, Lcom/viber/voip/e/a/a/e;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/viber/voip/e/a/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-super/range {p0 .. p7}, Lcom/viber/voip/e/a/a/h;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0, p6, p7}, Lcom/viber/voip/e/a/a/e;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/viber/voip/e/a/a/h;
.super Lcom/viber/voip/e/a/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/e/a/a/g;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberSimpleNotificationFactory"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 10
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
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createMessageNotification: sShowPreview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/viber/voip/e/u;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    if-le p4, v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const v3, 0x7f0c02c2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 61
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/e/a/a/h;->b()Lcom/viber/voip/e/a/a/d;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const v4, 0x7f0c02c2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object p2, v2, Lcom/viber/voip/e/a/a/d;->b:Ljava/lang/String;

    move-object v6, p3

    move-object v3, p2

    move-object v4, p1

    .line 82
    :goto_0
    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 83
    const v5, 0x7f0203f5

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 67
    :cond_0
    if-eqz p5, :cond_6

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v2

    .line 70
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const v4, 0x7f0c02c0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    move-object v3, p3

    move-object v4, v2

    .line 71
    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 73
    :cond_2
    sget-boolean v2, Lcom/viber/voip/e/u;->d:Z

    if-eqz v2, :cond_5

    .line 74
    const-string/jumbo v2, "video"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "image"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "animated_message"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/e/a/a/h;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/util/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    move-object v6, p3

    move-object v3, p2

    move-object v4, p1

    goto/16 :goto_0

    .line 77
    :cond_4
    const-string/jumbo v2, "location"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    iget-object v2, p0, Lcom/viber/voip/e/a/a/h;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v4

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/viber/voip/e/a/a/h;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    move-object v6, p3

    move-object v3, p2

    move-object v4, p1

    goto/16 :goto_0

    :cond_5
    move-object v6, p3

    move-object v3, p2

    move-object v4, p1

    goto/16 :goto_0

    :cond_6
    move-object v6, p3

    move-object v3, p2

    move-object v4, p1

    goto/16 :goto_0
.end method

.method public bridge synthetic a()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/viber/voip/e/a/a/g;->a()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const v1, 0x7f0c06b2

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v0, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const v1, 0x7f0c06b3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/viber/voip/messages/j;->a(JI)Landroid/content/Intent;

    move-result-object v0

    .line 128
    iget-object v3, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const/high16 v4, 0x1000

    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 130
    const v3, 0x7f0203f5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;JLcom/viber/voip/contacts/b/b;Ljava/lang/String;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
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

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {v0, v1, p6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 40
    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02034c

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/e/a/a/h;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {v0, v1, p6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 90
    const v3, 0x7f0203f5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;JLandroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 10
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
    .line 47
    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 48
    const v5, 0x7f0203f4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v9}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    return-object v2
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 10
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
    .line 96
    move-object/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 97
    const v5, 0x7f02031b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    return-object v2
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-virtual {p0, p4, p5}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 137
    const v3, 0x7f0203f5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p4, p5}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 111
    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/e/a/a/h;->a(JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const v3, 0x7f02031b

    const/4 v1, 0x1

    aget-object v4, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0, p5, p6}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 104
    const v3, 0x7f02031b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0, p4, p5}, Lcom/viber/voip/e/a/a/h;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 119
    const v3, 0x7f02031b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

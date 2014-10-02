.class public Lcom/viber/voip/messages/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/viber/voip/messages/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/messages/j;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-boolean v0, Lcom/viber/voip/messages/j;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    const-string/jumbo v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 105
    :cond_0
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v0, "animated_message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x6

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v0, "sound"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const/4 v0, 0x2

    goto :goto_0

    .line 111
    :cond_3
    const-string/jumbo v0, "notif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    const/16 v0, 0xa

    goto :goto_0

    .line 113
    :cond_4
    const-string/jumbo v0, "location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const/4 v0, 0x5

    goto :goto_0

    .line 115
    :cond_5
    const-string/jumbo v0, "sticker"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    const/4 v0, 0x4

    goto :goto_0

    .line 117
    :cond_6
    const-string/jumbo v0, "sms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    const/16 v0, 0xb

    goto :goto_0

    .line 119
    :cond_7
    const-string/jumbo v0, "call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    const/16 v0, 0xc

    goto :goto_0

    .line 121
    :cond_8
    const-string/jumbo v0, "formatted_follow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    const/4 v0, -0x5

    goto :goto_0

    .line 124
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JI)Landroid/content/Intent;
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    const-string/jumbo v4, ""

    const-string/jumbo v10, ""

    move-wide v0, p0

    move v5, p2

    move-wide v6, v2

    move-wide v8, v2

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v0, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    const-string/jumbo v12, ""

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(JJLjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    return-object v13
.end method

.method public static a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static/range {p0 .. p10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "navigated_to_messages_on_back"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    return-object v0
.end method

.method public static a(Lcom/viber/jni/PublicGroupInfo;Z)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(Lcom/viber/jni/PublicGroupInfo;)V

    .line 85
    invoke-static {v0, p1}, Lcom/viber/voip/messages/j;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "navigated_to_messages_on_back"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    return-object v0
.end method

.method public static a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move-wide v6, p1

    move-wide v8, p3

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    if-eqz p6, :cond_0

    .line 56
    const-string/jumbo v1, "photo_uri"

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    return-object v0
.end method

.method public static a(JJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/viber/voip/messages/controller/b/a;

    move-wide v2, p0

    move-object/from16 v4, p15

    move-object/from16 v5, p4

    move-wide/from16 v6, p2

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p19

    invoke-direct/range {v1 .. v13}, Lcom/viber/voip/messages/controller/b/a;-><init>(JLjava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    .line 163
    :goto_0
    invoke-static/range {p11 .. p11}, Lcom/viber/voip/messages/j;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_3

    .line 167
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/b/a;->a(IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 198
    :goto_1
    move/from16 v0, p18

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    .line 199
    const/4 v2, 0x5

    move/from16 v0, p11

    if-eq v0, v2, :cond_0

    .line 200
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBucket(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;[BZ)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_9

    .line 207
    iget-object v3, v2, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 208
    iget v3, v2, Lcom/viber/voip/messages/extras/image/a;->c:I

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 209
    iget v2, v2, Lcom/viber/voip/messages/extras/image/a;->b:I

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 214
    :cond_1
    :goto_2
    return-object v1

    .line 160
    :cond_2
    new-instance v1, Lcom/viber/voip/messages/controller/b/a;

    move-object/from16 v2, p4

    move-object/from16 v3, p14

    move-wide/from16 v4, p2

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    goto :goto_0

    .line 168
    :cond_3
    const/4 v2, 0x4

    move/from16 v0, p11

    if-ne v0, v2, :cond_4

    .line 169
    const-wide/16 v2, 0x0

    .line 171
    const/16 v5, 0x10

    :try_start_0
    move-object/from16 v0, p13

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 176
    :goto_3
    invoke-virtual {v1, v4, v2, v3}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 177
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 178
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    goto :goto_1

    .line 172
    :catch_0
    move-exception v5

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createMediaMessage invalid sticker id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p13

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_5

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p16

    invoke-virtual {v1, v4, v2, v0}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 182
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p11

    if-ne v0, v2, :cond_6

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, p16

    invoke-virtual {v1, v4, v2, v0}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 184
    move/from16 v0, p17

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    goto/16 :goto_1

    .line 185
    :cond_6
    const/4 v2, 0x6

    move/from16 v0, p11

    if-ne v0, v2, :cond_7

    .line 186
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/k/a;->a(Z)V

    .line 187
    const/4 v2, 0x0

    move-object/from16 v0, p16

    invoke-virtual {v1, v4, v2, v0}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {p13 .. p13}, Lcom/viber/voip/k/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3, v4}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;[BZLjava/lang/String;)Lcom/viber/voip/messages/extras/image/a;

    goto/16 :goto_1

    .line 190
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_8

    .line 191
    const-string/jumbo v2, "sound"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 192
    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    goto/16 :goto_1

    .line 195
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p16

    invoke-virtual {v1, v4, v2, v0}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    goto/16 :goto_1

    .line 210
    :cond_9
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p11

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    move/from16 v0, p11

    if-ne v0, v2, :cond_1

    .line 211
    :cond_a
    const/16 v2, 0x190

    move-object/from16 v0, p13

    invoke-static {v0, v2}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    packed-switch p0, :pswitch_data_0

    .line 147
    :pswitch_0
    const-string/jumbo v0, "text"

    :goto_0
    return-object v0

    .line 131
    :pswitch_1
    const-string/jumbo v0, "image"

    goto :goto_0

    .line 133
    :pswitch_2
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 135
    :pswitch_3
    const-string/jumbo v0, "animated_message"

    goto :goto_0

    .line 137
    :pswitch_4
    const-string/jumbo v0, "sound"

    goto :goto_0

    .line 139
    :pswitch_5
    const-string/jumbo v0, "text"

    goto :goto_0

    .line 141
    :pswitch_6
    const-string/jumbo v0, "notif"

    goto :goto_0

    .line 143
    :pswitch_7
    const-string/jumbo v0, "location"

    goto :goto_0

    .line 145
    :pswitch_8
    const-string/jumbo v0, "sticker"

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 46
    const/4 v5, 0x0

    const-string/jumbo v10, ""

    move-wide v2, p1

    move-object v4, p3

    move-wide v6, v0

    move-wide v8, v0

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "sms_reply"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public static b(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v0, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const-string/jumbo v12, ""

    move-object v5, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(JJLjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v0, "navigated_to_messages_on_back"

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    return-object v13
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    const/16 v0, 0x63

    if-le p0, v0, :cond_0

    const-string/jumbo v0, "99+"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.class public Lcom/viber/voip/util/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/HomeActivity;Landroid/content/Intent;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkNavigate: intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bm;->a(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/viber/voip/util/bm;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const-string/jumbo v0, "from_navigate"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->a_(Landroid/content/Intent;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/util/bm;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/viber/voip/util/bm;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p1}, Lcom/viber/voip/util/bm;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->d(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_4
    invoke-static {p0, p1}, Lcom/viber/voip/util/bm;->b(Lcom/viber/voip/HomeActivity;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0, p1, v9}, Lcom/viber/voip/util/bm;->a(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 84
    if-eqz v3, :cond_8

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 86
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 91
    :goto_1
    invoke-static {v3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 95
    :goto_2
    if-eqz v2, :cond_6

    cmp-long v3, v0, v6

    if-eqz v3, :cond_6

    .line 96
    const-string/jumbo v3, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.MESSAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 88
    :catch_0
    move-exception v0

    move-object v0, v8

    move-wide v1, v6

    .line 91
    :goto_3
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    move-wide v11, v1

    move-wide v0, v11

    move-object v2, v8

    .line 92
    goto :goto_2

    .line 91
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v8}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    .line 104
    :cond_5
    const-string/jumbo v3, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/viber/voip/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v3, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v3, "external_call"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string/jumbo v3, "contact_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    invoke-static {p0, v2}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    :cond_6
    const-string/jumbo v0, "extra_navigate_conversation"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "extra_conversation_data"

    const-string/jumbo v2, "extra_conversation_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    const-string/jumbo v0, "extra_navigate_should_register"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "extra_navigate_should_register"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.REGISTER"

    const-string/jumbo v2, "tel"

    const-string/jumbo v3, "2"

    invoke-static {v2, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->finish()V

    goto/16 :goto_0

    .line 91
    :catchall_1
    move-exception v0

    move-object v8, v3

    goto/16 :goto_4

    .line 88
    :catch_1
    move-exception v0

    move-object v0, v3

    move-wide v1, v6

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-wide v11, v0

    move-wide v1, v11

    move-object v0, v3

    goto/16 :goto_3

    :cond_8
    move-wide v0, v6

    move-object v2, v8

    goto/16 :goto_1

    :cond_9
    move-wide v0, v6

    move-object v2, v8

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 248
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/util/bn;

    invoke-direct {v2, p1, p0, p2}, Lcom/viber/voip/util/bn;-><init>(Landroid/content/Intent;Landroid/app/Activity;Z)V

    invoke-static {v1, v0, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 226
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.YOU"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 230
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.viber.voip.action.VIEW_CONTACT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.VIEW_CALL_LOG"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/viber/voip/HomeActivity;Landroid/content/Intent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6}, Lcom/android/camera/ImageManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    if-nez v0, :cond_9

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 163
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 169
    invoke-static {p0, v0, v6}, Lcom/viber/voip/util/bm;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v5

    .line 185
    :goto_3
    if-eqz v0, :cond_7

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.MESSAGES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/viber/voip/HomeActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.ACTION_FORWARD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    if-eqz v2, :cond_5

    .line 195
    const-string/jumbo v1, "share_images_uri"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 201
    :goto_4
    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    :goto_5
    return v4

    :cond_2
    move v0, v3

    .line 173
    goto :goto_2

    .line 176
    :cond_3
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 177
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 179
    :cond_4
    invoke-static {p0, v0, v6}, Lcom/viber/voip/util/bm;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v5

    move-object v5, v0

    move v0, v4

    .line 181
    goto :goto_3

    .line 196
    :cond_5
    if-eqz v5, :cond_6

    .line 197
    const-string/jumbo v1, "share_uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 199
    :cond_6
    const-string/jumbo v2, "share_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_7
    move v4, v3

    .line 205
    goto :goto_5

    :cond_8
    move-object v2, v5

    move-object v5, v0

    move v0, v3

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 234
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.CONVERSATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 238
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.SETTINGS"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

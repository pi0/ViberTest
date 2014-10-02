.class public Lcom/viber/voip/e/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private a(JJIJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v11, 0x1

    move-wide v0, p1

    move-wide v2, p3

    move-object/from16 v4, p10

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p11

    invoke-static/range {v0 .. v11}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 78
    if-eqz p12, :cond_0

    const-string/jumbo v1, "photo_uri"

    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    return-object v0
.end method

.method private a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/viber/voip/e/a/a/a;->a(JJIJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p3}, Lcom/viber/voip/e/a/a/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "notif_extra_call"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 92
    const-string/jumbo v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    const-string/jumbo v0, "extra_was_viber"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    return-object v1
.end method


# virtual methods
.method public a(Landroid/support/v4/app/NotificationCompat$Builder;JJILcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual/range {p7 .. p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v7

    invoke-virtual/range {p7 .. p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativeContactId()J

    move-result-wide v9

    invoke-virtual/range {p7 .. p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p7 .. p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getDispalyName()Ljava/lang/String;

    move-result-object v12

    if-eqz p6, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v13

    move-object v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v13}, Lcom/viber/voip/e/a/a/a;->a(JJIJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 39
    if-eqz p8, :cond_0

    .line 40
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 43
    const v2, 0x7f020308

    iget-object v3, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const v4, 0x7f0c0344

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    return-object p1

    .line 37
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/viber/voip/e/a/a/a;->a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 60
    if-eqz p9, :cond_0

    .line 61
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 64
    const v2, 0x7f020307

    iget-object v3, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const v4, 0x7f0c02fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    return-object p1
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;JLjava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p2, p3, p4}, Lcom/viber/voip/e/a/a/a;->a(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 50
    const v1, 0x7f020306

    iget-object v2, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0c0343

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    return-object p1
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    .line 30
    const-string/jumbo v0, "extra_play"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 32
    const v1, 0x7f020308

    iget-object v2, p0, Lcom/viber/voip/e/a/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0c0344

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 33
    return-object p1
.end method

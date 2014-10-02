.class public Lcom/viber/voip/e/a/a/f;
.super Lcom/viber/voip/e/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/a/a;
.implements Lcom/viber/voip/messages/controller/de;


# static fields
.field private static final e:I


# instance fields
.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/viber/voip/e/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "sgp321"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x44098000

    :goto_0
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/e/a/a/f;->e:I

    return-void

    :cond_0
    const/high16 v0, 0x43e1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/viber/voip/e/a/a/e;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/e/a/a/f;->g:Ljava/util/HashSet;

    .line 68
    sget v0, Lcom/viber/voip/e/a/a/f;->e:I

    sget v1, Lcom/viber/voip/e/a/a/f;->e:I

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/a/a/f;->f:Landroid/graphics/Bitmap;

    .line 69
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 70
    new-instance v0, Lcom/viber/voip/e/a/a/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/e/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    .line 71
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    :try_start_0
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v6

    .line 260
    invoke-virtual {v6}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->e()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    iget v1, v6, Lcom/viber/voip/stickers/c/a;->l:I

    iget v2, v6, Lcom/viber/voip/stickers/c/a;->m:I

    iget-object v3, v6, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    const/4 v4, 0x1

    sget-object v5, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/bb;->a(IILjava/lang/String;ZLcom/viber/voip/stickers/ba;)Landroid/graphics/Picture;

    move-result-object v1

    .line 266
    iget v0, v6, Lcom/viber/voip/stickers/c/a;->l:I

    iget v2, v6, Lcom/viber/voip/stickers/c/a;->m:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 275
    :goto_0
    new-instance v1, Lcom/viber/voip/messages/extras/image/k;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/viber/voip/messages/extras/image/k;-><init>(Landroid/graphics/Bitmap;II)V

    .line 276
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/messages/extras/image/k;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 277
    const v3, 0x7f0203f5

    const-string/jumbo v5, ""

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object v6, p2

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 283
    :goto_1
    return-object v0

    .line 269
    :cond_0
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/h;->a()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 283
    const v3, 0x7f0203f5

    const-string/jumbo v5, ""

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
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
    .line 356
    const v3, 0x7f0203f5

    const-string/jumbo v5, ""

    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 358
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 359
    const-string/jumbo v0, "notif_extra_ptt_message_id_for_playing"

    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JJILcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 13
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
    .line 341
    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 342
    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/util/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 344
    const/4 v11, 0x0

    .line 345
    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 349
    :cond_0
    const v4, 0x7f0203f5

    const-string/jumbo v6, ""

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 13
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
    .line 291
    sget v1, Lcom/viber/voip/e/a/a/f;->e:I

    sget v2, Lcom/viber/voip/e/a/a/f;->e:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;II)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    sget v5, Lcom/viber/voip/e/a/a/f;->e:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {}, Lcom/viber/voip/messages/extras/map/d;->a()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;ZZII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 295
    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/e/a/a/f;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 297
    if-eqz p6, :cond_0

    .line 298
    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    move-object/from16 v0, p7

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    :cond_0
    const v4, 0x7f0203f5

    const-string/jumbo v6, ""

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object v7, v2

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JIJZZLandroid/graphics/Bitmap;Landroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 13
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
    .line 247
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_2

    .line 248
    if-eqz p13, :cond_0

    const v4, 0x7f020312

    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    const-string/jumbo v6, ""

    :goto_1
    const-string/jumbo v7, "Viber"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v8, p7

    move-object/from16 v10, p11

    move-object v11, p2

    move-object/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 252
    :goto_2
    return-object v1

    .line 248
    :cond_0
    const v4, 0x7f0203f5

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 252
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JIZJILandroid/graphics/Bitmap;Landroid/app/PendingIntent;Z)Landroid/app/Notification;
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

    .prologue
    .line 184
    .line 185
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v5

    .line 187
    if-eqz p7, :cond_7

    .line 189
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->p(J)Ljava/util/List;

    move-result-object v6

    .line 191
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/16 v2, 0xa

    move v3, v2

    .line 192
    :goto_0
    new-array v12, v3, [Ljava/lang/String;

    .line 194
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    .line 195
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0, v2}, Lcom/viber/voip/e/a/a/f;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Ljava/lang/String;

    move-result-object v7

    .line 196
    if-eqz p10, :cond_3

    .line 197
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v8

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepareAggregatedMessagesNotification: participantInfo is null:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v8, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/String;)V

    .line 199
    iget-object v9, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-interface {v9, v2, v7}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v4

    .line 194
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 191
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    move v3, v2

    goto :goto_0

    .line 198
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 199
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_3

    .line 201
    :cond_3
    aput-object v7, v12, v4

    goto :goto_4

    .line 205
    :cond_4
    if-eqz p13, :cond_5

    const v5, 0x7f020312

    :goto_5
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_6

    const-string/jumbo v7, ""

    :goto_6
    const-string/jumbo v8, "Viber"

    move-object v2, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v9, p8

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;[Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 216
    :goto_7
    return-object v2

    .line 205
    :cond_5
    const v5, 0x7f0203f5

    goto :goto_5

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/viber/voip/e/a/a/f;->b()Lcom/viber/voip/e/a/a/d;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    const v4, 0x7f0c02c2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 212
    iget-object v3, v2, Lcom/viber/voip/e/a/a/d;->b:Ljava/lang/String;

    .line 213
    iget-object v5, v2, Lcom/viber/voip/e/a/a/d;->a:Ljava/util/List;

    iget-object v2, v2, Lcom/viber/voip/e/a/a/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 214
    const v5, 0x7f0202ca

    invoke-virtual {p0, v5, v2}, Lcom/viber/voip/e/a/a/f;->a(I[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 216
    if-eqz p13, :cond_8

    const v5, 0x7f020312

    :goto_8
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_9

    const-string/jumbo v7, ""

    :goto_9
    move-object v2, p0

    move-object/from16 v6, p3

    move-wide/from16 v8, p8

    move-object/from16 v11, p12

    invoke-virtual/range {v2 .. v11}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_7

    :cond_8
    const v5, 0x7f0203f5

    goto :goto_8

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9
.end method

.method private a(Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    :goto_0
    return-object p1

    .line 411
    :cond_0
    if-eqz p2, :cond_1

    .line 412
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 222
    const-string/jumbo v0, "text"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sms"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    :cond_0
    sget-boolean v0, Lcom/viber/voip/e/u;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_1
    :goto_0
    return-object v0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_3
    const-string/jumbo v0, "sticker"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_4
    const-string/jumbo v0, "location"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    sget-boolean v1, Lcom/viber/voip/e/u;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/e/a/a/f;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_5
    const-string/jumbo v0, "image"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-boolean v1, Lcom/viber/voip/e/u;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/util/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_6
    const-string/jumbo v0, "video"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    sget-boolean v1, Lcom/viber/voip/e/u;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/util/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 235
    :cond_7
    const-string/jumbo v0, "animated_message"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 236
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 237
    :cond_8
    const-string/jumbo v0, "sound"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :cond_9
    const-string/jumbo v0, "NO_TEXT"

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 447
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberExpandableNotificationFactory"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 15
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
    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 321
    :goto_0
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v4, Lcom/viber/voip/e/a/a/f;->e:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/viber/voip/e/a/a/f;->e:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    .line 322
    new-instance v3, Lcom/viber/voip/messages/extras/image/k;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v13, v4, v5}, Lcom/viber/voip/messages/extras/image/k;-><init>(Landroid/graphics/Bitmap;II)V

    .line 323
    iget-object v4, p0, Lcom/viber/voip/e/a/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/extras/image/k;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 326
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 327
    iget-object v3, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/viber/voip/util/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 329
    if-eqz v13, :cond_2

    .line 330
    const v6, 0x7f0203f5

    const-string/jumbo v8, ""

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v10

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 333
    :goto_1
    return-object v3

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/e/a/a/f;->g:Ljava/util/HashSet;

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    const v6, 0x7f0203f5

    const-string/jumbo v8, ""

    invoke-virtual/range {p5 .. p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v9

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 27
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
    .line 121
    const-string/jumbo v3, "popup_action_id"

    const/16 v4, 0xb

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/e/a/a/f;->a(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 123
    const/4 v11, 0x0

    .line 124
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v9

    .line 125
    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isRakutenSystemMessage()Z

    move-result v26

    .line 127
    if-nez p6, :cond_0

    if-eqz p5, :cond_1

    .line 128
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 130
    const v4, 0x7f0202cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/e/a/a/f;->b(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 136
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

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/String;)V

    .line 138
    if-eqz p6, :cond_5

    .line 139
    const v6, 0x7f0203f5

    const-string/jumbo v8, ""

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 176
    :goto_1
    return-object v3

    .line 133
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v4, v1}, Lcom/viber/voip/e/a/a/f;->a(JLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_2
    move-object v11, v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v4

    if-eqz v26, :cond_4

    const v3, 0x7f020311

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/viber/voip/e/a/a/f;->b(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    :cond_4
    const v3, 0x7f0202cb

    goto :goto_3

    .line 140
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_7

    sget-boolean v3, Lcom/viber/voip/e/u;->d:Z

    if-nez v3, :cond_6

    if-nez p5, :cond_7

    .line 141
    :cond_6
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v17

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v21

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v23

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    invoke-direct/range {v13 .. v26}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JIZJILandroid/graphics/Bitmap;Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object v3

    goto :goto_1

    .line 144
    :cond_7
    sget-boolean v3, Lcom/viber/voip/e/u;->d:Z

    if-eqz v3, :cond_f

    .line 145
    const-string/jumbo v3, "text"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "sms"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 146
    :cond_8
    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v17

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v20

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v19, p4

    move/from16 v22, p6

    move/from16 v23, p5

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    invoke-direct/range {v13 .. v26}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JIJZZLandroid/graphics/Bitmap;Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 148
    :cond_9
    const-string/jumbo v3, "sticker"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p9

    .line 149
    invoke-direct/range {v5 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 150
    :cond_a
    const-string/jumbo v3, "location"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 151
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p9

    invoke-direct/range {v3 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 153
    :cond_b
    const-string/jumbo v3, "image"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 154
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p9

    invoke-direct/range {v3 .. v12}, Lcom/viber/voip/e/a/a/f;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 156
    :cond_c
    const-string/jumbo v3, "video"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "animated_message"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 157
    :cond_d
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p10

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v13}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 159
    :cond_e
    const-string/jumbo v3, "sound"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    .line 160
    invoke-direct/range {v3 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 163
    :cond_f
    const v6, 0x7f0203f5

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_11

    const-string/jumbo v8, ""

    :goto_4
    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v12}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 165
    const-string/jumbo v3, "video"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p10

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    :cond_10
    :goto_5
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    .line 163
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 167
    :cond_12
    const-string/jumbo v3, "sound"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 168
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string/jumbo v3, "notif_extra_ptt_message_id_for_playing"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v5

    invoke-virtual {v11, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v7

    invoke-virtual/range {p8 .. p8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v9

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JJILcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_5

    .line 176
    :cond_13
    const v16, 0x7f0203f5

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_14

    const-string/jumbo v18, ""

    :goto_6
    const-string/jumbo v19, "Viber"

    invoke-virtual/range {p9 .. p9}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v20

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    move-object/from16 v17, p3

    move-object/from16 v22, v11

    move-object/from16 v23, p2

    move-object/from16 v24, v12

    invoke-virtual/range {v13 .. v24}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_6
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/e/a/a/e;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/viber/voip/e/a/a/f;->a:Landroid/content/Context;

    const v3, 0x7f0c06b3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;JLcom/viber/voip/contacts/b/b;Ljava/lang/String;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
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

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/String;)V

    .line 77
    invoke-super/range {p0 .. p6}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;JLcom/viber/voip/contacts/b/b;Ljava/lang/String;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 79
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p5}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JLjava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string/jumbo v0, "notif_extra_message"

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v2

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v2

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v4

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v8

    move-object v6, p5

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    return-object v1
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;JLandroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 11
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
    .line 94
    invoke-super/range {p0 .. p10}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;JLandroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 96
    if-eqz p5, :cond_0

    .line 97
    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v3

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JLjava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->h:Lcom/viber/voip/e/a/a/a;

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v3

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativeContactId()J

    move-result-wide v5

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getDispalyName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/viber/voip/e/a/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 103
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/as;->n()Ljava/util/List;

    move-result-object v5

    .line 104
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_2

    const/16 v1, 0xa

    move v3, v1

    .line 105
    :goto_1
    new-array v6, v3, [Ljava/lang/String;

    .line 107
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_5

    .line 108
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v7

    .line 109
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadCallsCount()I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    :cond_1
    const-string/jumbo v1, ""

    :goto_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    .line 107
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 104
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    goto :goto_1

    .line 110
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " ("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadCallsCount()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 113
    :cond_5
    const-string/jumbo v1, "Viber"

    invoke-virtual {p0, v1, v6}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;[Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 11
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
    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 367
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 370
    if-nez v1, :cond_1

    move-object v3, p2

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 371
    invoke-super/range {v1 .. v10}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string/jumbo v2, "Viber"

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    return-object v1

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->d:Lcom/viber/voip/util/l;

    move-object/from16 v0, p6

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/util/l;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

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
    .line 401
    invoke-super/range {p0 .. p8}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, "Viber"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

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
    .line 377
    invoke-super/range {p0 .. p7}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, "Viber"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-super/range {p0 .. p6}, Lcom/viber/voip/e/a/a/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, "Viber"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(JJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    return-void
.end method

.method public a(JJZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/viber/voip/e/a/a/f;->g:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->k(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange: message exist messageToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/viber/voip/e/a/a/f;->g:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 441
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/e/u;->e(J)V

    .line 444
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 423
    return-void
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
    .line 383
    invoke-super/range {p0 .. p7}, Lcom/viber/voip/e/a/a/e;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/e/a/a/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 426
    return-void
.end method

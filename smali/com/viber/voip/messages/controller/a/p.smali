.class public Lcom/viber/voip/messages/controller/a/p;
.super Lcom/viber/voip/messages/controller/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/de;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/viber/voip/messages/extras/a/a;

.field private final e:Lcom/viber/voip/messages/controller/cq;

.field private final f:Lcom/viber/voip/messages/controller/c/as;

.field private final g:Lcom/viber/voip/messages/controller/c/e;

.field private final h:Lcom/viber/voip/messages/controller/cp;

.field private final i:Lcom/viber/voip/messages/controller/ce;

.field private final j:Lcom/viber/voip/messages/controller/cr;

.field private final k:Landroid/os/Handler;

.field private final l:Landroid/content/Context;

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/viber/voip/messages/controller/a/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/a/p;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/a;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/controller/a/p;->n:I

    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    .line 71
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    .line 72
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    .line 73
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->d:Lcom/viber/voip/messages/extras/a/a;

    .line 75
    new-instance v0, Lcom/viber/voip/messages/controller/cp;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/cp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->h:Lcom/viber/voip/messages/controller/cp;

    .line 76
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->e:Lcom/viber/voip/messages/controller/cq;

    .line 77
    new-instance v0, Lcom/viber/voip/messages/controller/ce;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/ce;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->i:Lcom/viber/voip/messages/controller/ce;

    .line 78
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->j:Lcom/viber/voip/messages/controller/cr;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 81
    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->j()Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->h:Lcom/viber/voip/messages/controller/cp;

    invoke-virtual {v0, v8}, Lcom/viber/voip/messages/controller/cp;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    .line 239
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isImage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_1

    .line 243
    iget-object v1, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 244
    iget v1, v0, Lcom/viber/voip/messages/extras/image/a;->c:I

    invoke-virtual {v8, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 245
    iget v0, v0, Lcom/viber/voip/messages/extras/image/a;->b:I

    invoke-virtual {v8, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v8}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 257
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isNeedLoactionStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v8}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 262
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lcom/viber/voip/messages/controller/a/p;->a(JZ)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isNeedMediaUpload()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "animated_message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 265
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v8}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    goto/16 :goto_0

    .line 270
    :cond_5
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v6

    .line 271
    invoke-direct {p0, v8}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)I

    move-result v3

    .line 272
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isResendMessage()Z

    move-result v2

    .line 274
    if-nez v2, :cond_6

    .line 276
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v8}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 280
    :cond_6
    const-string/jumbo v4, ""

    .line 281
    const-string/jumbo v5, ""

    .line 282
    const/4 v0, 0x2

    if-ne v3, v0, :cond_7

    .line 283
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v5

    .line 287
    :cond_7
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 293
    :goto_2
    if-eqz v0, :cond_8

    .line 294
    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 295
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v8}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 298
    :cond_8
    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move-object v1, v8

    .line 287
    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_2

    .line 304
    :cond_a
    return-void
.end method

.method private a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->d:Lcom/viber/voip/messages/extras/a/a;

    new-instance v1, Lcom/viber/voip/messages/controller/a/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/controller/a/x;-><init>(Lcom/viber/voip/messages/controller/a/p;J)V

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/viber/voip/messages/extras/a/a;->a(JLcom/viber/voip/messages/extras/a/b;Z)V

    .line 480
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/p;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/p;->a()V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 335
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 356
    :goto_0
    return v8

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 342
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/16 v3, 0x500

    const/16 v4, 0x500

    const/4 v5, 0x1

    const v6, 0x3e800

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_2

    .line 344
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    iget-object v2, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    const-string/jumbo v3, "image"

    invoke-static {v1, v2, v3}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 349
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 350
    if-eqz v0, :cond_3

    move v0, v7

    :goto_2
    move v8, v0

    goto :goto_0

    .line 347
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v8

    .line 350
    goto :goto_2

    :cond_4
    move v8, v7

    .line 356
    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZILjava/lang/String;Ljava/lang/String;J)Z
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v8

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-interface/range {v1 .. v12}, Lcom/viber/jni/ptt/PttController;->handleSendPttToGroup(JIJILcom/viber/jni/LocationInfo;ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 520
    :goto_0
    return v1

    .line 487
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-gtz v1, :cond_1

    if-lez p3, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "sticker"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "location"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "animated_message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 491
    :cond_3
    const-string/jumbo v1, "animated_message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/k/a;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 493
    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 497
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Ljava/lang/String;)[[B

    move-result-object v5

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaFlag()I

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v1

    long-to-int v11, v1

    .line 501
    const-string/jumbo v1, "video"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v5, v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v10

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v1 .. v15}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendVideoToGroup(J[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 493
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 495
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 504
    :cond_6
    const-string/jumbo v1, "animated_message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 506
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/k/a;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 508
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v1 .. v11}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendAnimatedToGroup(J[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 511
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v5, v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaFlag()I

    move-result v12

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v1 .. v16}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMediaToGroup(J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 516
    :cond_9
    const-string/jumbo v1, "text"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v6

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendTextToGroup(JLjava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z

    move-result v1

    goto/16 :goto_0

    .line 520
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 567
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isForwardedMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isForwardedFromPG()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 572
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    return-object v0
.end method

.method private b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZILjava/lang/String;Ljava/lang/String;J)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v6

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/viber/jni/ptt/PttController;->handleSendPtt(Ljava/lang/String;IJILcom/viber/jni/LocationInfo;ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 562
    :goto_0
    return v0

    .line 530
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-gtz v0, :cond_1

    if-lez p3, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "sticker"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "location"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "animated_message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 535
    :cond_3
    const-string/jumbo v0, "animated_message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 537
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 541
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Ljava/lang/String;)[[B

    move-result-object v3

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaFlag()I

    move-result v10

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v4

    long-to-int v9, v4

    .line 545
    const-string/jumbo v0, "video"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v5, p6

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendVideo(Ljava/lang/String;[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 537
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 539
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 548
    :cond_6
    const-string/jumbo v0, "animated_message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 550
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/k/a;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v5

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendAnimatedMessage(Ljava/lang/String;[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 555
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v6, p6

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMedia(Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 559
    :cond_9
    const-string/jumbo v0, "text"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 560
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v4

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendText(Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z

    move-result v0

    goto/16 :goto_0

    .line 562
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/controller/a/p;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/e;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/controller/a/p;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(JJJZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    if-eqz v0, :cond_0

    .line 198
    if-eqz p7, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/a/r;-><init>(Lcom/viber/voip/messages/controller/a/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_0
    return-void
.end method

.method public a(JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/z;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/z;-><init>(Lcom/viber/voip/messages/controller/a/p;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->i:Lcom/viber/voip/messages/controller/ce;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v1

    new-instance v2, Lcom/viber/voip/messages/controller/a/t;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/controller/a/t;-><init>(Lcom/viber/voip/messages/controller/a/p;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;ZLcom/viber/voip/messages/controller/co;)V

    .line 448
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_5

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isImage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaFlag()I

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;)V

    .line 332
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.ACTION_CORRUPTED_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;)V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;)V

    goto :goto_0

    .line 322
    :cond_4
    invoke-virtual {p1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_0

    .line 326
    :cond_5
    invoke-virtual {p1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->i:Lcom/viber/voip/messages/controller/ce;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/ce;->a(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/p;->a()V

    .line 213
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
    .line 223
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/controller/a/s;-><init>(Lcom/viber/voip/messages/controller/a/p;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 589
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 593
    if-nez v3, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->h:Lcom/viber/voip/messages/controller/cp;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cp;->a(J)V

    .line 600
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 604
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v1, v2, :cond_5

    .line 607
    const-string/jumbo v0, "com.viber.voip.action.NO_INTERNET_DIALOG"

    move-object v1, v0

    .line 619
    :goto_1
    if-eqz v1, :cond_a

    .line 620
    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 621
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 624
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 625
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->l:Landroid/content/Context;

    const v2, 0x7f0c04a3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    :goto_2
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/p;->h:Lcom/viber/voip/messages/controller/cp;

    invoke-virtual {v2, v1, v0, v3}, Lcom/viber/voip/messages/controller/cp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 644
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->d:Lcom/viber/voip/messages/extras/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/a/a;->a(Ljava/lang/Long;)V

    .line 646
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 648
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;)Z

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    goto/16 :goto_0

    .line 608
    :cond_5
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v1, v2, :cond_6

    .line 611
    const-string/jumbo v0, "com.viber.voip.action.NO_SERVICE_DIALOG"

    move-object v1, v0

    goto :goto_1

    .line 615
    :cond_6
    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 616
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move-object v1, v0

    goto :goto_1

    .line 626
    :cond_7
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 629
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string/jumbo v0, ""

    goto :goto_2

    .line 637
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->d:Lcom/viber/voip/messages/extras/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/a/a;->b(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {v3, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 641
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 642
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_3
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
    .line 228
    return-void
.end method

.method public onMessageDelivered(JJII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->k(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p5}, Lcom/viber/voip/messages/controller/c/as;->a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    move-object v3, v0

    .line 91
    :goto_0
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v3, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 94
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMessageDeliveredAck(J)V

    .line 99
    const/4 v0, 0x1

    return v0

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method

.method public onSendMessageReply(IJII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 104
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRealDate(J)V

    .line 114
    invoke-virtual {v1, p2, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 116
    if-ne p4, v4, :cond_5

    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->e:Lcom/viber/voip/messages/controller/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/cq;->c()V

    .line 118
    invoke-virtual {v1, p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    .line 119
    invoke-virtual {v1, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 121
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->j:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/viber/voip/messages/controller/cr;->a(JJ)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p2, p3}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMessageReplyAck(J)V

    .line 147
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->t(J)I

    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->u(J)V

    .line 157
    :cond_4
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v4}, Lcom/viber/voip/messages/controller/c/e;->b(JZ)V

    goto :goto_0

    .line 126
    :cond_5
    if-ne p4, v6, :cond_6

    .line 127
    iput-boolean v4, p0, Lcom/viber/voip/messages/controller/a/p;->m:Z

    .line 129
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 130
    invoke-virtual {v1, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/p;->a()V

    goto :goto_1

    .line 137
    :cond_6
    const/4 v0, 0x7

    if-ne p4, v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->y(J)I

    goto :goto_1

    .line 140
    :cond_7
    if-nez p4, :cond_8

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->e:Lcom/viber/voip/messages/controller/cq;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 143
    :cond_8
    invoke-virtual {v1, v7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_1

    .line 160
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->g:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    goto/16 :goto_0
.end method

.method public onServiceStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iput p1, p0, Lcom/viber/voip/messages/controller/a/p;->n:I

    .line 180
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->q()I

    .line 183
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->r()I

    .line 184
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/p;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/q;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/a/q;-><init>(Lcom/viber/voip/messages/controller/a/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    return-void
.end method

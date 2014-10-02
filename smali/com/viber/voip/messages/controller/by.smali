.class public Lcom/viber/voip/messages/controller/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/x;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/viber/voip/messages/controller/c/e;

.field private c:Lcom/viber/voip/messages/controller/c/as;

.field private d:Lcom/viber/voip/messages/controller/cr;

.field private e:Lcom/viber/voip/messages/controller/ce;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/viber/voip/util/b/w;

.field private final i:Lcom/viber/voip/util/b/x;

.field private j:Lcom/viber/voip/util/b/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->g:Ljava/util/Set;

    .line 74
    iput-object p1, p0, Lcom/viber/voip/messages/controller/by;->a:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->b:Lcom/viber/voip/messages/controller/c/e;

    .line 76
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->f:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    .line 78
    new-instance v0, Lcom/viber/voip/messages/controller/ce;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->f:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/controller/ce;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->e:Lcom/viber/voip/messages/controller/ce;

    .line 79
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    .line 80
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->h:Lcom/viber/voip/util/b/w;

    .line 81
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    new-instance v1, Lcom/viber/voip/util/b/b/f;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/by;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/viber/voip/util/b/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->d(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/by;->i:Lcom/viber/voip/util/b/x;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/messages/controller/c/as;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/util/b/al;)Lcom/viber/voip/util/b/al;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/messages/controller/by;->j:Lcom/viber/voip/util/b/al;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 393
    if-nez p2, :cond_0

    const-string/jumbo v0, "animated_message"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->a:Landroid/content/Context;

    const v1, 0x7f0c0612

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/util/b/x;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->i:Lcom/viber/voip/util/b/x;

    return-object v0
.end method

.method private b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 342
    new-instance v0, Lcom/viber/voip/messages/controller/bz;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/bz;-><init>(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 385
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->e:Lcom/viber/voip/messages/controller/ce;

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/messages/controller/ce;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/controller/cn;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->e:Lcom/viber/voip/messages/controller/ce;

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/controller/cn;)V

    .line 388
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/util/b/al;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->j:Lcom/viber/voip/util/b/al;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/util/b/w;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->h:Lcom/viber/voip/util/b/w;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->k()Ljava/util/List;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadMediaMessages size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "downloadMediaMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/viber/voip/messages/controller/by;->e:Lcom/viber/voip/messages/controller/ce;

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string/jumbo v2, "sound"

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/viber/jni/ptt/PttController;->handleDownloadPtt(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/by;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    goto :goto_0

    .line 326
    :cond_2
    return-void
.end method

.method public a(IJJJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p4, p5}, Lcom/viber/voip/messages/controller/c/as;->l(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v7

    .line 560
    if-eqz v7, :cond_0

    .line 561
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getLiked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v6, 0x1

    .line 562
    :goto_0
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v7, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setLiked(I)V

    .line 564
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setSyncLike(I)V

    .line 565
    if-eqz v6, :cond_3

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getLikesCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {v7, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setLikesCount(I)V

    .line 566
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v7}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 567
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->b:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 569
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v1, v7

    long-to-int v9, v1

    move-wide v1, p2

    move v5, p1

    move-wide/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerWrapper;->handleLikePublicGroupMessage(JJIZJI)Z

    .line 572
    :cond_0
    return-void

    .line 561
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 562
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 565
    :cond_3
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getLikesCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public a(ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JLjava/lang/String;ILcom/viber/jni/PublicGroupInfo;Z)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v2

    .line 117
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v3

    .line 119
    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/conversation/publicgroup/aq;-><init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)V

    .line 123
    :goto_0
    if-eqz p9, :cond_0

    move-object/from16 v0, p9

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/ad;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 124
    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v1, Lcom/viber/voip/messages/conversation/h;

    invoke-direct {v1, v2}, Lcom/viber/voip/messages/conversation/h;-><init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    const-string/jumbo v1, "sound"

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/jni/ptt/PttController;->handleDownloadPtt(Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/by;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    goto :goto_0
.end method

.method public a(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->g:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->a(JI)V

    .line 208
    return-void
.end method

.method public a(JJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(JJJ)V

    .line 147
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/e/u;->d(J)V

    .line 148
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/aa;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 292
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/util/Set;)V

    .line 294
    if-eqz p3, :cond_0

    invoke-interface {p3, v0}, Lcom/viber/voip/messages/controller/aa;->a(Ljava/util/Set;)V

    .line 295
    :cond_0
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/ac;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/viber/voip/messages/controller/ac;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/ae;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/viber/voip/messages/controller/ae;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 106
    :cond_0
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/af;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->r(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/viber/voip/messages/controller/af;->a(Ljava/util/List;)V

    .line 111
    :cond_0
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/ag;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->h(J)Ljava/util/Map;

    move-result-object v0

    .line 401
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/controller/cb;

    invoke-direct {v2, p0, p3, v0}, Lcom/viber/voip/messages/controller/cb;-><init>(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/controller/ag;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public declared-synchronized a(JLcom/viber/voip/messages/controller/y;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v3

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 222
    sget-object v0, Lcom/viber/voip/w;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 224
    :goto_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    cmp-long v0, v1, p1

    if-lez v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    cmp-long v0, p1, v4

    if-gtz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 226
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 227
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    move-result v0

    int-to-long v7, v0

    sub-long v0, v1, v7

    :goto_1
    move-wide v1, v0

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    sget-object v0, Lcom/viber/voip/w;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 233
    cmp-long v0, v1, p1

    if-lez v0, :cond_5

    .line 234
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/viber/voip/w;->u:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 237
    const/4 v0, 0x0

    move v6, v0

    move-wide v9, v1

    move-wide v0, v9

    .line 238
    :goto_2
    array-length v2, v7

    if-ge v6, v2, :cond_5

    cmp-long v2, v0, p1

    if-lez v2, :cond_5

    .line 239
    aget-object v2, v7, v6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v7, v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 240
    :goto_3
    aget-object v8, v7, v6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v7, v6

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v7, v6

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 241
    sub-long/2addr v0, v2

    .line 243
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    .line 244
    goto :goto_2

    :cond_4
    move-wide v2, v4

    .line 239
    goto :goto_3

    .line 248
    :cond_5
    if-eqz p3, :cond_6

    .line 249
    invoke-interface {p3}, Lcom/viber/voip/messages/controller/y;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_6
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-wide v0, v1

    goto :goto_1
.end method

.method public a(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->b(JLjava/lang/String;)V

    .line 422
    return-void
.end method

.method public a(JLjava/lang/String;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JLjava/lang/String;II)V

    .line 412
    return-void
.end method

.method public a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->c(JZ)V

    .line 417
    return-void
.end method

.method public a(JZLcom/viber/voip/messages/controller/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->a(JZ)V

    .line 135
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/viber/voip/messages/controller/ai;->a()V

    .line 136
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V

    .line 202
    return-void
.end method

.method public a(Lcom/viber/voip/messages/controller/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->o()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/ac;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 101
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/controller/aj;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 474
    if-nez p1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    .line 476
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->c()Ljava/lang/String;

    move-result-object v1

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    new-instance v3, Lcom/viber/voip/messages/controller/cd;

    invoke-direct {v3, p0, v0, v2, p1}, Lcom/viber/voip/messages/controller/cd;-><init>(Lcom/viber/voip/messages/controller/by;ILjava/util/ArrayList;Lcom/viber/voip/messages/controller/aj;)V

    .line 514
    iget-object v4, p0, Lcom/viber/voip/messages/controller/by;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    .line 516
    invoke-virtual {v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 517
    invoke-virtual {v2, v0, v1, v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleSearchPublicGroupsForCountry(ILjava/lang/String;I)Z

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p1, v2}, Lcom/viber/voip/messages/controller/aj;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/controller/c/ao;Lcom/viber/voip/messages/controller/ah;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 451
    if-nez p2, :cond_0

    .line 470
    :goto_0
    return-void

    .line 452
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/controller/c/ao;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/viber/voip/messages/controller/c/ap;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/ap;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/ap;->a(Ljava/lang/String;)Lcom/viber/voip/messages/controller/c/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/ap;->a()Lcom/viber/voip/messages/controller/c/ao;

    move-result-object v0

    .line 453
    :goto_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/controller/c/ao;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/controller/c/ao;)Ljava/util/ArrayList;

    move-result-object v1

    .line 455
    new-instance v2, Lcom/viber/voip/messages/controller/cc;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/viber/voip/messages/controller/cc;-><init>(Lcom/viber/voip/messages/controller/by;Ljava/util/ArrayList;Lcom/viber/voip/messages/controller/ah;Lcom/viber/voip/messages/controller/c/ao;)V

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/aj;)V

    .line 466
    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/controller/ah;->a(Lcom/viber/voip/messages/controller/c/ao;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 452
    goto :goto_1

    .line 468
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/controller/c/ao;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/controller/ah;->a(Lcom/viber/voip/messages/controller/c/ao;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/controller/cv;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/messages/controller/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->b(Ljava/lang/String;)V

    .line 554
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/viber/voip/messages/controller/ai;->a()V

    .line 555
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/messages/controller/ab;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/viber/voip/messages/controller/ab;->a()V

    .line 436
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/viber/voip/messages/controller/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/viber/voip/messages/controller/c/b;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/b;->a(Ljava/util/Set;)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 130
    return-void
.end method

.method public a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/viber/voip/messages/controller/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p2, :cond_2

    .line 300
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 301
    iget-object v2, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 304
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/util/Set;)V

    .line 309
    if-eqz p3, :cond_3

    invoke-interface {p3, p1}, Lcom/viber/voip/messages/controller/aa;->a(Ljava/util/Set;)V

    .line 310
    :cond_3
    return-void
.end method

.method public a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/viber/voip/messages/controller/ai;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/util/Set;Z)V

    .line 141
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/viber/voip/messages/controller/ai;->a()V

    .line 142
    :cond_0
    return-void
.end method

.method public a(ZLcom/viber/voip/messages/controller/z;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/b;->c()V

    .line 427
    iget-object v1, p0, Lcom/viber/voip/messages/controller/by;->b:Lcom/viber/voip/messages/controller/c/e;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->v()Ljava/util/Set;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/controller/c/e;->b(Ljava/util/Set;Z)V

    .line 429
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/viber/voip/messages/controller/z;->a()V

    .line 430
    :cond_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->u()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/cr;->a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 197
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 530
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->a(J)V

    .line 441
    return-void
.end method

.method public b(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->g:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->b(JI)V

    .line 257
    return-void
.end method

.method public b(JJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cr;->b(JJJ)V

    .line 153
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/e/u;->d(J)V

    .line 154
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->c(JLjava/lang/String;)V

    .line 446
    return-void
.end method

.method public c(J)V
    .locals 1
    .parameter

    .prologue
    .line 534
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->b(J)V

    .line 535
    return-void
.end method

.method public c(JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->d(JLjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 542
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->b:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 544
    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 1
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/viber/voip/messages/controller/by;->d:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->c(J)V

    .line 549
    return-void
.end method

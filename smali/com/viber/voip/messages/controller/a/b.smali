.class public Lcom/viber/voip/messages/controller/a/b;
.super Lcom/viber/voip/messages/controller/a/a;
.source "SourceFile"


# instance fields
.field protected c:Landroid/content/Context;

.field protected d:Lcom/viber/voip/messages/controller/c/e;

.field protected e:Lcom/viber/voip/messages/controller/cr;

.field protected f:Lcom/viber/voip/messages/controller/c/as;

.field protected g:Lcom/viber/voip/messages/controller/cq;

.field protected h:Lcom/viber/voip/messages/controller/c/a;

.field protected i:Lcom/viber/voip/messages/controller/r;

.field protected j:Lcom/viber/voip/messages/controller/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/controller/r;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/a;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/b;->c:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    .line 70
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    .line 72
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    .line 73
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->g:Lcom/viber/voip/messages/controller/cq;

    .line 74
    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    .line 75
    new-instance v0, Lcom/viber/voip/messages/controller/c/a;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->h:Lcom/viber/voip/messages/controller/c/a;

    .line 76
    new-instance v0, Lcom/viber/voip/messages/controller/b/c;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/b/c;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    .line 77
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "need_recover_groups"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleRecoverGroups()Z

    move-result v0

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "need_recover_groups"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

.method private a(IJLjava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 417
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/r;->a(I)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v4

    .line 418
    if-eqz v4, :cond_2

    .line 419
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 420
    iget v0, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_1
    iput v0, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->d:I

    .line 419
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 420
    goto :goto_1

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const-string/jumbo v5, ""

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JZ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v1

    .line 424
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    iget-object v2, v1, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 425
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    iget-object v2, v1, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    iget-object v1, v1, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    move v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/e;->a(IJJLjava/util/Map;)V

    .line 429
    :goto_2
    return-void

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/e;->a(II)V

    goto :goto_2
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 511
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    :cond_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->h:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v1, "key_not_synced_group"

    invoke-virtual {v0, v1, v7}, Lcom/viber/voip/messages/controller/c/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 515
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    .line 516
    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v5, v0, v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetGroupInfo(IJ)Z

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->h:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v1, "key_not_synced_public_group"

    invoke-virtual {v0, v1, v7}, Lcom/viber/voip/messages/controller/c/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 522
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->h:Lcom/viber/voip/messages/controller/c/a;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v5, "key_not_synced_public_group"

    aput-object v5, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 524
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    goto :goto_1

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->b()Ljava/util/List;

    move-result-object v0

    .line 528
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    .line 531
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    .line 532
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastServerMessageId()I

    move-result v0

    invoke-interface {v3, v2, v4, v5, v0}, Lcom/viber/voip/messages/controller/GroupController;->a(IJI)V

    goto :goto_2
.end method

.method private b(IJLjava/util/Map;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/r;->b(I)Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    move-result-object v11

    .line 433
    if-eqz v11, :cond_0

    .line 434
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v4, 0x2

    iget v5, v11, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->groupRole:I

    const-string/jumbo v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v7

    .line 436
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, v7, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    iget-object v1, v7, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    move v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/e;->a(IJJLjava/util/Map;)V

    .line 437
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, v7, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/e;->a(II)V

    goto :goto_0
.end method


# virtual methods
.method protected a(JIILjava/lang/String;[Lcom/viber/jni/GroupUserInfo;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 322
    move-object/from16 v0, p6

    array-length v5, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, p6, v3

    .line 323
    iget-object v2, v6, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    .line 327
    const/4 v1, 0x1

    if-ne p4, v1, :cond_d

    .line 328
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/ViberApplication;

    invoke-static {v1, v2, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_1
    new-instance v2, Lcom/viber/jni/GroupUserInfo;

    iget-object v7, v6, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    iget-object v6, v6, Lcom/viber/jni/GroupUserInfo;->downloadID:Ljava/lang/String;

    invoke-direct {v2, v1, v7, v6}, Lcom/viber/jni/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 334
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 335
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/util/Set;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 337
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-ne p4, v3, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    :cond_2
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 342
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 345
    :cond_3
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_4
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 350
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/jni/GroupUserInfo;

    iget-object v4, v2, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    .line 353
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/jni/GroupUserInfo;

    iget-object v1, v1, Lcom/viber/jni/GroupUserInfo;->downloadID:Ljava/lang/String;

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v5, ""

    .line 356
    :goto_4
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 357
    if-nez v1, :cond_6

    .line 359
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    .line 366
    :goto_5
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 354
    :cond_5
    invoke-static {v1}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 362
    :cond_6
    invoke-virtual {v1, v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1, v5}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_5

    .line 369
    :cond_7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->i(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 371
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getParticipantInfoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->isActive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 374
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 375
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_6

    .line 378
    :cond_8
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getParticipantInfoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 382
    :cond_9
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    .line 383
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 384
    if-nez v1, :cond_b

    .line 385
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->b(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    goto :goto_7

    .line 386
    :cond_b
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getStatus()I

    move-result v2

    if-eqz v2, :cond_a

    .line 387
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 388
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_7

    .line 391
    :cond_c
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 392
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lcom/viber/voip/messages/controller/c/e;->h(Ljava/util/Set;Z)V

    .line 393
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    .line 394
    return-void

    :cond_d
    move-object v1, v2

    goto/16 :goto_1
.end method

.method protected a(JI[Lcom/viber/jni/GroupUserInfo;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v4, 0x1

    const-string/jumbo v5, ""

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/b;->a(JIILjava/lang/String;[Lcom/viber/jni/GroupUserInfo;)V

    .line 315
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->a(JLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 198
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    .line 205
    :cond_0
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    .line 210
    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/cv;->a:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendGroupChangedAck(J)V

    .line 213
    :cond_1
    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicWatcher()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->g:Lcom/viber/voip/messages/controller/cq;

    iget-object v2, v0, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-object v3, v0, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-object v4, v0, Lcom/viber/voip/messages/controller/cv;->f:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iget-boolean v0, v0, Lcom/viber/voip/messages/controller/cv;->c:Z

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 216
    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    return-void
.end method

.method protected a(ZJILjava/lang/String;IJJLjava/lang/String;[Lcom/viber/jni/GroupAddedMember;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;I)V
    .locals 16
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
    .line 240
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 242
    :goto_0
    if-eqz v2, :cond_6

    .line 243
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/viber/voip/messages/controller/a/b;->a:Z

    if-nez v2, :cond_2

    .line 311
    :cond_0
    :goto_1
    return-void

    .line 240
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    :cond_2
    if-eqz p1, :cond_3

    .line 247
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/j/a;->b()V

    .line 250
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v3

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    if-nez p13, :cond_4

    const/4 v6, 0x4

    :goto_2
    const/4 v7, 0x4

    const-string/jumbo v8, ""

    const/4 v10, 0x1

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    move-wide/from16 v4, p2

    move/from16 v9, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/ViberApplication;

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 256
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v2

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    if-eqz p1, :cond_5

    const/4 v7, 0x2

    :goto_3
    const/16 v11, 0x50

    invoke-static {v2}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v5, p2

    move-wide/from16 v8, p7

    move-wide/from16 v12, p9

    move/from16 v15, p14

    invoke-virtual/range {v4 .. v15}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 259
    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 261
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v2, v1, v3}, Lcom/viber/voip/messages/controller/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)V

    goto :goto_1

    .line 251
    :cond_4
    const/4 v6, 0x2

    goto :goto_2

    .line 257
    :cond_5
    const/4 v7, 0x1

    goto :goto_3

    .line 263
    :cond_6
    if-eqz p13, :cond_0

    .line 265
    move-object/from16 v0, p12

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 271
    move-object/from16 v0, p12

    array-length v2, v0

    new-array v10, v2, [Ljava/lang/String;

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v2

    .line 274
    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v2

    move v8, v2

    .line 276
    :goto_4
    const/4 v2, 0x0

    move v9, v2

    :goto_5
    move-object/from16 v0, p12

    array-length v2, v0

    if-ge v9, v2, :cond_a

    .line 277
    aget-object v6, p12, v9

    .line 281
    invoke-virtual {v6}, Lcom/viber/jni/GroupAddedMember;->getUser()Lcom/viber/jni/GroupUserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/jni/GroupUserInfo;->downloadID:Ljava/lang/String;

    invoke-static {v2}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6}, Lcom/viber/jni/GroupAddedMember;->getUser()Lcom/viber/jni/GroupUserInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/viber/jni/GroupAddedMember;->getUser()Lcom/viber/jni/GroupUserInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v6

    .line 293
    const/4 v2, 0x1

    invoke-virtual {v6, v2, v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(ZI)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-nez v2, :cond_7

    const-string/jumbo v2, "Unknown"

    :cond_7
    aput-object v2, v10, v9

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual/range {p13 .. p13}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 276
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_5

    .line 274
    :cond_8
    const/4 v2, 0x1

    move v8, v2

    goto :goto_4

    .line 282
    :cond_9
    const-string/jumbo v7, ""

    goto :goto_6

    .line 299
    :cond_a
    move-object/from16 v0, p12

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    aget-object v2, p12, v2

    invoke-virtual {v2}, Lcom/viber/jni/GroupAddedMember;->getUser()Lcom/viber/jni/GroupUserInfo;

    move-result-object v2

    iget-object v8, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    .line 300
    :goto_7
    move-object/from16 v0, p12

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    aget-object v2, p12, v2

    invoke-virtual {v2}, Lcom/viber/jni/GroupAddedMember;->getUser()Lcom/viber/jni/GroupUserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 302
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    if-eqz p1, :cond_d

    const/4 v5, 0x2

    :goto_9
    move-wide/from16 v3, p2

    move-wide/from16 v6, p7

    move/from16 v9, p6

    move-wide/from16 v10, p9

    move/from16 v13, p14

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v2, v1, v3}, Lcom/viber/voip/messages/controller/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual/range {p13 .. p13}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual/range {p13 .. p13}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual/range {p13 .. p13}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v8, p5

    .line 299
    goto :goto_7

    .line 300
    :cond_c
    invoke-static {v10}, Lcom/viber/voip/messages/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 302
    :cond_d
    const/4 v5, 0x1

    goto :goto_9
.end method

.method public onCreateGroupReply(IIJLjava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/r;->c(I)Z

    move-result v0

    .line 404
    if-nez p1, :cond_1

    .line 405
    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/viber/voip/messages/controller/a/b;->b(IJLjava/util/Map;)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/r;->d(I)V

    .line 414
    return-void

    .line 408
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/viber/voip/messages/controller/a/b;->a(IJLjava/util/Map;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p2, p1}, Lcom/viber/voip/messages/controller/c/e;->a(II)V

    goto :goto_0
.end method

.method public onGroupAddMember(JLjava/lang/String;JI)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/r;->b(J)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 172
    :goto_1
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    .line 176
    :goto_2
    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v4, 0x0

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/viber/voip/messages/controller/cr;->a(JLjava/lang/String;I)Lcom/viber/voip/messages/controller/cu;

    move-result-object v14

    .line 179
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    invoke-static {v9}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v4, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v3 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 181
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    iget-object v5, v14, Lcom/viber/voip/messages/controller/cu;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 184
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    iget-object v4, v14, Lcom/viber/voip/messages/controller/cu;->b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getConversationId()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/r;->a(J)Lcom/viber/voip/messages/controller/u;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_0

    move/from16 v0, p6

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/u;->a(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/controller/u;->a()I

    move-result v5

    invoke-virtual {v3}, Lcom/viber/voip/messages/controller/u;->b()Ljava/util/Map;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v4, v5, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/e;->a(IJLjava/util/Map;)V

    .line 190
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/b;->i:Lcom/viber/voip/messages/controller/r;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/r;->b(J)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v9, p3

    .line 171
    goto :goto_1

    .line 172
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .locals 20
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
            "(JIJI[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 448
    if-nez p9, :cond_3

    .line 450
    move-object/from16 v0, p7

    array-length v4, v0

    new-array v9, v4, [Ljava/lang/String;

    .line 451
    const-string/jumbo v8, ""

    .line 452
    const/4 v7, 0x1

    .line 453
    const-wide/16 v5, 0x0

    .line 455
    const/4 v4, 0x0

    move-wide/from16 v16, v5

    move-object/from16 v18, v8

    :goto_0
    move-object/from16 v0, p7

    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 457
    aget-object v5, p7, v4

    .line 458
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v7, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1, v5, v7}, Lcom/viber/voip/messages/controller/cr;->a(JLjava/lang/String;I)Lcom/viber/voip/messages/controller/cu;

    move-result-object v10

    .line 464
    iget-object v5, v10, Lcom/viber/voip/messages/controller/cu;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v8

    .line 465
    iget-object v5, v10, Lcom/viber/voip/messages/controller/cu;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v7

    .line 466
    iget-object v5, v10, Lcom/viber/voip/messages/controller/cu;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    .line 467
    iget-object v10, v10, Lcom/viber/voip/messages/controller/cu;->c:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 455
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v5

    move-object/from16 v18, v8

    goto :goto_0

    .line 470
    :cond_1
    move-object/from16 v0, p7

    array-length v4, v0

    if-lez v4, :cond_2

    .line 471
    const/4 v4, 0x0

    aget-object v10, p7, v4

    .line 472
    move-object/from16 v0, p7

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    aget-object v4, p7, v4

    invoke-static {v4}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 474
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    move-wide/from16 v5, p1

    move-wide/from16 v12, p4

    move/from16 v15, p6

    invoke-virtual/range {v4 .. v15}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v7}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    const/4 v5, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v5}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    .line 481
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    move/from16 v0, p3

    move-wide/from16 v1, p1

    move-object/from16 v3, p8

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->a(IJLjava/util/Map;)V

    .line 484
    :cond_3
    return-void

    .line 472
    :cond_4
    invoke-static {v9}, Lcom/viber/voip/messages/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1
.end method

.method public onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z
    .locals 31
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
    .line 83
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v17

    .line 88
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move/from16 v30, v4

    .line 89
    :goto_0
    and-int/lit8 v4, p7, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v5, v4

    .line 90
    :goto_1
    if-nez v30, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    const/16 v11, 0x10

    .line 92
    :goto_2
    const/4 v4, 0x1

    move/from16 v0, p12

    if-ne v0, v4, :cond_4

    const/4 v4, 0x1

    move/from16 v29, v4

    .line 93
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, p12

    if-ne v0, v4, :cond_5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    move v5, v4

    .line 94
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/viber/voip/ViberApplication;

    move-object/from16 v0, p10

    move-object/from16 v1, p10

    invoke-static {v4, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    const/16 v19, 0x0

    .line 99
    packed-switch p12, :pswitch_data_0

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendGroupChangedAck(J)V

    .line 149
    const/4 v4, 0x0

    .line 157
    :goto_5
    return v4

    .line 88
    :cond_1
    const/4 v4, 0x0

    move/from16 v30, v4

    goto :goto_0

    .line 89
    :cond_2
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    .line 90
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 92
    :cond_4
    const/4 v4, 0x0

    move/from16 v29, v4

    goto :goto_3

    .line 93
    :cond_5
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4

    .line 101
    :pswitch_0
    move-object/from16 v0, p13

    array-length v4, v0

    new-array v0, v4, [Lcom/viber/jni/GroupAddedMember;

    move-object/from16 v16, v0

    .line 102
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p13

    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 103
    new-instance v5, Lcom/viber/jni/GroupAddedMember;

    aget-object v6, p13, v4

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/viber/jni/GroupAddedMember;-><init>(Lcom/viber/jni/GroupUserInfo;I)V

    aput-object v5, v16, v4

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 105
    :cond_6
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-object/from16 v9, p10

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-wide/from16 v13, p5

    move-object/from16 v15, p3

    invoke-virtual/range {v4 .. v18}, Lcom/viber/voip/messages/controller/a/b;->a(ZJILjava/lang/String;IJJLjava/lang/String;[Lcom/viber/jni/GroupAddedMember;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;I)V

    move-object/from16 v4, v19

    .line 152
    :goto_7
    if-eqz v4, :cond_7

    if-nez v17, :cond_a

    if-nez v29, :cond_a

    .line 153
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->b:Lcom/viber/jni/PhoneControllerWrapper;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendGroupChangedAck(J)V

    .line 157
    :goto_8
    const/4 v4, 0x1

    goto :goto_5

    .line 108
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    const/4 v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v10, v0, v1}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v5, p1

    move-wide/from16 v8, p8

    move-wide/from16 v12, p5

    invoke-virtual/range {v4 .. v14}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v4

    goto :goto_7

    .line 113
    :pswitch_2
    if-nez v5, :cond_9

    move-object/from16 v24, v10

    .line 115
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/b;->j:Lcom/viber/voip/messages/controller/b/c;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    invoke-static/range {v24 .. v24}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-wide/from16 v19, p1

    move-wide/from16 v22, p8

    move/from16 v25, v11

    move-wide/from16 v26, p5

    invoke-virtual/range {v18 .. v28}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v13

    .line 118
    if-eqz v17, :cond_b

    .line 119
    if-nez v5, :cond_b

    .line 120
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v12, ""

    move-object/from16 v11, p11

    invoke-virtual/range {v7 .. v12}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v8

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->e:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual/range {v17 .. v17}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->isActive()Z

    move-result v5

    if-nez v5, :cond_8

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v5, v4}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 130
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual/range {v17 .. v17}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    invoke-virtual/range {v17 .. v17}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual/range {v17 .. v17}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    move-object v4, v13

    .line 132
    goto/16 :goto_7

    .line 113
    :cond_9
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v24

    goto :goto_9

    .line 137
    :pswitch_3
    const/4 v4, 0x0

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/viber/voip/messages/controller/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;JLjava/lang/String;)V

    goto/16 :goto_7

    .line 155
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2}, Lcom/viber/voip/messages/controller/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_b
    move-object v4, v13

    goto/16 :goto_7

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 221
    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {v0, p4}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 230
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v4, p5}, Lcom/viber/voip/messages/controller/a/b;->a(JI[Lcom/viber/jni/GroupUserInfo;)V

    .line 232
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->d:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 234
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/b;->h:Lcom/viber/voip/messages/controller/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_synced_group"

    aput-object v5, v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 488
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/b;->a()V

    .line 490
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/b;->b()V

    .line 492
    :cond_0
    return-void
.end method

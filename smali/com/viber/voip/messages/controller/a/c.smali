.class public Lcom/viber/voip/messages/controller/a/c;
.super Lcom/viber/voip/messages/controller/a/a;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/viber/voip/e/u;

.field private e:Lcom/viber/voip/messages/controller/c/e;

.field private f:Lcom/viber/voip/messages/controller/c/as;

.field private g:Lcom/viber/voip/messages/controller/c/a;

.field private h:Lcom/viber/voip/messages/controller/cr;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/viber/voip/messages/controller/da;

.field private l:Lcom/viber/voip/messages/controller/de;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/messages/controller/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/a/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/a;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->i:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->j:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/viber/voip/messages/controller/a/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/a/d;-><init>(Lcom/viber/voip/messages/controller/a/c;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->k:Lcom/viber/voip/messages/controller/da;

    .line 73
    new-instance v0, Lcom/viber/voip/messages/controller/a/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/a/e;-><init>(Lcom/viber/voip/messages/controller/a/c;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->l:Lcom/viber/voip/messages/controller/de;

    .line 102
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    .line 103
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->d:Lcom/viber/voip/e/u;

    .line 104
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    .line 105
    new-instance v0, Lcom/viber/voip/messages/controller/c/a;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    .line 107
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->h:Lcom/viber/voip/messages/controller/cr;

    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->k:Lcom/viber/voip/messages/controller/da;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->l:Lcom/viber/voip/messages/controller/de;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 110
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    .line 363
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->f()Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 374
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    new-instance v4, Lcom/viber/jni/GroupToken;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/viber/jni/GroupToken;-><init>(JJ)V

    .line 376
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    :cond_2
    new-instance v4, Lcom/viber/jni/ConversationToken;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lcom/viber/jni/ConversationToken;-><init>(JLjava/lang/String;)V

    .line 379
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/jni/ConversationToken;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/jni/ConversationToken;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/viber/jni/GroupToken;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/viber/jni/GroupToken;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleSyncDeletedMessages([Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)Z

    goto :goto_0
.end method

.method private a(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->k(JJ)Ljava/util/Set;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/util/Set;)V

    .line 477
    :cond_0
    return-void
.end method

.method private a(JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->i:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->i:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->h(JJ)I

    .line 346
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->e(Ljava/util/Set;Z)V

    .line 348
    :cond_2
    return-void

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->j:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->j:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->g(JJ)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/c;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/a/c;->b(Ljava/util/Set;)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_sync_smart_notification"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->b()V

    goto :goto_0
.end method

.method private a(ZJIJI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 287
    const/4 v0, 0x2

    if-ne p7, v0, :cond_2

    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->d(J)I

    .line 291
    :cond_0
    invoke-direct {p0, p5, p6, p2, p3}, Lcom/viber/voip/messages/controller/a/c;->a(JJ)V

    .line 293
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/viber/voip/messages/controller/c/as;->d(JJ)I

    .line 294
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->w(J)V

    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 296
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 297
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p2, p3, v1}, Lcom/viber/voip/messages/controller/c/e;->e(JZ)V

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->d:Lcom/viber/voip/e/u;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/e/u;->d(J)V

    .line 300
    invoke-static {}, Lcom/viber/voip/messages/controller/c/b;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/b;->a(J)V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    const/4 v0, 0x1

    if-ne p7, v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/viber/voip/messages/controller/c/as;->j(JJ)I

    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p2, p3, v1}, Lcom/viber/voip/messages/controller/c/e;->c(JZ)V

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->d:Lcom/viber/voip/e/u;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/e/u;->d(J)V

    goto :goto_0

    .line 306
    :cond_3
    const/4 v0, 0x4

    if-ne p7, v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/viber/voip/messages/controller/c/as;->f(JJ)V

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p2, p3, v1}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    goto :goto_0
.end method

.method private a([J)V
    .locals 2
    .parameter

    .prologue
    .line 460
    if-nez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->e([J)Ljava/util/Set;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private b()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 407
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v2, "key_not_sync_mute_notification"

    aput-object v2, v1, v10

    const-string/jumbo v2, "key_not_sync_smart_notification"

    aput-object v2, v1, v9

    const-string/jumbo v2, "key_not_sync_read_conversation"

    aput-object v2, v1, v11

    invoke-virtual {v0, v9, v1}, Lcom/viber/voip/messages/controller/c/a;->a(Z[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 412
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 416
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 417
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    const-string/jumbo v5, "key_not_sync_mute_notification"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 419
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isMuteNotifications()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/viber/jni/PhoneControllerWrapper;->handleMuteGroup(JZ)Z

    goto :goto_0

    .line 423
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "key_not_sync_mute_notification"

    aput-object v8, v7, v10

    invoke-virtual {v1, v5, v6, v7}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_5
    const-string/jumbo v5, "key_not_sync_smart_notification"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 426
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 427
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangeGroupSettings(JZ)Z

    goto :goto_0

    .line 429
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/viber/jni/PhoneControllerWrapper;->handleChangeConversationSettings(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 431
    :cond_7
    const-string/jumbo v5, "key_not_sync_read_conversation"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v5

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "key_not_sync_read_conversation"

    aput-object v8, v7, v10

    invoke-virtual {v1, v5, v6, v7}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 439
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "key_not_sync_mute_notification"

    aput-object v5, v4, v10

    const-string/jumbo v5, "key_not_sync_smart_notification"

    aput-object v5, v4, v9

    const-string/jumbo v5, "key_not_sync_read_conversation"

    aput-object v5, v4, v11

    invoke-virtual {v0, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->b()V

    return-void
.end method

.method private b(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 389
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    return-void

    .line 391
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 392
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->z(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_0

    .line 395
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->j:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleSyncGroup(JJI)Z

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleSyncConversation(Ljava/lang/String;JI)Z

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 445
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->e()Ljava/util/List;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 449
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/jni/PhoneControllerWrapper;->handleGroupLeave(J)Z

    goto :goto_0

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/c;->i:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDeletedToken()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDeletedToken()J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleSyncConversation(Ljava/lang/String;JI)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/controller/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->a()V

    return-void
.end method


# virtual methods
.method public onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/viber/voip/messages/controller/a/c;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZ)V

    .line 115
    return-void
.end method

.method public onChangeGroupSettingsReply(JZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/viber/voip/messages/controller/a/c;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZ)V

    .line 120
    return-void
.end method

.method public onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z
    .locals 9
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
    .line 274
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 275
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, p12

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_0

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/viber/voip/messages/controller/a/c;->a(ZJIJI)V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1, p5, p6}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendGroupChangedAck(J)V

    .line 283
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 274
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGroupLeave(JJI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->i:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->i(JJ)I

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->init()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v5, 0x2

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleSyncGroup(JJI)Z

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->e(J)I

    goto :goto_0
.end method

.method public onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 153
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_1

    move v3, v1

    .line 154
    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    .line 155
    :goto_1
    if-nez p5, :cond_0

    .line 159
    :cond_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lcom/viber/jni/CGetUserDetails;

    invoke-direct {v0, v4, p4, p3, v1}, Lcom/viber/jni/CGetUserDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/viber/voip/messages/controller/a/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/controller/a/f;-><init>(Lcom/viber/voip/messages/controller/a/c;J)V

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/a;->a(Lcom/viber/jni/CGetUserDetails;Lcom/viber/voip/contacts/c/v;)V

    .line 179
    :goto_2
    return v2

    :cond_1
    move v3, v2

    .line 153
    goto :goto_0

    :cond_2
    move v0, v2

    .line 154
    goto :goto_1

    .line 166
    :cond_3
    if-eqz v0, :cond_4

    .line 167
    invoke-static {p3}, Lcom/viber/voip/user/UserData;->setName(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendUpdateSelfUserDetailsAck(J)Z

    goto :goto_2

    .line 169
    :cond_4
    if-eqz v3, :cond_5

    .line 170
    new-instance v0, Lcom/viber/jni/CGetUserDetails;

    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, p4, v3, v1}, Lcom/viber/jni/CGetUserDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/viber/voip/messages/controller/a/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/controller/a/g;-><init>(Lcom/viber/voip/messages/controller/a/c;J)V

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/a;->a(Lcom/viber/jni/CGetUserDetails;Lcom/viber/voip/contacts/c/v;)V

    goto :goto_2

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendUpdateSelfUserDetailsAck(J)Z

    goto :goto_2
.end method

.method public onMuteGroupReply(JZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isMuteNotifications()Z

    move-result v1

    if-ne v1, p3, :cond_1

    .line 137
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->g:Lcom/viber/voip/messages/controller/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "key_not_sync_mute_notification"

    aput-object v5, v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/viber/voip/messages/controller/c/a;->a(J[Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->b()V

    goto :goto_0
.end method

.method public onServiceStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 184
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->c()V

    .line 186
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->a()V

    .line 187
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/c;->b()V

    .line 189
    :cond_0
    return-void
.end method

.method public onSyncConversation(Ljava/lang/String;JI)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v4

    move-object v0, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/c;->a(ZJIJI)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendSyncConversationAck(Ljava/lang/String;JI)Z

    .line 261
    return v1
.end method

.method public onSyncConversationReply(Ljava/lang/String;JI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/c;->a(JJI)V

    .line 320
    :cond_0
    return-void
.end method

.method public onSyncGroup(JJI)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v4

    move-object v0, p0

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/c;->a(ZJIJI)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendSyncGroupAck(JJI)Z

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncGroupReply(JJI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 324
    if-eqz p5, :cond_0

    if-ne p5, v0, :cond_3

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->i:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v6, v0

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/c;->a(JJI)V

    .line 332
    :cond_1
    if-eqz v6, :cond_2

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->e(J)I

    .line 335
    :cond_2
    return-void

    .line 324
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0
.end method

.method public onSyncMessages([J[J)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 208
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    move v1, v0

    .line 209
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    move v2, v0

    .line 211
    :goto_1
    if-eqz v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->f([J)Ljava/util/Map;

    move-result-object v4

    .line 214
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/controller/a/c;->a([J)V

    .line 215
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->a([J)I

    .line 216
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 218
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/viber/voip/messages/controller/c/as;->w(J)V

    .line 219
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v7, v8, v1}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 220
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->d:Lcom/viber/voip/e/u;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/viber/voip/e/u;->d(J)V

    goto :goto_2

    :cond_0
    move v1, v3

    .line 208
    goto :goto_0

    :cond_1
    move v2, v3

    .line 209
    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/messages/controller/c/e;->e(Ljava/util/Set;Z)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/messages/controller/c/e;->b(Ljava/util/Set;Z)V

    .line 226
    :cond_3
    if-eqz v2, :cond_5

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->f([J)Ljava/util/Map;

    move-result-object v2

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->d([J)I

    .line 229
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 231
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->d:Lcom/viber/voip/e/u;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/viber/voip/e/u;->d(J)V

    goto :goto_3

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/util/Set;Z)V

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendSyncMessagesAck([J[J)Z

    .line 237
    return v3
.end method

.method public onSyncMessagesReply(I[JI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->f([J)Ljava/util/Map;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p2}, Lcom/viber/voip/messages/controller/c/as;->b([J)I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p2}, Lcom/viber/voip/messages/controller/c/as;->c([J)I

    move-result v1

    if-lez v1, :cond_3

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/c;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/controller/c/e;->b(Ljava/util/Set;Z)V

    .line 201
    :cond_3
    return-void
.end method

.method public onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    return-void
.end method

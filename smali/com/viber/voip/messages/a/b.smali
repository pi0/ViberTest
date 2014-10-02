.class public Lcom/viber/voip/messages/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/a/a;


# static fields
.field private static a:Lcom/viber/voip/messages/a/b;

.field private static final h:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/controller/c/e;

.field private c:Lcom/viber/voip/messages/controller/c/as;

.field private d:Landroid/os/Handler;

.field private e:Lcom/viber/voip/messages/controller/dh;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 410
    const-class v0, Lcom/viber/voip/messages/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/a/b;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/viber/voip/messages/a/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/a/c;-><init>(Lcom/viber/voip/messages/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/messages/a/b;->e:Lcom/viber/voip/messages/controller/dh;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/a/b;->f:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    .line 88
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    .line 89
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/a/b;->b:Lcom/viber/voip/messages/controller/c/e;

    .line 90
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/a/b;->d:Landroid/os/Handler;

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->b:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/a/b;->e:Lcom/viber/voip/messages/controller/dh;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/as;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    return-object v0
.end method

.method private a(Landroid/content/res/Resources;ZLjava/util/Collection;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/messages/conversation/ui/ct;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 154
    const v0, 0x7f0c045d

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ct;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ct;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ct;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ct;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 158
    const v1, 0x7f0c045e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ct;

    .line 161
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ct;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/viber/voip/messages/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ct;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ct;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const v0, 0x7f0c045f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    const v0, 0x7f0c045c

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/a/b;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/a/b;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/a/b;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/a/b;->c(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/a/b;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/a/b;->a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 3
    .parameter

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveToCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/a/b;->a(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 237
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 240
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_0
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 247
    monitor-exit p0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->f(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 275
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 278
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_6

    .line 279
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b;

    .line 281
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->l()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 282
    const/4 v1, 0x0

    move-object v2, v1

    .line 285
    :goto_1
    if-nez v2, :cond_1

    .line 286
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 287
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 288
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b;

    move-object v2, v1

    .line 292
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->k()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, ""

    .line 294
    :goto_2
    if-nez v2, :cond_4

    .line 295
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactId(J)V

    .line 296
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativePhotoId(J)V

    .line 297
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativeContactId(J)V

    .line 298
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactName(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 301
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 302
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 292
    :cond_3
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->k()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 303
    :cond_4
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v5

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativePhotoId()J

    move-result-wide v5

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->f()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativeContactId()J

    move-result-wide v5

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 309
    :cond_5
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactId(J)V

    .line 310
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->f()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativePhotoId(J)V

    .line 311
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativeContactId(J)V

    .line 312
    invoke-interface {v2}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactName(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 316
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 317
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    :cond_6
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 321
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 322
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b;

    .line 324
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->k()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    .line 326
    :goto_3
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactId(J)V

    .line 327
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->f()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativePhotoId(J)V

    .line 328
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 332
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 333
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 324
    :cond_7
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->k()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 338
    :cond_8
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->d(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/viber/voip/messages/a/b;->b:Lcom/viber/voip/messages/controller/c/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/controller/c/e;->g(Ljava/util/Set;Z)V

    .line 343
    :cond_9
    return-void

    :cond_a
    move-object v2, v1

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/e;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->b:Lcom/viber/voip/messages/controller/c/e;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/a/b;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_0
    return-object p1
.end method

.method private c(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/viber/voip/messages/a/g;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/a/g;-><init>(Lcom/viber/voip/messages/a/b;Ljava/util/Set;)V

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/j;)V

    .line 265
    return-void
.end method

.method public static d()Lcom/viber/voip/messages/a/a;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/viber/voip/messages/a/b;->a:Lcom/viber/voip/messages/a/b;

    if-nez v0, :cond_1

    .line 75
    const-class v1, Lcom/viber/voip/messages/a/b;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/a/b;->a:Lcom/viber/voip/messages/a/b;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/viber/voip/messages/a/b;

    invoke-direct {v0}, Lcom/viber/voip/messages/a/b;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/a/b;->a:Lcom/viber/voip/messages/a/b;

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/a/b;->a:Lcom/viber/voip/messages/a/b;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;IIIJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/a/b;->a(Landroid/content/Context;IIIJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;IIIJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 387
    invoke-virtual {v0, p5, p6}, Lcom/viber/voip/messages/controller/c/as;->f(J)Ljava/util/List;

    move-result-object v0

    .line 390
    if-eqz p7, :cond_0

    .line 391
    invoke-virtual {p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 394
    if-eqz p7, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 395
    :cond_2
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/Uri;

    .line 400
    const v2, 0x7f0202cb

    move v0, p2

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/extras/image/h;->a(ILandroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(JZ)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_0

    .line 366
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 369
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    .line 370
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 371
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->g(J)Ljava/util/Set;

    move-result-object v0

    .line 372
    iget-object v2, p0, Lcom/viber/voip/messages/a/b;->b:Lcom/viber/voip/messages/controller/c/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/messages/controller/c/e;->g(Ljava/util/Set;Z)V

    .line 375
    :cond_0
    return-object v1

    .line 366
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_0

    .line 349
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 353
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    .line 354
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->g(J)Ljava/util/Set;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcom/viber/voip/messages/a/b;->b:Lcom/viber/voip/messages/controller/c/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/messages/controller/c/e;->g(Ljava/util/Set;Z)V

    .line 359
    :cond_0
    return-object v1

    .line 349
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(Landroid/content/res/Resources;Lcom/viber/voip/messages/conversation/ui/ct;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/messages/a/b;->a(Landroid/content/res/Resources;ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/messages/conversation/ui/ct;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/viber/voip/messages/a/b;->a(Landroid/content/res/Resources;ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(ZI)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/a/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/a/d;-><init>(Lcom/viber/voip/messages/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/a/b;->c(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_0
    return-object p1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/a/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/a/e;-><init>(Lcom/viber/voip/messages/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 2
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
    .line 229
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->c:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/a/b;->c(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/a/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/a/f;-><init>(Lcom/viber/voip/messages/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

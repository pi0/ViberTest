.class public Lcom/viber/voip/contacts/c/f/b/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/contacts/c/f/b/u;


# instance fields
.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/viber/voip/contacts/c/f/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/viber/voip/ViberApplication;

.field private f:Lcom/viber/voip/contacts/c/e/b;

.field private g:Landroid/content/ContentResolver;

.field private h:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/u;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->c:Ljava/util/Queue;

    .line 113
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/u;->e:Lcom/viber/voip/ViberApplication;

    .line 114
    invoke-virtual {p1}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    .line 115
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/d;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Z)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->h:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 116
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->f:Lcom/viber/voip/contacts/c/e/b;

    .line 117
    return-void
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b/u;
    .locals 1
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/u;->b:Lcom/viber/voip/contacts/c/f/b/u;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/u;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b/u;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/u;->b:Lcom/viber/voip/contacts/c/f/b/u;

    .line 109
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/u;->b:Lcom/viber/voip/contacts/c/f/b/u;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/u;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->c:Ljava/util/Queue;

    return-object v0
.end method

.method private a(Landroid/content/ContentProviderOperation;Landroid/content/ContentProviderOperation;Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderOperation;",
            "Landroid/content/ContentProviderOperation;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;ZZ",
            "Lcom/viber/voip/contacts/c/f/b/ab;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 513
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 514
    if-eqz p1, :cond_0

    .line 516
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_1
    if-eqz p5, :cond_2

    .line 527
    sget-object v0, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "clear=1"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_2
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "viber"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "recently_joined_date"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/viber/voip/contacts/c/f/b/u;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    if-eqz p4, :cond_3

    .line 538
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "viber"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "joined_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/viber/voip/contacts/c/f/b/u;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->f:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x634

    const-string/jumbo v2, "com.viber.provider.vibercontacts"

    new-instance v5, Lcom/viber/voip/contacts/c/f/b/y;

    invoke-direct {v5, p0, p3, p6}, Lcom/viber/voip/contacts/c/f/b/y;-><init>(Lcom/viber/voip/contacts/c/f/b/u;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/b/ab;)V

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;)V

    .line 573
    return-void

    .line 542
    :cond_3
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "viber"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/viber/voip/contacts/c/f/b/u;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/u;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/b/u;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/b/u;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->e:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :goto_0
    return v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 392
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :catch_1
    move-exception v0

    .line 389
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, " IN "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phonebookdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "canonized_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "vibernumbers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=0))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, " NOT IN "

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_id IN (SELECT contact_id FROM  phonebookdata WHERE data2=? AND mime_type=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    .line 237
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 244
    return-object v7

    .line 241
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/b/a/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 122
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canonized_number IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 129
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/o;

    .line 132
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 139
    return-object v7

    .line 136
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 163
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "canonized_number"

    aput-object v4, v2, v3

    const-string/jumbo v3, "clear=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 170
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 179
    return-object v7

    .line 176
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->f:Lcom/viber/voip/contacts/c/e/b;

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "COUNT(*)"

    aput-object v5, v4, v1

    const-string/jumbo v5, "recently_joined_date<>0"

    new-instance v8, Lcom/viber/voip/contacts/c/f/b/z;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/b/z;-><init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ab;)V

    move-object v6, v2

    move-object v7, v2

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 590
    return-void
.end method

.method public a(Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/viber/voip/contacts/c/f/b/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v7, p0, Lcom/viber/voip/contacts/c/f/b/u;->c:Ljava/util/Queue;

    monitor-enter v7

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->d:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/b/u;->c:Ljava/util/Queue;

    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ag;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/b/ag;-><init>(Lcom/viber/voip/contacts/c/f/b/u;Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 507
    :goto_0
    monitor-exit v7

    .line 508
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->d:Z

    .line 490
    new-instance v6, Lcom/viber/voip/contacts/c/f/b/x;

    invoke-direct {v6, p0, p4}, Lcom/viber/voip/contacts/c/f/b/x;-><init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ab;)V

    .line 505
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/c/f/b/u;->a(Landroid/content/ContentProviderOperation;Landroid/content/ContentProviderOperation;Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/ad;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " AND phonebookcontact.contact_hash IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->h:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/u;->f:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/f/b/w;

    invoke-direct {v2, p0, p3}, Lcom/viber/voip/contacts/c/f/b/w;-><init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ad;)V

    const/16 v3, 0x630

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phonebookdata.mime_type=0 AND phonebookcontact.has_number=1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    .line 468
    return-void

    .line 435
    :cond_0
    const-string/jumbo v0, ""

    move-object v4, v0

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/af;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 404
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->f:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x630

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "DISTINCT contact_hash"

    aput-object v5, v4, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "has_number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/viber/voip/contacts/c/f/b/v;

    invoke-direct {v8, p0, p1, p3}, Lcom/viber/voip/contacts/c/f/b/v;-><init>(Lcom/viber/voip/contacts/c/f/b/u;ZLcom/viber/voip/contacts/c/f/b/af;)V

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 432
    return-void

    .line 404
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/ViberApplication;)I
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 323
    .line 325
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data2"

    aput-object v4, v2, v3

    const-string/jumbo v3, "mime_type=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 332
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 335
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {p1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    sget-object v2, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "data2"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :cond_2
    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 354
    :try_start_2
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "canonized_number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 357
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 360
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {p1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 368
    sget-object v2, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "canonized_number"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 376
    :cond_5
    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 379
    invoke-virtual {p0, v7}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/ArrayList;)I

    .line 380
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 350
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    .line 376
    :catchall_1
    move-exception v0

    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    .line 350
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method

.method public b(Ljava/util/Set;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/c/f/b/ae;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 248
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/provider/contacts/f;->b:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "phonebookdata._id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "phonebookdata.data2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "phonebookcontact.display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data2 IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 258
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ae;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/b/ae;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/f/b/v;)V

    .line 261
    iget-object v1, v0, Lcom/viber/voip/contacts/c/f/b/ae;->b:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :cond_1
    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 268
    return-object v7

    .line 265
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method

.method public b()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 183
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "data2"

    aput-object v4, v2, v3

    const-string/jumbo v3, "clear=1 AND mime_type=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 190
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 199
    return-object v7

    .line 196
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->f:Lcom/viber/voip/contacts/c/e/b;

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "COUNT(*)"

    aput-object v5, v4, v1

    const-string/jumbo v5, "has_number=1"

    new-instance v8, Lcom/viber/voip/contacts/c/f/b/aa;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/b/aa;-><init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ab;)V

    move-object v6, v2

    move-object v7, v2

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 607
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v3, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "canonized_number=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 203
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recently_joined_date>0"

    const/4 v4, 0x0

    const-string/jumbo v5, "recently_joined_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    .line 213
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 220
    return-object v7

    .line 217
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public c(Ljava/util/Set;)Ljava/util/Map;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/c/f/b/ac;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 272
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/provider/contacts/d;->g:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "phonebookcontact._id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "phonebookcontact.version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "phonebookrawcontact._id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "phonebookcontact.display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phonebookcontact.display_name IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 281
    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ac;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/contacts/c/f/b/ac;-><init>(JIJLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/v;)V

    .line 284
    iget-object v1, v0, Lcom/viber/voip/contacts/c/f/b/ac;->d:Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :cond_1
    invoke-static {v8}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 291
    return-object v9

    .line 288
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 300
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "canonized_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 306
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 313
    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/o;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/o;-><init>()V

    .line 315
    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/b/b/a/o;->a(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v2, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/o;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 319
    :cond_0
    return v7

    .line 310
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v6}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/u;->g:Landroid/content/ContentResolver;

    sget-object v1, Lcom/viber/provider/contacts/d;->i:Landroid/net/Uri;

    const-string/jumbo v2, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE clear=1)"

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

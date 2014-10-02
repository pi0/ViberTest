.class public Lcom/viber/voip/contacts/c/f/b/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/viber/voip/contacts/c/f/b/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/ah;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    .line 114
    return-void
.end method

.method private declared-synchronized a()V
    .locals 5

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    sget-object v1, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "clear=1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "viber"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "recently_joined_date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/contacts/c/f/b/u;->a(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "viber"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/contacts/c/f/b/u;->a(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "viber"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "joined_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "viber=1 AND joined_date=0"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/ArrayList;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/viber/voip/contacts/c/f/b/c;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/f/b/c;",
            ">;>;",
            "Lcom/viber/voip/contacts/c/f/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p2}, Lcom/viber/voip/contacts/c/f/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 352
    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 354
    invoke-virtual {p2}, Lcom/viber/voip/contacts/c/f/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/f/b/e;)Lcom/viber/voip/contacts/c/f/b/aj;
    .locals 15
    .parameter

    .prologue
    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "clear"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    sget-object v1, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "clear"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data2 IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->c()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/ArrayList;)I

    .line 257
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 258
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/u;->b()Ljava/util/Set;

    move-result-object v0

    move-object v3, v0

    .line 261
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/b/u;->b(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v11

    .line 265
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/b/u;->c(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v12

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/b/c;

    .line 268
    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/c;->b()Lcom/viber/voip/contacts/c/f/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/contacts/c/f/b/d;->b:Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/c/f/b/ae;

    .line 269
    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/c/f/b/ac;

    .line 271
    if-nez v2, :cond_4

    const/4 v4, 0x1

    move v6, v4

    .line 272
    :goto_2
    if-nez v1, :cond_5

    const/4 v4, 0x1

    move v5, v4

    .line 273
    :goto_3
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/viber/voip/contacts/c/f/b/ae;->c:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/viber/voip/contacts/c/f/b/ae;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/c;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    .line 275
    :goto_4
    if-eqz v5, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/c;->b()Lcom/viber/voip/contacts/c/f/b/d;

    move-result-object v14

    iget-object v14, v14, Lcom/viber/voip/contacts/c/f/b/d;->b:Ljava/lang/String;

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 280
    invoke-direct {p0, v10, v0}, Lcom/viber/voip/contacts/c/f/b/ah;->a(Ljava/util/Map;Lcom/viber/voip/contacts/c/f/b/c;)V

    goto :goto_1

    .line 259
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    goto :goto_0

    .line 271
    :cond_4
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 272
    :cond_5
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3

    .line 273
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 281
    :cond_7
    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    .line 282
    invoke-direct {p0, v10, v0}, Lcom/viber/voip/contacts/c/f/b/ah;->a(Ljava/util/Map;Lcom/viber/voip/contacts/c/f/b/c;)V

    .line 284
    sget-object v0, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/viber/voip/contacts/c/f/b/ae;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 286
    :cond_8
    if-eqz v4, :cond_9

    if-nez v6, :cond_9

    .line 287
    sget-object v0, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v4, "contact_id"

    iget-wide v5, v2, Lcom/viber/voip/contacts/c/f/b/ac;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v4, "raw_id"

    iget-wide v5, v2, Lcom/viber/voip/contacts/c/f/b/ac;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/viber/voip/contacts/c/f/b/ae;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "version"

    iget v4, v2, Lcom/viber/voip/contacts/c/f/b/ac;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v2, Lcom/viber/voip/contacts/c/f/b/ac;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 296
    :cond_9
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 297
    new-instance v1, Lcom/viber/voip/contacts/b/b/k;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/c;->b()Lcom/viber/voip/contacts/c/f/b/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/contacts/b/b/k;-><init>(Lcom/viber/voip/contacts/c/f/b/d;)V

    .line 298
    iget-wide v4, v2, Lcom/viber/voip/contacts/c/f/b/ac;->a:J

    invoke-virtual {v1, v4, v5}, Lcom/viber/voip/contacts/b/b/k;->a(J)V

    .line 299
    iget-wide v4, v2, Lcom/viber/voip/contacts/c/f/b/ac;->c:J

    invoke-virtual {v1, v4, v5}, Lcom/viber/voip/contacts/b/b/k;->b(J)V

    .line 301
    sget-object v0, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/k;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "version"

    iget v4, v2, Lcom/viber/voip/contacts/c/f/b/ac;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v2, Lcom/viber/voip/contacts/c/f/b/ac;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 309
    :cond_a
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    new-instance v6, Lcom/viber/voip/contacts/b/b/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v6, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 314
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/d;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 318
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/d;->h()Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v0

    .line 319
    sget-object v2, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v6, "contact_id"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    .line 323
    sget-object v6, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/l;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v6, "raw_id"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v6, "contact_id"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 329
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/contacts/c/f/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 330
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/u;->d()V

    .line 332
    sget-object v0, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "clear=1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "viber_out"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.int_data2=1 AND phonebookdata.mime_type=0)"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_d
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id NOT IN (SELECT contact_id FROM phonebookdata)"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id NOT IN (SELECT contact_id FROM phonebookdata)"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0, v9}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/ArrayList;)I

    .line 347
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v8, v3, v1}, Lcom/viber/voip/contacts/c/f/b/aj;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/b/ai;)V

    return-object v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/contacts/c/f/b/f;)Lcom/viber/voip/contacts/c/f/b/ak;
    .locals 14
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 119
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 121
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 122
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-virtual {p1}, Lcom/viber/voip/contacts/c/f/b/f;->f()Ljava/util/Map;

    move-result-object v9

    .line 125
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 127
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/viber/voip/contacts/c/f/b/f;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "clear"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    sget-object v1, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "clear"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "canonized_number IN ("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, ")"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    sget-object v0, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v12, "photo"

    invoke-virtual {v0, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v2, "canonized_number=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v9, Lcom/viber/voip/contacts/b/b/a/o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v9, v1, v0}, Lcom/viber/voip/contacts/b/b/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/viber/voip/contacts/b/b/a/o;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0, v10}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/ArrayList;)I

    .line 169
    invoke-virtual {p1}, Lcom/viber/voip/contacts/c/f/b/f;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/u;->a()Ljava/util/Set;

    move-result-object v2

    .line 171
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/ah;->a()V

    move v1, v7

    .line 175
    :goto_2
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ak;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/c/f/b/ak;-><init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/viber/voip/contacts/c/f/b/ai;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    move-object v2, v6

    move v1, v8

    goto :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/viber/voip/contacts/c/f/b/ak;
    .locals 7
    .parameter

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 180
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/b/u;->b(Ljava/lang/String;)Z

    .line 183
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/ah;->a()V

    .line 185
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ak;

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/c/f/b/ak;-><init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/viber/voip/contacts/c/f/b/ai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;J)Lcom/viber/voip/contacts/c/f/b/ak;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 190
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 191
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/b/u;->c(Ljava/lang/String;)Z

    .line 194
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/ah;->a()V

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/u;->c()Ljava/util/List;

    move-result-object v4

    .line 199
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 203
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    .line 204
    sget-object v7, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string/jumbo v8, "recently_joined_date"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string/jumbo v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/a;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    .line 212
    if-lez v0, :cond_1

    :goto_1
    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 213
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    .line 214
    sget-object v5, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v7, "recently_joined_date"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/a;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/ah;->b:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/ArrayList;)I

    .line 219
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ak;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/contacts/c/f/b/ak;-><init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/b/ai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

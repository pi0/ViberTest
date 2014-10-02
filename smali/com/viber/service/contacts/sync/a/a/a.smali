.class public abstract Lcom/viber/service/contacts/sync/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/service/contacts/sync/a/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/viber/service/contacts/sync/c/b;

.field private f:J

.field private g:Lcom/viber/service/contacts/sync/a/a/m;

.field private h:Lcom/viber/service/contacts/sync/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/service/contacts/sync/c/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/service/contacts/sync/a/a/a;-><init>(Landroid/content/Context;Lcom/viber/service/contacts/sync/c/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/service/contacts/sync/c/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/viber/service/contacts/sync/a/a/a;->c:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/viber/service/contacts/sync/a/a/a;->d:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/viber/service/contacts/sync/a/a/a;->e:Lcom/viber/service/contacts/sync/c/b;

    .line 62
    new-instance v0, Lcom/viber/service/contacts/sync/a/c;

    invoke-direct {v0, p0}, Lcom/viber/service/contacts/sync/a/c;-><init>(Lcom/viber/service/contacts/sync/a/b;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->h:Lcom/viber/service/contacts/sync/a/c;

    .line 63
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/service/contacts/sync/a/a/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/k;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/k;->b:[Ljava/lang/String;

    const-string/jumbo v3, "phonebookcontact.has_number=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lcom/viber/service/contacts/sync/a/a/l;

    invoke-direct {v0, v1}, Lcom/viber/service/contacts/sync/a/a/l;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 168
    return-object v7

    .line 166
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

.method private a(Landroid/content/Context;Lcom/viber/service/contacts/sync/a/a/m;)Ljava/util/Set;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/service/contacts/sync/a/a/m;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 377
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 381
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/c;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/c;->b:[Ljava/lang/String;

    const-string/jumbo v3, "deleted=0 AND account_type=? AND sourceid IN (%s) "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p2, Lcom/viber/service/contacts/sync/a/a/m;->d:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 383
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v2, p2, Lcom/viber/service/contacts/sync/a/a/m;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 384
    iget-object v0, p2, Lcom/viber/service/contacts/sync/a/a/m;->c:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 397
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 400
    return-object v7

    .line 397
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v13, Lcom/viber/service/contacts/a;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/viber/service/contacts/a;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    const/4 v8, 0x0

    .line 214
    const/4 v7, 0x0

    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v11, 0x0

    .line 219
    :try_start_0
    sget-object v2, Lcom/viber/service/contacts/sync/a/a/g;->a:Landroid/net/Uri;

    sget-object v3, Lcom/viber/service/contacts/sync/a/a/g;->b:[Ljava/lang/String;

    const-string/jumbo v4, "phonebookcontact._id IN (SELECT phonebookrawcontact.contact_id FROM phonebookrawcontact WHERE phonebookrawcontact._id IN (%s)) AND phonebookdata.mime_type=0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "phonebookcontact._id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 224
    if-eqz v12, :cond_8

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v7, v8

    .line 227
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 229
    if-eqz v7, :cond_5

    iget-wide v1, v7, Lcom/viber/service/contacts/sync/a/a/h;->b:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object v6, v13

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 230
    invoke-direct/range {v1 .. v9}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;JLjava/lang/String;Lcom/viber/service/contacts/a;Lcom/viber/service/contacts/sync/a/a/h;Ljava/util/Map;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    const/4 v1, 0x0

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/service/contacts/sync/a/a/a;->h:Lcom/viber/service/contacts/sync/a/c;

    invoke-virtual {v2}, Lcom/viber/service/contacts/sync/a/c;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 237
    const/4 v10, 0x1

    .line 255
    :goto_0
    if-eqz v7, :cond_1

    if-nez v10, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object v6, v13

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 256
    invoke-direct/range {v1 .. v9}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;JLjava/lang/String;Lcom/viber/service/contacts/a;Lcom/viber/service/contacts/sync/a/a/h;Ljava/util/Map;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move v1, v10

    .line 260
    :goto_1
    invoke-static {v12}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 263
    if-nez v1, :cond_2

    invoke-virtual {v13}, Lcom/viber/service/contacts/a;->b()Ljava/util/List;

    .line 265
    :cond_2
    return-void

    :cond_3
    move v1, v10

    .line 242
    :cond_4
    const/4 v7, 0x0

    move v10, v1

    .line 245
    :cond_5
    if-eqz v7, :cond_6

    :try_start_2
    iget-wide v1, v7, Lcom/viber/service/contacts/sync/a/a/h;->b:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_7

    .line 246
    :cond_6
    new-instance v1, Lcom/viber/service/contacts/sync/a/a/h;

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-wide v2, v14

    invoke-direct/range {v1 .. v7}, Lcom/viber/service/contacts/sync/a/a/h;-><init>(JJILjava/lang/String;)V

    .line 249
    add-int/lit8 v10, v10, 0x1

    move-object v7, v1

    .line 251
    :cond_7
    invoke-virtual {v7, v12}, Lcom/viber/service/contacts/sync/a/a/h;->a(Landroid/database/Cursor;)V

    .line 253
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    move v10, v11

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    move-object v2, v7

    :goto_2
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v12

    goto :goto_2

    :cond_8
    move v1, v11

    goto :goto_1
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Lcom/viber/service/contacts/a;Lcom/viber/service/contacts/sync/a/a/h;Ljava/util/Map;Z)Z
    .locals 13
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
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcom/viber/service/contacts/a;",
            "Lcom/viber/service/contacts/sync/a/a/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p8, :cond_1

    .line 271
    move-object/from16 v0, p6

    iget-wide v1, v0, Lcom/viber/service/contacts/sync/a/a/h;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    .line 272
    if-eqz v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->e:Lcom/viber/service/contacts/sync/c/b;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/viber/service/contacts/sync/a/a/h;->e:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/viber/service/contacts/sync/a/a/a;->a(Lcom/viber/service/contacts/sync/a/a/h;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/viber/service/contacts/sync/a/a/h;->g:Ljava/util/Set;

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/viber/service/contacts/sync/a/a/h;->f:Ljava/util/Set;

    move-object v2, p1

    move-object/from16 v3, p5

    invoke-interface/range {v1 .. v9}, Lcom/viber/service/contacts/sync/c/b;->a(Landroid/content/Context;Lcom/viber/service/contacts/a;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 281
    :cond_0
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/viber/service/contacts/a;->a()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 282
    invoke-virtual/range {p5 .. p5}, Lcom/viber/service/contacts/a;->b()Ljava/util/List;

    .line 283
    const/4 v1, 0x1

    .line 285
    :goto_1
    return v1

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->e:Lcom/viber/service/contacts/sync/c/b;

    move-object/from16 v0, p6

    iget-wide v4, v0, Lcom/viber/service/contacts/sync/a/a/h;->a:J

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/viber/service/contacts/sync/a/a/h;->e:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/viber/service/contacts/sync/a/a/a;->a(Lcom/viber/service/contacts/sync/a/a/h;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/viber/service/contacts/sync/a/a/h;->g:Ljava/util/Set;

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/viber/service/contacts/sync/a/a/h;->f:Ljava/util/Set;

    move-object v2, p1

    move-object/from16 v3, p5

    move-wide v10, p2

    move-object/from16 v12, p4

    invoke-interface/range {v1 .. v12}, Lcom/viber/service/contacts/sync/c/b;->a(Landroid/content/Context;Lcom/viber/service/contacts/a;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;JLjava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/e;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/e;->b:[Ljava/lang/String;

    const-string/jumbo v3, "account_type=? AND sourceid NOT IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 305
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    .line 307
    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 310
    :goto_1
    return v0

    :cond_0
    move v0, v7

    .line 305
    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    move v0, v6

    .line 310
    goto :goto_1

    .line 307
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private b(Landroid/content/Context;Lcom/viber/service/contacts/sync/a/a/m;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    new-instance v11, Lcom/viber/service/contacts/a;

    invoke-direct {v11, p1}, Lcom/viber/service/contacts/a;-><init>(Landroid/content/Context;)V

    .line 412
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/i;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/i;->b:[Ljava/lang/String;

    const-string/jumbo v3, "account_type=? AND (((mimetype=? OR mimetype=? OR mimetype=?) AND data1 NOT IN (%s)) OR (mimetype=? AND data1 IN (%s)))"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p2, Lcom/viber/service/contacts/sync/a/a/m;->f:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, p2, Lcom/viber/service/contacts/sync/a/a/m;->f:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    aput-object v8, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 419
    if-eqz v10, :cond_3

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 422
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 423
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 425
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 426
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 428
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->e:Lcom/viber/service/contacts/sync/c/b;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    move-object v2, v11

    invoke-interface/range {v0 .. v8}, Lcom/viber/service/contacts/sync/c/b;->a(Landroid/content/Context;Lcom/viber/service/contacts/a;JJLjava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v11}, Lcom/viber/service/contacts/a;->a()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 431
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->h:Lcom/viber/service/contacts/sync/a/c;

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a/c;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 440
    :goto_0
    invoke-static {v10}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 442
    invoke-virtual {v11}, Lcom/viber/service/contacts/a;->b()Ljava/util/List;

    .line 444
    return v0

    .line 435
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Lcom/viber/service/contacts/a;->b()Ljava/util/List;

    .line 437
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/e;->a:Landroid/net/Uri;

    const-string/jumbo v2, "account_type=? AND sourceid NOT IN (%s)"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 183
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/j;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/j;->b:[Ljava/lang/String;

    sget-object v3, Lcom/viber/service/contacts/sync/a/a/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 186
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 195
    return-object v7

    .line 192
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

.method private c(Landroid/content/Context;Lcom/viber/service/contacts/sync/a/a/m;)Ljava/util/Map;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/service/contacts/sync/a/a/m;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 451
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 455
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/f;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/f;->b:[Ljava/lang/String;

    const-string/jumbo v3, "deleted=0 AND account_type=? AND (sync1 NOT IN (%s))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p2, Lcom/viber/service/contacts/sync/a/a/m;->e:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 457
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 461
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 466
    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 469
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 472
    return-object v7

    .line 469
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 463
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/b;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/b;->b:[Ljava/lang/String;

    const-string/jumbo v3, "account_type=? AND dirty=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 327
    if-eqz v1, :cond_1

    .line 328
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    .line 330
    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 333
    :goto_1
    return v0

    :cond_0
    move v0, v7

    .line 328
    goto :goto_0

    .line 330
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    move v0, v6

    .line 333
    goto :goto_1

    .line 330
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private d(Landroid/content/Context;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 346
    const-string/jumbo v2, "dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    sget-object v2, Lcom/viber/service/contacts/sync/a/a/b;->a:Landroid/net/Uri;

    const-string/jumbo v3, "account_type=? AND dirty=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    .line 488
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-wide v6

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 498
    :try_start_0
    sget-object v1, Lcom/viber/service/contacts/sync/a/a/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/service/contacts/sync/a/a/d;->b:[Ljava/lang/String;

    const-string/jumbo v3, "account_name=? AND account_type=? AND title=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    iget-object v9, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 500
    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    .line 502
    :goto_1
    invoke-static {v3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 506
    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    .line 509
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 510
    const-string/jumbo v2, "account_name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v2, "account_type"

    iget-object v3, p0, Lcom/viber/service/contacts/sync/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 514
    const-string/jumbo v2, "group_is_read_only"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 518
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    :cond_2
    move-wide v6, v1

    .line 525
    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-wide v1, v6

    goto :goto_1
.end method

.method protected abstract a(Lcom/viber/service/contacts/sync/a/a/h;)Ljava/lang/String;
.end method

.method protected abstract a(Lcom/viber/service/contacts/sync/a/a/l;)Ljava/lang/String;
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->h:Lcom/viber/service/contacts/sync/a/c;

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a/c;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/service/contacts/sync/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->f:J

    .line 83
    new-instance v0, Lcom/viber/service/contacts/sync/a/a/m;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/viber/service/contacts/sync/a/a/a;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/service/contacts/sync/a/a/m;-><init>(Lcom/viber/service/contacts/sync/a/a/a;Ljava/util/List;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    .line 86
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    iget-object v1, v1, Lcom/viber/service/contacts/sync/a/a/m;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    iget-object v1, v1, Lcom/viber/service/contacts/sync/a/a/m;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/viber/service/contacts/sync/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()V
    .locals 8

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    invoke-direct {p0, v0, v1}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;Lcom/viber/service/contacts/sync/a/a/m;)Ljava/util/Set;

    move-result-object v5

    .line 106
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/viber/service/contacts/sync/a/a/a;->f:J

    iget-object v4, p0, Lcom/viber/service/contacts/sync/a/a/a;->c:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;JLjava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/viber/service/contacts/sync/a/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/viber/service/contacts/sync/a/a/a;->d(Landroid/content/Context;)I

    .line 141
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->f:J

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    .line 143
    return-void
.end method

.method public f()V
    .locals 8

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    invoke-direct {p0, v0, v1}, Lcom/viber/service/contacts/sync/a/a/a;->c(Landroid/content/Context;Lcom/viber/service/contacts/sync/a/a/m;)Ljava/util/Map;

    move-result-object v6

    .line 121
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/viber/service/contacts/sync/a/a/a;->f:J

    iget-object v4, p0, Lcom/viber/service/contacts/sync/a/a/a;->c:Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/viber/service/contacts/sync/a/a/a;->a(Landroid/content/Context;JLjava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a/a/a;->g:Lcom/viber/service/contacts/sync/a/a/m;

    invoke-direct {p0, v0, v1}, Lcom/viber/service/contacts/sync/a/a/a;->b(Landroid/content/Context;Lcom/viber/service/contacts/sync/a/a/m;)I

    goto :goto_0
.end method

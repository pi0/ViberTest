.class public Lcom/viber/voip/i/a/c;
.super Landroid/database/sqlite/SQLiteQueryBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 166
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 168
    add-int/lit8 v2, v0, -0x1

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-object v1
.end method


# virtual methods
.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 82
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, ""

    .line 147
    :goto_0
    const/4 v1, 0x4

    invoke-static {p4, v1}, Lcom/viber/voip/i/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {p2}, Lcom/viber/voip/i/a;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    const-string/jumbo v3, " SELECT  %s, 1 AS alias_union_type, 0 AS recently_joined FROM phonebookcontact LEFT OUTER JOIN phonebookdata ON (phonebookcontact._id=phonebookdata.contact_id) LEFT OUTER JOIN vibernumbers ON (phonebookdata.data2=vibernumbers.canonized_number)  WHERE phonebookcontact.starred=1 AND phonebookcontact.has_number=1  %s  GROUP BY phonebookcontact._id UNION ALL  SELECT  * FROM ( SELECT  %s, 2 AS alias_union_type, 0 AS recently_joined FROM phonebookcontact LEFT OUTER JOIN phonebookdata ON (phonebookcontact._id=phonebookdata.contact_id) LEFT OUTER JOIN vibernumbers ON (phonebookdata.data2=vibernumbers.canonized_number)  WHERE phonebookcontact.viber_out=1 AND phonebookcontact.has_number=1  %s  GROUP BY phonebookcontact._id LIMIT 11) UNION ALL  SELECT  %s, 3 AS alias_union_type, phonebookcontact.recently_joined_date AS recently_joined FROM phonebookcontact LEFT OUTER JOIN phonebookdata ON (phonebookcontact._id=phonebookdata.contact_id) LEFT OUTER JOIN vibernumbers ON (phonebookdata.data2=vibernumbers.canonized_number)  WHERE phonebookcontact.recently_joined_date<>0 AND phonebookcontact.has_number=1  %s  GROUP BY phonebookcontact._id UNION ALL  SELECT  %s, 4 AS alias_union_type, 0 AS recently_joined FROM phonebookcontact LEFT OUTER JOIN phonebookdata ON (phonebookcontact._id=phonebookdata.contact_id) LEFT OUTER JOIN vibernumbers ON (phonebookdata.data2=vibernumbers.canonized_number)  WHERE phonebookcontact.has_number=1  %s  GROUP BY phonebookcontact._id ORDER BY alias_union_type, recently_joined DESC, phonebookcontact.phone_label COLLATE LOCALIZED, phonebookcontact.low_display_name COLLATE LOCALIZED"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v2, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    const/4 v5, 0x6

    aput-object v2, v4, v5

    const/4 v2, 0x7

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 153
    :try_start_1
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-object v0

    .line 85
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    array-length v0, p4

    if-eqz v0, :cond_1

    .line 87
    const/4 v6, 0x0

    .line 88
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 90
    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 97
    invoke-direct {p0, p4}, Lcom/viber/voip/i/a/c;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 145
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :cond_2
    invoke-static {v8}, Lcom/viber/voip/util/a/f;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v3, "mimetype = ? AND (data3||\'\'||data2) LIKE ? OR (data2||\'\'||data3) LIKE ?"

    .line 106
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :try_start_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "contact_id"

    aput-object v9, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 111
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :cond_4
    :try_start_5
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    move-object v6, v1

    .line 121
    :cond_5
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    :try_start_6
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    .line 125
    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 129
    invoke-static {v7}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object p3

    .line 140
    :goto_3
    :try_start_8
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 141
    invoke-direct {p0, p4}, Lcom/viber/voip/i/a/c;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_2

    .line 117
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 160
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 132
    :cond_7
    :try_start_9
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "0"

    aput-object v3, v0, v2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 135
    :cond_8
    invoke-static {v7}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object p3

    goto :goto_3

    .line 140
    :catchall_2
    move-exception v0

    move-object v1, v6

    :goto_5
    :try_start_a
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 141
    invoke-direct {p0, p4}, Lcom/viber/voip/i/a/c;->a([Ljava/lang/String;)[Ljava/lang/String;

    throw v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/i/a/c;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 158
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 140
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 117
    :catchall_4
    move-exception v0

    goto :goto_4
.end method

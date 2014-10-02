.class public abstract Lcom/viber/service/contacts/sync/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/service/contacts/sync/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/viber/service/contacts/a;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/viber/service/contacts/sync/c/e;

    const/4 v4, 0x1

    move-object v1, p1

    move-wide v2, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/service/contacts/sync/c/e;-><init>(Landroid/content/Context;JZLcom/viber/service/contacts/a;)V

    .line 34
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    invoke-virtual {v1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    invoke-virtual {v1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber"

    invoke-virtual {v1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/viber/service/contacts/sync/c/e;->c(J)V

    .line 40
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    invoke-virtual {v1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, v0, p8}, Lcom/viber/service/contacts/sync/c/c;->b(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber"

    invoke-virtual {v1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0, p3, p4}, Lcom/viber/service/contacts/sync/c/e;->c(J)V

    .line 45
    invoke-virtual {p0, v0, p8}, Lcom/viber/service/contacts/sync/c/c;->a(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/viber/service/contacts/a;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 10
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
            "Lcom/viber/service/contacts/a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Lcom/viber/service/contacts/sync/c/e;

    const/4 v5, 0x1

    move-object v2, p1

    move-wide v3, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/viber/service/contacts/sync/c/e;-><init>(Landroid/content/Context;JZLcom/viber/service/contacts/a;)V

    .line 74
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/viber/service/contacts/sync/c/e;->b(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    sget-object v3, Lcom/viber/service/contacts/sync/c/d;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/service/contacts/sync/c/d;->b:[Ljava/lang/String;

    const-string/jumbo v5, "raw_contact_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 80
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 81
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 84
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 87
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    const-string/jumbo v9, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 91
    invoke-virtual {p5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 92
    invoke-virtual {v1, v5, v6, p5}, Lcom/viber/service/contacts/sync/c/e;->a(JLjava/lang/String;)Lcom/viber/service/contacts/sync/c/e;

    .line 115
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 118
    :cond_2
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 121
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/viber/service/contacts/sync/c/c;->a(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    .line 125
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 126
    invoke-virtual {p0, v1, v2}, Lcom/viber/service/contacts/sync/c/c;->c(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_5
    :try_start_1
    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 95
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object/from16 v0, p8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 96
    invoke-virtual {v1, v5, v6}, Lcom/viber/service/contacts/sync/c/e;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v1

    .line 98
    :cond_6
    :try_start_2
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_7
    const-string/jumbo v9, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 103
    :cond_8
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 104
    invoke-virtual {v1, v5, v6}, Lcom/viber/service/contacts/sync/c/e;->c(J)V

    goto :goto_0

    .line 106
    :cond_9
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_a
    const-string/jumbo v9, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    move-object/from16 v0, p8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 110
    invoke-virtual {v1, v5, v6}, Lcom/viber/service/contacts/sync/c/e;->c(J)V

    goto/16 :goto_0

    .line 112
    :cond_b
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 130
    :cond_c
    invoke-interface/range {p8 .. p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/viber/service/contacts/sync/c/c;->b(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    .line 134
    :cond_e
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 135
    invoke-virtual {p0, v1, v2}, Lcom/viber/service/contacts/sync/c/c;->c(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_f
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/viber/service/contacts/a;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;JLjava/lang/String;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/service/contacts/a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v7, 0x1

    move-object v2, p1

    move-wide v3, p3

    move-object/from16 v5, p11

    move-object v6, p6

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/viber/service/contacts/sync/c/e;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLcom/viber/service/contacts/a;)Lcom/viber/service/contacts/sync/c/e;

    move-result-object v3

    .line 53
    invoke-virtual {v3, p5}, Lcom/viber/service/contacts/sync/c/e;->a(Ljava/lang/String;)Lcom/viber/service/contacts/sync/c/e;

    .line 54
    invoke-virtual {p0, v3, p3, p4}, Lcom/viber/service/contacts/sync/c/c;->a(Lcom/viber/service/contacts/sync/c/e;J)V

    .line 56
    const-wide/16 v4, 0x0

    cmp-long v2, p9, v4

    if-eqz v2, :cond_0

    .line 57
    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Lcom/viber/service/contacts/sync/c/e;->a(J)Lcom/viber/service/contacts/sync/c/e;

    .line 60
    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v3, v2}, Lcom/viber/service/contacts/sync/c/c;->a(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v3, v2}, Lcom/viber/service/contacts/sync/c/c;->c(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface/range {p8 .. p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v3, v2}, Lcom/viber/service/contacts/sync/c/c;->b(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v3, v2}, Lcom/viber/service/contacts/sync/c/c;->c(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_2
    return-void
.end method

.method protected abstract a(Lcom/viber/service/contacts/sync/c/e;J)V
.end method

.method protected abstract a(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V
.end method

.method protected abstract b(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V
.end method

.method protected abstract c(Lcom/viber/service/contacts/sync/c/e;Ljava/lang/String;)V
.end method

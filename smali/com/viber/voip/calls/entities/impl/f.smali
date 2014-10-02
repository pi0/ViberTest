.class public abstract Lcom/viber/voip/calls/entities/impl/f;
.super Lcom/viber/voip/messages/orm/creator/Creator;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/creator/Creator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/calls/entities/impl/g;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    add-int/lit8 v0, p3, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/calls/entities/impl/g;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 109
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/g;->a(Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/g;->a(I)V

    .line 111
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/g;->b(Ljava/lang/String;)V

    .line 112
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/calls/entities/impl/g;->a(J)V

    .line 113
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/calls/entities/impl/g;->b(J)V

    .line 114
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/g;->d(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/g;->b(I)V

    .line 117
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->b()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/g;->c(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->d()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/calls/entities/impl/g;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    :goto_0
    return-object p1

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 136
    check-cast p1, Lcom/viber/voip/calls/entities/impl/g;

    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    const-string/jumbo v1, "number"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "date"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string/jumbo v1, "duration"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string/jumbo v1, "new"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "numbertype"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string/jumbo v1, "numberlabel"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string/jumbo v1, "lookup_uri"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    :cond_1
    return-object v0
.end method

.method public getFieldMapping()Lcom/viber/voip/messages/orm/entity/FieldMapping;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "method should be implement only for cached entities"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/e;->e()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInstance(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "method should be implement only for cached entities"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

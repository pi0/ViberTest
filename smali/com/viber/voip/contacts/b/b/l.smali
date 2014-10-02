.class final Lcom/viber/voip/contacts/b/b/l;
.super Lcom/viber/voip/messages/orm/creator/JoinCreator;
.source "SourceFile"


# direct methods
.method varargs constructor <init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/orm/creator/JoinCreator;-><init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/k;
    .locals 4
    .parameter

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v0, p0}, Lcom/viber/voip/contacts/b/b/l;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    .line 164
    sget-object v1, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v1}, Lcom/viber/voip/contacts/b/b/l;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b/a/o;

    .line 165
    sget-object v2, Lcom/viber/voip/contacts/b/b/b;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/contacts/b/b/l;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/b/b/b;

    .line 166
    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/a/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->a(Lcom/viber/voip/contacts/b/b/k;Lcom/viber/voip/contacts/b/i;)Lcom/viber/voip/contacts/b/i;

    .line 169
    :cond_0
    invoke-virtual {v2}, Lcom/viber/voip/contacts/b/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-static {v0, v2}, Lcom/viber/voip/contacts/b/b/k;->a(Lcom/viber/voip/contacts/b/b/k;Lcom/viber/voip/contacts/b/a;)Lcom/viber/voip/contacts/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    monitor-exit p0

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/database/Cursor;I)Lcom/viber/voip/contacts/b/b/k;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Lcom/viber/voip/contacts/b/b/k;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/k;-><init>()V

    .line 179
    :try_start_0
    const-string/jumbo v1, "_id"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    .line 180
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/k;->a(Lcom/viber/voip/contacts/b/b/k;J)J

    .line 185
    :goto_0
    const-string/jumbo v1, "contact_id"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/k;->c(Lcom/viber/voip/contacts/b/b/k;J)J

    .line 186
    const-string/jumbo v1, "raw_id"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/k;->d(Lcom/viber/voip/contacts/b/b/k;J)J

    .line 187
    const-string/jumbo v1, "data1"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->a(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    const-string/jumbo v1, "data2"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->b(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    const-string/jumbo v1, "data3"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->c(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    const-string/jumbo v1, "data4"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->d(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    const-string/jumbo v1, "data5"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->e(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    const-string/jumbo v1, "int_data2"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->a(Lcom/viber/voip/contacts/b/b/k;I)I

    .line 193
    const-string/jumbo v1, "mime_type"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/l;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/b/k;->b(Lcom/viber/voip/contacts/b/b/k;I)I

    .line 197
    :goto_1
    return-object v0

    .line 183
    :cond_0
    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/k;->b(Lcom/viber/voip/contacts/b/b/k;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public synthetic createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/l;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/b/b/l;->a(Landroid/database/Cursor;I)Lcom/viber/voip/contacts/b/b/k;

    move-result-object v0

    return-object v0
.end method

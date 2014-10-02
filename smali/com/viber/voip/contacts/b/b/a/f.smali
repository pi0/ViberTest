.class final Lcom/viber/voip/contacts/b/b/a/f;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/e;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/e;-><init>()V

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/e;
    .locals 4
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/f;->a()Lcom/viber/voip/contacts/b/b/a/e;

    move-result-object v1

    .line 189
    :try_start_0
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/e;->a(Lcom/viber/voip/contacts/b/b/a/e;J)J

    .line 190
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/e;->b(Lcom/viber/voip/contacts/b/b/a/e;J)J

    .line 191
    const-string/jumbo v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->a(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->b(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->c(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->d(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "data5"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->e(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "data6"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->f(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/e;->c(Lcom/viber/voip/contacts/b/b/a/e;J)J

    .line 198
    const-string/jumbo v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->g(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->a(Lcom/viber/voip/contacts/b/b/a/e;I)I

    .line 200
    const-string/jumbo v0, "raw_contact_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/e;->d(Lcom/viber/voip/contacts/b/b/a/e;J)J

    .line 201
    const-string/jumbo v0, "starred"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->b(Lcom/viber/voip/contacts/b/b/a/e;I)I

    .line 202
    const-string/jumbo v0, "in_visible_group"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->c(Lcom/viber/voip/contacts/b/b/a/e;I)I

    .line 203
    const-string/jumbo v0, "lookup"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->h(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 207
    invoke-static {v1}, Lcom/viber/voip/contacts/b/b/a/e;->a(Lcom/viber/voip/contacts/b/b/a/e;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "phonetic_name"

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sort_key"

    invoke-virtual {p0, v3}, Lcom/viber/voip/contacts/b/b/a/f;->getProjectionColumn(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/util/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/util/a/b;

    move-result-object v0

    .line 213
    :goto_0
    iget-object v2, v0, Lcom/viber/voip/util/a/b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/b/b/a/e;->i(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v2, v0, Lcom/viber/voip/util/a/b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/b/b/a/e;->j(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v0, v0, Lcom/viber/voip/util/a/b;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/e;->k(Lcom/viber/voip/contacts/b/b/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    :goto_1
    return-object v1

    .line 210
    :cond_0
    invoke-static {v1}, Lcom/viber/voip/contacts/b/b/a/e;->a(Lcom/viber/voip/contacts/b/b/a/e;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/viber/voip/util/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/util/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/f;->a()Lcom/viber/voip/contacts/b/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/f;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/f;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

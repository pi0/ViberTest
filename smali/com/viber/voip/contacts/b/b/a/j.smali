.class final Lcom/viber/voip/contacts/b/b/a/j;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/i;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/i;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/j;->a()Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/b/a/j;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/j;->a()Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v1

    .line 156
    :try_start_0
    const-string/jumbo v2, "_id"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/j;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;J)J

    .line 157
    const-string/jumbo v2, "starred"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/j;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;Z)Z

    .line 158
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/contacts/b/b/a/j;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/i;->b(Lcom/viber/voip/contacts/b/b/a/i;J)J

    .line 159
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/contacts/b/b/a/j;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    return-object v1

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    return-object v0
.end method

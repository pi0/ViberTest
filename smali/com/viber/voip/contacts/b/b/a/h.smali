.class final Lcom/viber/voip/contacts/b/b/a/h;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/g;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/g;-><init>()V

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/g;
    .locals 6
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/h;->a()Lcom/viber/voip/contacts/b/b/a/g;

    move-result-object v1

    .line 60
    :try_start_0
    const-string/jumbo v0, "_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/h;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/g;->a(Lcom/viber/voip/contacts/b/b/a/g;J)J

    .line 61
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/h;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/g;->b(Lcom/viber/voip/contacts/b/b/a/g;J)J

    .line 62
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/h;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/g;->a(Lcom/viber/voip/contacts/b/b/a/g;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-object v1

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/h;->a()Lcom/viber/voip/contacts/b/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/h;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/h;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

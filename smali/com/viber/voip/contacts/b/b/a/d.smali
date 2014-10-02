.class final Lcom/viber/voip/contacts/b/b/a/d;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/c;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/c;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/c;-><init>()V

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/c;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 53
    new-instance v3, Lcom/viber/voip/contacts/b/b/a/c;

    invoke-direct {v3}, Lcom/viber/voip/contacts/b/b/a/c;-><init>()V

    .line 55
    :try_start_0
    const-string/jumbo v2, "_id"

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/b/b/a/d;->getProjectionColumn(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/viber/voip/contacts/b/b/a/c;->a(Lcom/viber/voip/contacts/b/b/a/c;J)J

    .line 56
    const-string/jumbo v2, "in_visible_group"

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/b/b/a/d;->getProjectionColumn(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v3, v2}, Lcom/viber/voip/contacts/b/b/a/c;->a(Lcom/viber/voip/contacts/b/b/a/c;Z)Z

    .line 57
    const-string/jumbo v2, "has_phone_number"

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/b/b/a/d;->getProjectionColumn(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-static {v3, v0}, Lcom/viber/voip/contacts/b/b/a/c;->b(Lcom/viber/voip/contacts/b/b/a/c;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_2
    return-object v3

    :cond_0
    move v2, v1

    .line 56
    goto :goto_0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/d;->a()Lcom/viber/voip/contacts/b/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/d;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/d;->a(Landroid/database/Cursor;)Lcom/viber/voip/contacts/b/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

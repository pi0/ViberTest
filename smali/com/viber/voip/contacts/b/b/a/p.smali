.class final Lcom/viber/voip/contacts/b/b/a/p;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/o;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/o;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/o;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/p;->a()Lcom/viber/voip/contacts/b/b/a/o;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/b/a/p;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/a/p;->a()Lcom/viber/voip/contacts/b/b/a/o;

    move-result-object v1

    .line 132
    :try_start_0
    const-string/jumbo v2, "_id"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/p;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/o;->a(Lcom/viber/voip/contacts/b/b/a/o;J)J

    .line 133
    const-string/jumbo v2, "canonized_number"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/p;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/b/b/a/o;->a(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    const-string/jumbo v2, "photo"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/p;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/b/b/a/o;->b(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    const-string/jumbo v2, "actual_photo"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/p;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/b/b/a/o;->c(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    const-string/jumbo v2, "clear"

    invoke-virtual {p0, v2, p2}, Lcom/viber/voip/contacts/b/b/a/p;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/o;->a(Lcom/viber/voip/contacts/b/b/a/o;Z)Z

    .line 137
    const-string/jumbo v0, "viber_name"

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/contacts/b/b/a/p;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/b/b/a/o;->d(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-object v1

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    return-object v0
.end method

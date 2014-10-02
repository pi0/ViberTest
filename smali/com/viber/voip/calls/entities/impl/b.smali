.class public abstract Lcom/viber/voip/calls/entities/impl/b;
.super Lcom/viber/voip/messages/orm/creator/Creator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/creator/Creator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    :try_start_0
    sget v2, Lcom/viber/voip/calls/entities/impl/a;->a:I

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 87
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->a()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b(J)V

    .line 88
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->b()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->c()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->d()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c(J)V

    .line 91
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->e()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d(J)V

    .line 92
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->f()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a(I)V

    .line 93
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->g()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a(Z)V

    .line 94
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->h()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e(J)V

    .line 95
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->i()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b(Z)V

    .line 96
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->j()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->a(J)V

    .line 97
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->k()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->c(I)V

    .line 98
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->l()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b(I)V

    .line 99
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->m()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_2
    return-object p1

    :cond_0
    move v2, v1

    .line 93
    goto :goto_0

    :cond_1
    move v0, v1

    .line 95
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    invoke-static {p1}, Lcom/viber/voip/calls/entities/impl/a;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getFieldMapping()Lcom/viber/voip/messages/orm/entity/FieldMapping;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "method should be implement only for cached entities"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/viber/voip/calls/entities/impl/a;->n()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInstance(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "method should be implement only for cached entities"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

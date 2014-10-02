.class public abstract Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.super Lcom/viber/voip/messages/orm/creator/Creator;
.source "SourceFile"


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/creator/Creator;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->type:Ljava/lang/Class;

    .line 24
    return-void
.end method

.method public static varargs addProjections([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    array-length v2, p0

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    add-int/2addr v0, v2

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 48
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 49
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0

    .line 52
    :cond_1
    array-length v0, p0

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_2

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 53
    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    :cond_2
    return-object v2
.end method

.method public static varargs findLimitedSync(Lcom/viber/voip/messages/orm/creator/Creator;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 59
    .line 61
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t make query with LIMIT and without ORDER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v6, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 63
    :cond_1
    if-lez p1, :cond_5

    .line 64
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 74
    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-object v0

    .line 74
    :cond_3
    if-eqz v1, :cond_4

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_2

    .line 74
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_0

    :cond_5
    move-object v5, p2

    goto :goto_1
.end method

.method public static varargs findSync(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->findLimitedSync(Lcom/viber/voip/messages/orm/creator/Creator;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/viber/voip/messages/orm/entity/Entity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getFieldMapping()Lcom/viber/voip/messages/orm/entity/FieldMapping;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProjectionColumn(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->type:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getProjectionColumn(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProjectionColumn(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->type:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getProjectionColumn(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getProjections(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public updateInstance(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

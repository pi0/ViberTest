.class public abstract Lcom/viber/voip/messages/orm/creator/JoinCreator;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# instance fields
.field private contentUri:Landroid/net/Uri;

.field private creators:[Lcom/viber/voip/messages/orm/creator/Creator;

.field private offsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/messages/orm/creator/Creator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private projections:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/viber/voip/messages/orm/creator/Creator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->offsets:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->contentUri:Landroid/net/Uri;

    .line 39
    invoke-direct {p0, p3}, Lcom/viber/voip/messages/orm/creator/JoinCreator;->createProjections([Lcom/viber/voip/messages/orm/creator/Creator;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->projections:[Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->creators:[Lcom/viber/voip/messages/orm/creator/Creator;

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/viber/voip/messages/orm/creator/Creator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->offsets:Ljava/util/Map;

    .line 32
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/creator/JoinCreator;->createProjections([Lcom/viber/voip/messages/orm/creator/Creator;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->projections:[Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->creators:[Lcom/viber/voip/messages/orm/creator/Creator;

    .line 34
    return-void
.end method

.method private createProjections(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 73
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p3, v0

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_1
    return v1
.end method

.method private varargs createProjections([Lcom/viber/voip/messages/orm/creator/Creator;)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 64
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 65
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/creator/Creator;->getTable()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/viber/voip/messages/orm/creator/JoinCreator;->createProjections(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 66
    iget-object v4, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->offsets:Ljava/util/Map;

    aget-object v5, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->offsets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method protected createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->offsets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method protected createInstancesInternal(Landroid/database/Cursor;)[Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 5
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->creators:[Lcom/viber/voip/messages/orm/creator/Creator;

    array-length v0, v0

    new-array v2, v0, [Lcom/viber/voip/messages/orm/entity/Entity;

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->creators:[Lcom/viber/voip/messages/orm/creator/Creator;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->creators:[Lcom/viber/voip/messages/orm/creator/Creator;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->offsets:Ljava/util/Map;

    iget-object v4, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->creators:[Lcom/viber/voip/messages/orm/creator/Creator;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, p1, v0}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    aput-object v0, v2, v1

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_0
    return-object v2
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFieldMapping()Lcom/viber/voip/messages/orm/entity/FieldMapping;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProjectionColumn(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getTable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->projections:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->projections:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :goto_2
    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public final getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/orm/creator/JoinCreator;->projections:[Ljava/lang/String;

    return-object v0
.end method

.method protected moveToNext(Landroid/database/Cursor;J)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/creator/JoinCreator;->getAggregateField()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateInstance(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

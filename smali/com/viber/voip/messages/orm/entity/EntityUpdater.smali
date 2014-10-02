.class public abstract Lcom/viber/voip/messages/orm/entity/EntityUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected cAll:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    .line 30
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->getKeys(Landroid/content/ContentValues;)Ljava/util/Collection;

    move-result-object v0

    .line 31
    invoke-direct {p0, p3}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->getKeys([Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->initUpdateTerms(Ljava/util/Collection;)V

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->initUpdateTerms(Ljava/util/Collection;)V

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->cAll:Z

    goto :goto_0
.end method

.method private getKeys(Landroid/content/ContentValues;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 50
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getKeys([Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract initUpdateTerms(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected notEquals(ZII)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->cAll:Z

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    if-ne p2, p3, :cond_2

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 100
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notEquals(ZJJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->cAll:Z

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    cmp-long v1, p2, p4

    if-nez v1, :cond_2

    .line 92
    :cond_1
    :goto_0
    return v0

    .line 89
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notEquals(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->cAll:Z

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    if-ne p2, p3, :cond_2

    .line 70
    :cond_1
    :goto_0
    return v0

    .line 64
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notEquals(ZZZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->cAll:Z

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    if-ne p2, p3, :cond_2

    .line 81
    :cond_1
    :goto_0
    return v0

    .line 78
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final update(Lcom/viber/voip/messages/orm/entity/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->updateEntity(Lcom/viber/voip/messages/orm/entity/Entity;)Z

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract updateEntity(Lcom/viber/voip/messages/orm/entity/Entity;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.class public abstract Lcom/viber/voip/messages/orm/service/BaseEntityService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/service/EntityService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/viber/voip/messages/orm/service/EntityService",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V

    .line 36
    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onDelete(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 37
    return-void
.end method

.method public static delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onDelete(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 60
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V

    .line 61
    return-void
.end method

.method public static onDelete(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    instance-of v0, p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    if-eqz v0, :cond_0

    .line 83
    check-cast p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onDelete(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static onSave(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    instance-of v0, p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    if-eqz v0, :cond_0

    .line 71
    check-cast p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onSave(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static onSetId(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    instance-of v0, p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    if-eqz v0, :cond_0

    .line 77
    check-cast p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onSetId(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static onUpdate(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    instance-of v0, p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Lcom/viber/voip/messages/orm/entity/CachedEntity;

    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onUpdate(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static save(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)Z

    .line 13
    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onSave(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 14
    return-void
.end method

.method public static save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/orm/service/BaseEntityService$1;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/orm/service/BaseEntityService$1;-><init>(Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V

    invoke-static {p0, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V

    .line 50
    return-void
.end method

.method public static saveWithoutAddToCache(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)Z

    .line 18
    return-void
.end method

.method public static update(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V

    .line 22
    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onUpdate(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 23
    return-void
.end method

.method public static update(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Landroid/content/ContentValues;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V

    .line 27
    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onUpdate(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 28
    return-void
.end method

.method public static update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onUpdate(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 54
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V

    .line 55
    return-void
.end method

.method public static updateWithoutAddToCache(Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;)V

    .line 32
    return-void
.end method

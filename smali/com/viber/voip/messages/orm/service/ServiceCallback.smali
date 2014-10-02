.class public interface abstract Lcom/viber/voip/messages/orm/service/ServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isPaused()Z
.end method

.method public varargs abstract onDataChange(Lcom/viber/voip/messages/orm/service/EntityService;I[Lcom/viber/voip/messages/orm/entity/Entity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;I[",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDataReady(Lcom/viber/voip/messages/orm/service/EntityService;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;)V"
        }
    .end annotation
.end method

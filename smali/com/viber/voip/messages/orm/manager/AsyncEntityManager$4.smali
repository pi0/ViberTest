.class final Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fn;


# instance fields
.field final synthetic val$callback:Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;

.field final synthetic val$entity:Lcom/viber/voip/messages/orm/entity/Entity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;

    iput-object p2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;->val$entity:Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;

    if-eqz v0, :cond_0

    .line 323
    if-lez p5, :cond_1

    if-eqz p3, :cond_1

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;->val$entity:Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;->onDataUpdate(Lcom/viber/voip/messages/orm/entity/Entity;Z)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$4;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/orm/service/ServiceUpdateCallback;->onDataUpdate(Lcom/viber/voip/messages/orm/entity/Entity;Z)V

    goto :goto_0
.end method

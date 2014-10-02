.class final Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fk;


# instance fields
.field final synthetic val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

.field final synthetic val$entity:Lcom/viber/voip/messages/orm/entity/Entity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;->val$entity:Lcom/viber/voip/messages/orm/entity/Entity;

    iput-object p2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    if-eqz p3, :cond_0

    .line 264
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;->val$entity:Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/messages/orm/entity/Entity;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 266
    const/4 v0, 0x1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$2;->val$entity:Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;->onDataSave(Lcom/viber/voip/messages/orm/entity/Entity;Z)V

    .line 271
    :cond_1
    return-void
.end method

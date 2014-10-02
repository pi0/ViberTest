.class final Lcom/viber/voip/messages/orm/service/BaseEntityService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;


# instance fields
.field final synthetic val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/viber/voip/messages/orm/service/BaseEntityService$1;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSave(Lcom/viber/voip/messages/orm/entity/Entity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Lcom/viber/voip/messages/orm/service/BaseEntityService;->onSave(Lcom/viber/voip/messages/orm/entity/Entity;)V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/BaseEntityService$1;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/BaseEntityService$1;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;->onDataSave(Lcom/viber/voip/messages/orm/entity/Entity;Z)V

    .line 48
    :cond_0
    return-void
.end method

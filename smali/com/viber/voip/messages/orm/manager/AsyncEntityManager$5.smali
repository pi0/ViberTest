.class final Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fh;


# instance fields
.field final synthetic val$callback:Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$5;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$5;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$5;->val$callback:Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;

    invoke-interface {v0, p3}, Lcom/viber/voip/messages/orm/service/ServiceDeleteCallback;->onDataDelete(I)V

    .line 349
    :cond_0
    return-void
.end method

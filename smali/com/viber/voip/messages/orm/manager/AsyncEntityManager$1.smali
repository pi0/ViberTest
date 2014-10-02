.class Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field final synthetic val$callback:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iput-object p2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;->val$callback:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;->val$callback:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;->val$callback:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;

    new-instance v1, Lcom/viber/voip/messages/orm/manager/EntityManager;

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$1;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v2, v2, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-direct {v1, v2, p3}, Lcom/viber/voip/messages/orm/manager/EntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Landroid/database/Cursor;)V

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;->onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V

    .line 182
    :cond_0
    return-void
.end method

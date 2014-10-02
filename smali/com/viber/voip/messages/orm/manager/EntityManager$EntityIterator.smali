.class Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field position:I

.field final synthetic this$0:Lcom/viber/voip/messages/orm/manager/EntityManager;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/orm/manager/EntityManager;)V
    .locals 1
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->this$0:Lcom/viber/voip/messages/orm/manager/EntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->position:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/orm/manager/EntityManager;Lcom/viber/voip/messages/orm/manager/EntityManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;-><init>(Lcom/viber/voip/messages/orm/manager/EntityManager;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->this$0:Lcom/viber/voip/messages/orm/manager/EntityManager;

    #getter for: Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->access$100(Lcom/viber/voip/messages/orm/manager/EntityManager;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->this$0:Lcom/viber/voip/messages/orm/manager/EntityManager;

    #getter for: Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->access$100(Lcom/viber/voip/messages/orm/manager/EntityManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->this$0:Lcom/viber/voip/messages/orm/manager/EntityManager;

    #getter for: Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->access$100(Lcom/viber/voip/messages/orm/manager/EntityManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->position:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->this$0:Lcom/viber/voip/messages/orm/manager/EntityManager;

    iget v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->position:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;->next()Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

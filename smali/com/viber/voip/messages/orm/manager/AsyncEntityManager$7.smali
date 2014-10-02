.class Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 378
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, v1, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSortOrder:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v2, v2, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelection:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$7;->this$0:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v3, v3, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 379
    return-void
.end method

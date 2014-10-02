.class public Lcom/viber/voip/messages/conversation/publicgroup/ar;
.super Lcom/viber/voip/messages/conversation/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/i",
        "<",
        "Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Ljava/lang/String;Ljava/util/ArrayList;Lcom/viber/provider/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/LoaderManager;",
            "Lcom/viber/voip/messages/i;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;",
            ">;",
            "Lcom/viber/provider/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v2, Lcom/viber/provider/messages/b/c;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 38
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->a([Ljava/lang/String;)V

    .line 39
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->l:Ljava/util/ArrayList;

    .line 40
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->j:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;
    .locals 1
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    const-string/jumbo v0, "(conversations.deleted=0 AND conversations.conversation_type=2) OR conversations._id IN (%s) GROUP BY conversations._id"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->k:Ljava/util/Set;

    invoke-static {v3}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lcom/viber/voip/messages/controller/c/ap;
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/i;->o()Lcom/viber/voip/messages/controller/c/ap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/ap;->e(Z)Lcom/viber/voip/messages/controller/c/ap;

    move-result-object v0

    return-object v0
.end method

.method protected p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    return-object v0
.end method

.method protected u()Lcom/viber/voip/messages/ui/dl;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v3, Lcom/viber/voip/messages/ui/ee;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->e:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->e:Landroid/database/Cursor;

    sget v6, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->d:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->e:Landroid/database/Cursor;

    sget v6, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->d:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/ar;->e:Landroid/database/Cursor;

    sget v5, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->i:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/viber/voip/messages/ui/ee;-><init>(ZZZI)V

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

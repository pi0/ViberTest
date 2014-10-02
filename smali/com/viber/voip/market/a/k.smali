.class public Lcom/viber/voip/market/a/k;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/market/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/market/s;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/viber/voip/market/a/k;->a:Lcom/viber/voip/market/s;

    .line 27
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/market/a/k;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/market/a/k;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 32
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/c;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    const-string/jumbo v3, "(conversations.deleted=0 AND conversations.conversation_type=2) OR conversations._id IN (%s) GROUP BY conversations._id"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    if-eqz v0, :cond_1

    .line 40
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-direct {v2, v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;-><init>(Landroid/database/Cursor;)V

    .line 42
    new-instance v3, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    invoke-direct {v3, v2}, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;-><init>(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;)V

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string/jumbo v3, "groups"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 50
    invoke-interface {p2, v2}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    const-string/jumbo v0, "groups"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 56
    array-length v0, v2

    new-array v3, v0, [Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 58
    aget-object v0, v2, v1

    check-cast v0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    aput-object v0, v3, v1

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/market/a/k;->a:Lcom/viber/voip/market/s;

    invoke-interface {v0, v3}, Lcom/viber/voip/market/s;->a([Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;)V

    .line 61
    return-void
.end method

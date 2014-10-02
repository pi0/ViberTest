.class public Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/entity/EntityHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/voip/messages/orm/entity/EntityHelper",
        "<",
        "Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;",
        ">;"
    }
.end annotation


# static fields
.field protected static INDX_GROUP_ID:I

.field protected static INDX_ID:I

.field protected static INDX_LIKED:I

.field protected static INDX_LIKES_COUNT:I

.field protected static INDX_MESSAGE_TOKEN:I

.field protected static INDX_SYNC_LIKE:I

.field public static PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "message_token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "liked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "likes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sync_like"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    .line 25
    sput v3, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_ID:I

    .line 26
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_GROUP_ID:I

    .line 27
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_GROUP_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_MESSAGE_TOKEN:I

    .line 28
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_MESSAGE_TOKEN:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_LIKED:I

    .line 29
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_LIKED:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_LIKES_COUNT:I

    .line 30
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_LIKES_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_SYNC_LIKE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 47
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_GROUP_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setConversationId(J)V

    .line 48
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_MESSAGE_TOKEN:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setMessageToken(J)V

    .line 49
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_LIKED:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setLiked(I)V

    .line 50
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_LIKES_COUNT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setLikesCount(I)V

    .line 51
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->INDX_SYNC_LIKE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setSyncLike(I)V

    .line 52
    return-object p0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 35
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    :cond_0
    const-string/jumbo v1, "group_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    const-string/jumbo v1, "message_token"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    const-string/jumbo v1, "liked"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getLiked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const-string/jumbo v1, "likes_count"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getLikesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string/jumbo v1, "sync_like"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->getSyncLike()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->createContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "public_messages_extras"

    return-object v0
.end method

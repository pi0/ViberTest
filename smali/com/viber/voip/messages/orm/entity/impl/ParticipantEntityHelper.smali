.class public Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;
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
        "Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static INDX_CONVERSATION_ID:I

.field private static INDX_ID:I

.field private static INDX_LAST_MESSAGE_ID:I

.field private static INDX_PATRICIPANT_INFO_ID:I

.field private static INDX_STATUS:I

.field public static PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "conversation_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "participant_info_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "last_message_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "active"

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    .line 20
    sput v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_ID:I

    .line 21
    sput v3, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_CONVERSATION_ID:I

    .line 22
    sput v4, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_PATRICIPANT_INFO_ID:I

    .line 23
    sput v5, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_LAST_MESSAGE_ID:I

    .line 24
    sput v6, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_STATUS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 40
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_CONVERSATION_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setConversationId(J)V

    .line 41
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_PATRICIPANT_INFO_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setParticipantInfoId(J)V

    .line 42
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_LAST_MESSAGE_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setLastMessageId(J)V

    .line 43
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->INDX_STATUS:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 44
    return-object p0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 29
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    :cond_0
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    const-string/jumbo v1, "participant_info_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getParticipantInfoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    const-string/jumbo v1, "last_message_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getLastMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    const-string/jumbo v1, "active"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "participants"

    return-object v0
.end method

.class public Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;
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
        "Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;",
        ">;"
    }
.end annotation


# static fields
.field protected static INDX_BACKGROUND_LANDSCAPE:I

.field protected static INDX_BACKGROUND_PORTRAIT:I

.field protected static INDX_CONVERSATION_TYPE:I

.field protected static INDX_DATE:I

.field protected static INDX_DELETED:I

.field protected static INDX_DELETE_TOKEN:I

.field protected static INDX_FLAGS:I

.field protected static INDX_GROUP_ID:I

.field protected static INDX_GROUP_NAME:I

.field protected static INDX_ID:I

.field protected static INDX_LAST_MESSAGE_ID:I

.field protected static INDX_MEDIA_MESSAGE_COUNT:I

.field protected static INDX_MESSAGE_DRAFT:I

.field protected static INDX_MUTE_NOTIFICATION:I

.field protected static INDX_PARTICIPANT_INFO_ID_1:I

.field protected static INDX_PARTICIPANT_INFO_ID_2:I

.field protected static INDX_PARTICIPANT_INFO_ID_3:I

.field protected static INDX_PARTICIPANT_INFO_ID_4:I

.field protected static INDX_READ_NOTIFICATION_TOKEN:I

.field protected static INDX_RECIPIENT_NUMBER:I

.field protected static INDX_SHARE_LOCATION:I

.field protected static INDX_SMART_EVENT_DATE:I

.field protected static INDX_SMART_NOTIFICATION:I

.field protected static INDX_UNREAD_CALLS_COUNT:I

.field protected static INDX_UNREAD_MESSAGE_COUNT:I

.field public static PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "conversation_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "group_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "recipient_number"

    aput-object v1, v0, v6

    const-string/jumbo v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "share_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "message_draft"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "unread_message_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "unread_calls_count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "delete_token"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "background_landscape"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "background_portrait"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "smart_notification"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "smart_event_date"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "mute_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "last_message_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "participant_id_1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "participant_id_2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "participant_id_3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "participant_id_4"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "read_notification_token"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "media_msg_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    .line 40
    sput v3, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_ID:I

    .line 41
    sput v4, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_CONVERSATION_TYPE:I

    .line 42
    sput v5, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_GROUP_ID:I

    .line 43
    sput v6, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_RECIPIENT_NUMBER:I

    .line 44
    sput v7, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_DATE:I

    .line 45
    const/4 v0, 0x5

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_SHARE_LOCATION:I

    .line 46
    const/4 v0, 0x6

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_MESSAGE_DRAFT:I

    .line 47
    const/4 v0, 0x7

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_UNREAD_MESSAGE_COUNT:I

    .line 48
    const/16 v0, 0x8

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_UNREAD_CALLS_COUNT:I

    .line 49
    const/16 v0, 0x9

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_DELETE_TOKEN:I

    .line 50
    const/16 v0, 0xa

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_DELETED:I

    .line 51
    const/16 v0, 0xb

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_GROUP_NAME:I

    .line 52
    const/16 v0, 0xc

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_BACKGROUND_LANDSCAPE:I

    .line 53
    const/16 v0, 0xd

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_BACKGROUND_PORTRAIT:I

    .line 54
    const/16 v0, 0xe

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_SMART_NOTIFICATION:I

    .line 55
    const/16 v0, 0xf

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_SMART_EVENT_DATE:I

    .line 56
    const/16 v0, 0x10

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_MUTE_NOTIFICATION:I

    .line 57
    const/16 v0, 0x11

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_FLAGS:I

    .line 58
    const/16 v0, 0x12

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_LAST_MESSAGE_ID:I

    .line 59
    const/16 v0, 0x13

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_1:I

    .line 60
    const/16 v0, 0x14

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_2:I

    .line 61
    const/16 v0, 0x15

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_3:I

    .line 62
    const/16 v0, 0x16

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_4:I

    .line 63
    const/16 v0, 0x17

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_READ_NOTIFICATION_TOKEN:I

    .line 64
    const/16 v0, 0x18

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_MEDIA_MESSAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 101
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_CONVERSATION_TYPE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setConversationType(I)V

    .line 102
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_GROUP_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupId(J)V

    .line 103
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_RECIPIENT_NUMBER:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setNumber(Ljava/lang/String;)V

    .line 104
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_DATE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDate(J)V

    .line 105
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_SHARE_LOCATION:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setShareLocation(I)V

    .line 106
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_MESSAGE_DRAFT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setMessageDraft(Ljava/lang/String;)V

    .line 107
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_UNREAD_MESSAGE_COUNT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setUnreadMessagesCount(I)V

    .line 108
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_UNREAD_CALLS_COUNT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setUnreadCallsCount(I)V

    .line 109
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_DELETE_TOKEN:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDeletedToken(J)V

    .line 110
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_DELETED:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDeleted(I)V

    .line 111
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_GROUP_NAME:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 112
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_BACKGROUND_LANDSCAPE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setBackgroundLandscape(Ljava/lang/String;)V

    .line 113
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_BACKGROUND_PORTRAIT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setBackgroundPortrait(Ljava/lang/String;)V

    .line 114
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_SMART_NOTIFICATION:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setSmartNotifications(I)V

    .line 115
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_SMART_EVENT_DATE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setSmartEventDate(J)V

    .line 116
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_MUTE_NOTIFICATION:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setMuteNotifications(I)V

    .line 117
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_FLAGS:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setFlags(I)V

    .line 118
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_LAST_MESSAGE_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setLastMessageId(J)V

    .line 119
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_1:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    .line 120
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_2:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId2(J)V

    .line 121
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_3:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId3(J)V

    .line 122
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_PARTICIPANT_INFO_ID_4:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId4(J)V

    .line 123
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_READ_NOTIFICATION_TOKEN:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setReadNotificationToken(J)V

    .line 124
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->INDX_MEDIA_MESSAGE_COUNT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setMediaMessageCount(I)V

    .line 125
    return-object p0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 69
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    :cond_0
    const-string/jumbo v1, "conversation_type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v1, "group_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string/jumbo v1, "recipient_number"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "date"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string/jumbo v1, "share_location"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getShareLocation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string/jumbo v1, "message_draft"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMessageDraft()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "unread_message_count"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string/jumbo v1, "unread_calls_count"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadCallsCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string/jumbo v1, "delete_token"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDeletedToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string/jumbo v1, "deleted"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDeleted()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "background_landscape"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundLandscape()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "background_portrait"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "smart_notification"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getSmartNotifications()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string/jumbo v1, "smart_event_date"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getSmartEventDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string/jumbo v1, "mute_notification"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMuteNotifications()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string/jumbo v1, "flags"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string/jumbo v1, "last_message_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getLastMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string/jumbo v1, "participant_id_1"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getParticipantInfoId1()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string/jumbo v1, "participant_id_2"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getParticipantInfoId2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string/jumbo v1, "participant_id_3"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getParticipantInfoId3()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string/jumbo v1, "participant_id_4"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getParticipantInfoId4()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string/jumbo v1, "read_notification_token"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getReadNotificationToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string/jumbo v1, "media_msg_count"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMediaMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createContentValues(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createContentValues(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "conversations"

    return-object v0
.end method

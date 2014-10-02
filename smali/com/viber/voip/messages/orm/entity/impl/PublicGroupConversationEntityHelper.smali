.class public Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;
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
        "Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;",
        ">;"
    }
.end annotation


# static fields
.field protected static INDX_BACKGROUND_ID:I

.field protected static INDX_COUNTRY:I

.field protected static INDX_GROUP_ID:I

.field protected static INDX_GROUP_ROLE:I

.field protected static INDX_GROUP_URI:I

.field protected static INDX_ICON_ID:I

.field protected static INDX_ID:I

.field protected static INDX_INVITER:I

.field protected static INDX_LAST_MEDIA_TYPE:I

.field protected static INDX_LAST_MESSAGE_ID:I

.field protected static INDX_LAST_MSG_TEXT:I

.field protected static INDX_LOCATION_ADDRESS:I

.field protected static INDX_LOCATION_LAT:I

.field protected static INDX_LOCATION_LNG:I

.field protected static INDX_REVISION:I

.field protected static INDX_SENDER_PHONE:I

.field protected static INDX_SERVER_LAST_MESSAGE_ID:I

.field protected static INDX_TAGS:I

.field protected static INDX_TAG_LINE:I

.field protected static INDX_VERIFIED:I

.field protected static INDX_WATCHERS_COUNT:I

.field public static PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "group_role"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "group_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "revision"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "background_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "location_lat"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "location_lng"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "location_address"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "watchers_count"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "tag_line"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "local_message_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "server_message_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "inviter"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "last_media_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "last_msg_text"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "sender_phone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    .line 37
    sput v3, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_ID:I

    .line 38
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_ID:I

    .line 39
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_ROLE:I

    .line 40
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_ROLE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_URI:I

    .line 41
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_URI:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_REVISION:I

    .line 42
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_REVISION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_ICON_ID:I

    .line 43
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_ICON_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_BACKGROUND_ID:I

    .line 44
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_BACKGROUND_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_LAT:I

    .line 45
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_LAT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_LNG:I

    .line 46
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_LNG:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_COUNTRY:I

    .line 47
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_COUNTRY:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_ADDRESS:I

    .line 48
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_ADDRESS:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_WATCHERS_COUNT:I

    .line 49
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_WATCHERS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_TAGS:I

    .line 50
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_TAGS:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_TAG_LINE:I

    .line 51
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_TAG_LINE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MESSAGE_ID:I

    .line 52
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MESSAGE_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_SERVER_LAST_MESSAGE_ID:I

    .line 53
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_SERVER_LAST_MESSAGE_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_VERIFIED:I

    .line 54
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_VERIFIED:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_INVITER:I

    .line 55
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_INVITER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MEDIA_TYPE:I

    .line 56
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MEDIA_TYPE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MSG_TEXT:I

    .line 57
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MSG_TEXT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_SENDER_PHONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 88
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 89
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupId(J)V

    .line 90
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_ROLE:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupRole(I)V

    .line 91
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_GROUP_URI:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupUri(Ljava/lang/String;)V

    .line 92
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_REVISION:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setRevision(I)V

    .line 93
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_ICON_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setIconId(Ljava/lang/String;)V

    .line 94
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_BACKGROUND_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setBackgroundId(Ljava/lang/String;)V

    .line 95
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_LAT:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLat(I)V

    .line 96
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_LNG:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLng(I)V

    .line 97
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_COUNTRY:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setCountry(Ljava/lang/String;)V

    .line 98
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LOCATION_ADDRESS:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setAddressString(Ljava/lang/String;)V

    .line 99
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_WATCHERS_COUNT:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setWatchersCount(I)V

    .line 100
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_TAGS:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTags(Ljava/lang/String;)V

    .line 101
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_TAG_LINE:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagLine(Ljava/lang/String;)V

    .line 102
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MESSAGE_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastLocalMessageId(I)V

    .line 103
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_SERVER_LAST_MESSAGE_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastServerMessageId(I)V

    .line 104
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_VERIFIED:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setVerified(Z)V

    .line 105
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_INVITER:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setInviter(Ljava/lang/String;)V

    .line 106
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MEDIA_TYPE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastMediaType(I)V

    .line 107
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_LAST_MSG_TEXT:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLastMessageText(Ljava/lang/String;)V

    .line 108
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->INDX_SENDER_PHONE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setSenderPhone(Ljava/lang/String;)V

    .line 109
    return-object p0

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 62
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    :cond_0
    const-string/jumbo v1, "group_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string/jumbo v1, "group_role"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string/jumbo v1, "group_uri"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "revision"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string/jumbo v1, "icon_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "background_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getBackgroundId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "location_lat"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLocationLat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string/jumbo v1, "location_lng"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLocationLng()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v1, "country"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "location_address"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getAddressString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "watchers_count"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getWatchersCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string/jumbo v1, "tags"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "tag_line"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getTagLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "local_message_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string/jumbo v1, "server_message_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastServerMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string/jumbo v1, "verified"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->isVerified()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    const-string/jumbo v1, "inviter"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "last_media_type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastMediaType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string/jumbo v1, "last_msg_text"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "sender_phone"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getSenderPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "group_conversations_extras"

    return-object v0
.end method

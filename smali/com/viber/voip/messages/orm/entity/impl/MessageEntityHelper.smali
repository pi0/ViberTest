.class public Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;
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
        "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDX_BODY:I = 0x3

.field private static final INDX_CONVERSATION_ID:I = 0x12

.field private static final INDX_CONVERSATION_TYPE:I = 0x13

.field private static final INDX_COUNT:I = 0x1d

.field private static final INDX_DATE:I = 0x1

.field private static final INDX_DELETED:I = 0x1a

.field private static final INDX_DESCRIPTION:I = 0x1c

.field private static final INDX_DOWNLOAD_ID:I = 0xb

.field private static final INDX_EXTRA_BUCKET_NAME:I = 0x15

.field private static final INDX_EXTRA_DURATION:I = 0xf

.field private static final INDX_EXTRA_FLAGS:I = 0x20

.field private static final INDX_EXTRA_MIME:I = 0xc

.field private static final INDX_EXTRA_STATUS:I = 0x8

.field private static final INDX_EXTRA_UPLOAD_ID:I = 0xa

.field private static final INDX_EXTRA_URI:I = 0x9

.field private static final INDX_FB_STATUS:I = 0xd

.field private static final INDX_FLAG:I = 0x10

.field private static final INDX_GROUP_ID:I = 0x11

.field private static final INDX_ID:I = 0x0

.field private static final INDX_LOCATION_LAT:I = 0x6

.field private static final INDX_LOCATION_LNG:I = 0x7

.field private static final INDX_MESSAGE_GLOBAL_ID:I = 0x22

.field private static final INDX_MESSAGE_SEQ:I = 0x16

.field private static final INDX_MESSAGE_TOKEN:I = 0x17

.field private static final INDX_OPENED:I = 0x1b

.field private static final INDX_PARTICIOANT_ID:I = 0x1e

.field private static final INDX_READ:I = 0x5

.field private static final INDX_REAL_DATE:I = 0x21

.field private static final INDX_RECIPIENT_NUMBER:I = 0x14

.field private static final INDX_STATUS:I = 0x4

.field private static final INDX_SYNC_READ:I = 0x1f

.field private static final INDX_THUMBNAIL_X:I = 0x18

.field private static final INDX_THUMBNAIL_Y:I = 0x19

.field private static final INDX_TWITTER_STATUS:I = 0xe

.field private static final INDX_TYPE:I = 0x2

.field public static final PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "location_lat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "location_lng"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "extra_status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "extra_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "extra_upload_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "extra_download_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "extra_mime"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "fb_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "twitter_status"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "extra_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "flag"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "conversation_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "conversation_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "extra_bucket_name"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "seq"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "thumbnail_x"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "thumbnail_y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "opened"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "count"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "participant_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "sync_read"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "extra_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "date_real"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "message_global_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 88
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 89
    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 90
    add-int/lit8 v0, p2, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 92
    add-int/lit8 v0, p2, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 93
    add-int/lit8 v0, p2, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLat(I)V

    .line 94
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLng(I)V

    .line 95
    add-int/lit8 v0, p2, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 96
    add-int/lit8 v0, p2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 97
    add-int/lit8 v0, p2, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setObjectId(J)V

    .line 98
    add-int/lit8 v0, p2, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v0, p2, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v0, p2, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setFbStatus(I)V

    .line 101
    add-int/lit8 v0, p2, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setTwitterStatus(I)V

    .line 102
    add-int/lit8 v0, p2, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 103
    add-int/lit8 v0, p2, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setFlag(I)V

    .line 104
    add-int/lit8 v0, p2, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 105
    add-int/lit8 v0, p2, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 106
    add-int/lit8 v0, p2, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 107
    add-int/lit8 v0, p2, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v0, p2, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBucket(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v0, p2, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 110
    add-int/lit8 v0, p2, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 111
    add-int/lit8 v0, p2, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 112
    add-int/lit8 v0, p2, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 113
    add-int/lit8 v0, p2, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDeleted(I)V

    .line 114
    add-int/lit8 v0, p2, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setOpened(I)V

    .line 115
    add-int/lit8 v0, p2, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDescription(Ljava/lang/String;)V

    .line 116
    add-int/lit8 v0, p2, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 117
    add-int/lit8 v0, p2, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 118
    add-int/lit8 v0, p2, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setSyncRead(I)V

    .line 119
    add-int/lit8 v0, p2, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraFlags(I)V

    .line 120
    add-int/lit8 v0, p2, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRealDate(J)V

    .line 121
    add-int/lit8 v0, p2, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    .line 122
    return-object p0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 128
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    :cond_0
    const-string/jumbo v1, "date"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "status"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string/jumbo v1, "read"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getUnread()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string/jumbo v1, "opened"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getOpened()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string/jumbo v1, "location_lat"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string/jumbo v1, "location_lng"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo v1, "extra_status"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getExtraStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string/jumbo v1, "extra_uri"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "extra_upload_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string/jumbo v1, "extra_download_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "extra_mime"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "fb_status"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFbStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string/jumbo v1, "twitter_status"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getTwitterStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string/jumbo v1, "extra_duration"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string/jumbo v1, "flag"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string/jumbo v1, "group_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string/jumbo v1, "conversation_type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string/jumbo v1, "address"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "extra_bucket_name"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "seq"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string/jumbo v1, "thumbnail_x"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string/jumbo v1, "thumbnail_y"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string/jumbo v1, "deleted"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDeleted()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string/jumbo v1, "description"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "count"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string/jumbo v1, "participant_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string/jumbo v1, "sync_read"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getSyncRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v1, "extra_flags"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getExtraFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v1, "date_real"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRealDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string/jumbo v1, "message_global_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageGlobalId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, "messages"

    return-object v0
.end method

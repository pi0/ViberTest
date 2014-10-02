.class public Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INDX_CANONIZED_NUMBER:I

.field private static INDX_CONVERSATION_ID:I

.field private static INDX_DATE:I

.field private static INDX_DURATION:I

.field private static INDX_END_REASON_ID:I

.field private static INDX_ID:I

.field private static INDX_MESSAGE_ID:I

.field private static INDX_START_REASON_ID:I

.field private static INDX_TOKEN:I

.field private static INDX_TYPE:I

.field private static INDX_VIBER_CALL_TYPE:I

.field public static PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "message_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "canonized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "end_reason"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "start_reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "viber_call_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    .line 30
    sput v3, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_ID:I

    .line 31
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_CONVERSATION_ID:I

    .line 32
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_CONVERSATION_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_MESSAGE_ID:I

    .line 33
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_MESSAGE_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_CANONIZED_NUMBER:I

    .line 34
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_CANONIZED_NUMBER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_DATE:I

    .line 35
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_DATE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_DURATION:I

    .line 36
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_DURATION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_TYPE:I

    .line 37
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_TYPE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_TOKEN:I

    .line 38
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_TOKEN:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_END_REASON_ID:I

    .line 39
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_END_REASON_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_START_REASON_ID:I

    .line 40
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_START_REASON_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_VIBER_CALL_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 44
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_CONVERSATION_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setConversationId(J)V

    .line 45
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_MESSAGE_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setMessageId(J)V

    .line 46
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_CANONIZED_NUMBER:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setCanonizedNumber(Ljava/lang/String;)V

    .line 47
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_DATE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setDate(J)V

    .line 48
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_DURATION:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setDuration(J)V

    .line 49
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_TYPE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setType(I)V

    .line 50
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_TOKEN:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setToken(J)V

    .line 51
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_END_REASON_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setEndReason(I)V

    .line 52
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_START_REASON_ID:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setStartReason(I)V

    .line 53
    sget v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->INDX_VIBER_CALL_TYPE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setViberCallType(I)V

    .line 54
    return-object p0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    :cond_0
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string/jumbo v1, "message_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string/jumbo v1, "canonized_number"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getCanonizedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "date"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    const-string/jumbo v1, "duration"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string/jumbo v1, "end_reason"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getEndReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string/jumbo v1, "start_reason"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getStartReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v1, "viber_call_type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getViberCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    return-object v0
.end method

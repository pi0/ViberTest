.class public Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;
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
        "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static INDX_CONTACT_ID:I

.field private static INDX_CONTACT_NAME:I

.field private static INDX_DISPLAY_NAME:I

.field private static INDX_HAS_PHOTO:I

.field private static INDX_ID:I

.field private static INDX_LOCATION_DATE:I

.field private static INDX_LOCATION_LAT:I

.field private static INDX_LOCATION_LNG:I

.field private static INDX_NATIVE_CONTACT_ID:I

.field private static INDX_NATIVE_PHOTO_ID:I

.field private static INDX_NUMBER:I

.field private static INDX_PARTICIPANT_TYPE:I

.field private static INDX_VIBER_IMAGE:I

.field private static INDX_VIBER_NAME:I

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

    .line 13
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "native_contact_id"

    aput-object v1, v0, v6

    const-string/jumbo v1, "contact_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "viber_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "viber_image"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "location_lat"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "location_lng"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "participant_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "location_date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "native_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "has_photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    .line 30
    sput v3, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_ID:I

    .line 31
    sput v4, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_NUMBER:I

    .line 32
    sput v5, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_CONTACT_ID:I

    .line 33
    sput v6, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_NATIVE_CONTACT_ID:I

    .line 34
    sput v7, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_CONTACT_NAME:I

    .line 35
    const/4 v0, 0x5

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_VIBER_NAME:I

    .line 36
    const/4 v0, 0x6

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_VIBER_IMAGE:I

    .line 37
    const/4 v0, 0x7

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_LOCATION_LAT:I

    .line 38
    const/16 v0, 0x8

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_LOCATION_LNG:I

    .line 39
    const/16 v0, 0x9

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_PARTICIPANT_TYPE:I

    .line 40
    const/16 v0, 0xa

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_DISPLAY_NAME:I

    .line 41
    const/16 v0, 0xb

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_LOCATION_DATE:I

    .line 42
    const/16 v0, 0xc

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_NATIVE_PHOTO_ID:I

    .line 43
    const/16 v0, 0xd

    sput v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_HAS_PHOTO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 68
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 69
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_NUMBER:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNumber(Ljava/lang/String;)V

    .line 70
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_CONTACT_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactId(J)V

    .line 71
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_NATIVE_CONTACT_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativeContactId(J)V

    .line 72
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_CONTACT_NAME:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactName(Ljava/lang/String;)V

    .line 73
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_VIBER_NAME:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 74
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_VIBER_IMAGE:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 75
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_LOCATION_LAT:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLat(I)V

    .line 76
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_LOCATION_LNG:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLng(I)V

    .line 77
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_PARTICIPANT_TYPE:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setParticipantType(I)V

    .line 78
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_DISPLAY_NAME:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setDispalyName(Ljava/lang/String;)V

    .line 79
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_LOCATION_DATE:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLocationDate(J)V

    .line 80
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_NATIVE_PHOTO_ID:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativePhotoId(J)V

    .line 81
    sget v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->INDX_HAS_PHOTO:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setHasPhoto(Z)V

    .line 82
    return-object p0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/content/ContentValues;
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 46
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    .line 48
    const-string/jumbo v0, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    :cond_0
    const-string/jumbo v0, "number"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string/jumbo v0, "native_contact_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativeContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string/jumbo v0, "contact_name"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "viber_name"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "viber_image"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "location_lat"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getLat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string/jumbo v0, "location_lng"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getLng()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string/jumbo v0, "participant_type"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getParticipantType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string/jumbo v2, "display_name"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "location_date"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getLocationDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string/jumbo v0, "native_photo_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativePhotoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string/jumbo v2, "has_photo"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativePhotoId()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    return-object v1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic createContentValues(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/BaseEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntity(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "participants_info"

    return-object v0
.end method

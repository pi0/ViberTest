.class public Lcom/viber/voip/messages/conversation/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/adapters/g;


# static fields
.field private static final a:Lcom/viber/voip/messages/g;

.field public static final e:[Ljava/lang/String;


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:I

.field private E:J

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:J

.field private J:J

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:J

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Z

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:I

.field private w:J

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/viber/voip/messages/g;

    invoke-direct {v0}, Lcom/viber/voip/messages/g;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/an;->a:Lcom/viber/voip/messages/g;

    .line 24
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "messages._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "messages.address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "messages.date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "messages.read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "messages.status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "messages.type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "messages.body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "messages.opened"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "messages.description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "messages.location_lat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "messages.location_lng"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "messages.deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "messages.count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "messages.thumbnail_x"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "messages.thumbnail_y"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "messages.extra_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "messages.extra_mime"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "messages.extra_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "messages.extra_status"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "messages.fb_status"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "messages.twitter_status"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "messages.token"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "messages.seq"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "messages.conversation_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "messages.extra_upload_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "participants_info._id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "participants_info.contact_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "participants_info.display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "participants_info.participant_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "participants_info.contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "participants_info.native_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "messages.extra_download_id"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "messages.extra_bucket_name"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "messages.conversation_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "messages.flag"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "messages.extra_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "messages.group_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/an;->P:Z

    .line 153
    invoke-static {p0, p1}, Lcom/viber/voip/messages/conversation/an;->a(Lcom/viber/voip/messages/conversation/an;Landroid/database/Cursor;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/an;->P:Z

    .line 158
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/viber/voip/messages/conversation/an;->a(Lcom/viber/voip/messages/conversation/an;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 159
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/conversation/an;ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 203
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->b:J

    .line 204
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->d:Ljava/lang/String;

    .line 205
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->f:J

    .line 206
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->g:I

    .line 207
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getType()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->h:I

    .line 208
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->i:Ljava/lang/String;

    .line 209
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getOpened()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->j:I

    .line 210
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->k:Ljava/lang/String;

    .line 211
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->l:I

    .line 212
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->m:I

    .line 213
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDeleted()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->n:I

    .line 214
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->o:I

    .line 215
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->p:I

    .line 216
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->q:I

    .line 217
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->s:Ljava/lang/String;

    .line 218
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->t:Ljava/lang/String;

    .line 219
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->w:J

    .line 220
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->u:J

    .line 221
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getExtraStatus()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->v:I

    .line 222
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFbStatus()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->x:I

    .line 223
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getTwitterStatus()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->y:I

    .line 224
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->B:I

    .line 225
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->A:J

    .line 226
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    .line 228
    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/an;->E:J

    .line 229
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->F:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->G:Ljava/lang/String;

    .line 231
    iput p1, p0, Lcom/viber/voip/messages/conversation/an;->H:I

    .line 232
    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/an;->I:J

    .line 233
    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/an;->J:J

    .line 235
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->K:Ljava/lang/String;

    .line 236
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->L:Ljava/lang/String;

    .line 237
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->c:J

    .line 238
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->C:I

    .line 239
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getExtraFlags()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->D:I

    .line 240
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->M:J

    .line 241
    return-void
.end method

.method private static a(Lcom/viber/voip/messages/conversation/an;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->b:J

    .line 163
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->d:Ljava/lang/String;

    .line 164
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->f:J

    .line 165
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->g:I

    .line 166
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->h:I

    .line 167
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->i:Ljava/lang/String;

    .line 168
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->j:I

    .line 169
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->k:Ljava/lang/String;

    .line 170
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->l:I

    .line 171
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->m:I

    .line 172
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->n:I

    .line 173
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->o:I

    .line 174
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->p:I

    .line 175
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->q:I

    .line 176
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->s:Ljava/lang/String;

    .line 177
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->t:Ljava/lang/String;

    .line 178
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->w:J

    .line 179
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->u:J

    .line 180
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->v:I

    .line 181
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->x:I

    .line 182
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->y:I

    .line 183
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->B:I

    .line 184
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->A:J

    .line 185
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    .line 187
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->E:J

    .line 188
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->F:Ljava/lang/String;

    .line 189
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->G:Ljava/lang/String;

    .line 190
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->H:I

    .line 191
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->I:J

    .line 192
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->J:J

    .line 194
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->K:Ljava/lang/String;

    .line 195
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->L:Ljava/lang/String;

    .line 196
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->c:J

    .line 197
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->C:I

    .line 198
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/an;->D:I

    .line 199
    const/16 v0, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->M:J

    .line 200
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->H:I

    return v0
.end method

.method public B()J
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->I:J

    return-wide v0
.end method

.method public C()J
    .locals 2

    .prologue
    .line 374
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->J:J

    return-wide v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->B:I

    return v0
.end method

.method public E()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->A:J

    return-wide v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->v:I

    return v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->K:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->L:Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->C:I

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->a:Lcom/viber/voip/messages/g;

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/g;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->N:Ljava/lang/String;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->N:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->O:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 419
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->a:Lcom/viber/voip/messages/g;

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/g;->b(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/an;->O:Ljava/lang/String;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->O:Ljava/lang/String;

    return-object v0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->J()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->J()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Z
    .locals 4

    .prologue
    .line 437
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->D:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 4

    .prologue
    .line 441
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->D:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 4

    .prologue
    .line 445
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->D:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->o()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Z
    .locals 2

    .prologue
    .line 453
    const-string/jumbo v0, "sms"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->o()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Z
    .locals 2

    .prologue
    .line 465
    const-string/jumbo v0, "notif"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 2

    .prologue
    .line 469
    const-string/jumbo v0, "call"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 2

    .prologue
    .line 473
    const-string/jumbo v0, "missed_call"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 2

    .prologue
    .line 489
    const-string/jumbo v0, "sticker"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 2

    .prologue
    .line 493
    const-string/jumbo v0, "location"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 2

    .prologue
    .line 497
    const-string/jumbo v0, "animated_message"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->b:J

    return-wide v0
.end method

.method public aa()Z
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ab()Z
    .locals 2

    .prologue
    .line 505
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ac()Z
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->A()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ad()Z
    .locals 2

    .prologue
    .line 515
    const-string/jumbo v0, "sms"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ae()Z
    .locals 2

    .prologue
    .line 519
    const-string/jumbo v0, "sound"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public af()Z
    .locals 2

    .prologue
    .line 523
    const-string/jumbo v0, "formatted_follow"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ag()Z
    .locals 2

    .prologue
    .line 527
    const-string/jumbo v0, "image"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "animated_message"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sound"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "location"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "formatted_follow"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ah()Z
    .locals 2

    .prologue
    .line 532
    const-string/jumbo v0, "sms"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "text"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai()Z
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->v:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aj()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->T()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->j:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    invoke-static {p0}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/an;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 558
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->u()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/an;->t()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->t:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->l:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->m:I

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->u:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->c:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->M:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->f:J

    return-wide v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->g:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->h:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->i:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->n:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->o:I

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MessageLoaderEntity [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", opened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", facebookStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", twitterStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->A:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->E:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantContactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/an;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->I:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantNativeContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/an;->J:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraBuket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", formatedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", formatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/an;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/an;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/viber/voip/messages/conversation/an;->q:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->s:Ljava/lang/String;

    return-object v0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->w:J

    return-wide v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/an;->E:J

    return-wide v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->F:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/an;->G:Ljava/lang/String;

    return-object v0
.end method

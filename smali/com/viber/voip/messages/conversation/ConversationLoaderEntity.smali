.class public Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:[Ljava/lang/String;

.field public static final b:[I


# instance fields
.field private c:J

.field private d:I

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:[J

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 24
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "conversations._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "conversations.conversation_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "conversations.date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "conversations.flags"

    aput-object v2, v0, v1

    const-string/jumbo v1, "conversations.name"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string/jumbo v2, "conversations.recipient_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "conversations.last_message_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "conversations.participant_id_1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "conversations.participant_id_2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "conversations.participant_id_3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "conversations.participant_id_4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "conversations.deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "conversations.unread_calls_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "conversations.unread_message_count"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "conversations.group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "messages.extra_mime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "messages.body"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "messages._id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "participants_info._id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "participants_info.contact_name"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "participants_info.display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "participants_info.participant_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "participants_info.contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "participants_info.native_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "participants_info.number"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "participants_info.native_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "conversations.mute_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "messages.count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    .line 84
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->b:[I

    .line 402
    new-instance v0, Lcom/viber/voip/messages/conversation/p;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/p;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;Landroid/database/Cursor;Z)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    .line 157
    invoke-static {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;Landroid/database/Cursor;Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->h:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->i:J

    .line 129
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->k:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->m:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->q:J

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->r:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->t:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->u:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->v:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->w:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->y:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->x:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->z:I

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    .line 161
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g:Ljava/lang/String;

    .line 162
    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n:J

    .line 163
    iput p4, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    .line 164
    return-void
.end method

.method private static a(JLcom/viber/voip/messages/conversation/ConversationLoaderEntity;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-object v1, p2, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    aput-wide p0, v1, v0

    .line 217
    const/4 v1, 0x1

    .line 218
    :goto_0
    sget-object v2, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 219
    sget-object v2, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->b:[I

    aget v2, v2, v0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 220
    iget-object v4, p2, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    array-length v4, v4

    if-ge v1, v4, :cond_0

    cmp-long v4, v2, p0

    if-eqz v4, :cond_0

    .line 221
    iget-object v4, p2, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    aput-wide v2, v4, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    .line 180
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    .line 182
    if-eqz p2, :cond_0

    const-string/jumbo v0, "max_message_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 183
    const-string/jumbo v0, "max_message_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    .line 188
    :goto_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f:I

    .line 189
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g:Ljava/lang/String;

    .line 190
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->h:Ljava/lang/String;

    .line 191
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->i:J

    .line 194
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a(JLcom/viber/voip/messages/conversation/ConversationLoaderEntity;Landroid/database/Cursor;)V

    .line 196
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->k:I

    .line 197
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->m:I

    .line 198
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l:I

    .line 199
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n:J

    .line 200
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o:Ljava/lang/String;

    .line 201
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p:Ljava/lang/String;

    .line 202
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->q:J

    .line 203
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->r:I

    .line 204
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s:Ljava/lang/String;

    .line 205
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->t:Ljava/lang/String;

    .line 206
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->u:I

    .line 207
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->v:J

    .line 208
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->w:J

    .line 209
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->y:Ljava/lang/String;

    .line 210
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->x:J

    .line 211
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->z:I

    .line 212
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    goto/16 :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 351
    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->z:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 356
    iget-wide v2, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    iget-wide v4, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    iget-wide v2, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    iget-wide v4, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    .line 359
    goto :goto_0

    .line 361
    :cond_2
    iget-wide v2, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    iget-wide v4, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()[J
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->q:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->r:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->t:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->u:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l:I

    return v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n:J

    return-wide v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->m:I

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->v:J

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->w:J

    return-wide v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 4

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationLoaderEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unreadMessagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unreadCallsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativeContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativePhotoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 320
    const-string/jumbo v0, "notif"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    iget v2, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f:I

    new-array v3, v1, [I

    aput v0, v3, v0

    invoke-static {v2, v3}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "viber"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public w()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 329
    iget v2, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f:I

    new-array v3, v1, [I

    aput v1, v3, v0

    invoke-static {v2, v3}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "viber"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 373
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->v:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 396
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->w:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 399
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    return-void
.end method

.method public x()Z
    .locals 4

    .prologue
    .line 334
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-static {p0}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->y:Ljava/lang/String;

    return-object v0
.end method

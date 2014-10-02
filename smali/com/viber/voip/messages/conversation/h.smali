.class public Lcom/viber/voip/messages/conversation/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:J

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:J

.field private s:Ljava/lang/String;

.field private t:I

.field private u:J

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "conversations._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "conversations.conversation_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "conversations.flags"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "conversations.name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "conversations.group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "conversations.recipient_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "conversations.last_message_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "conversations.message_draft"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "conversations.share_location"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "conversations.smart_notification"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "conversations.background_landscape"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "conversations.background_portrait"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "participants_info.contact_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "participants_info.display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "participants_info.participant_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "participants_info.contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "participants_info.native_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "participants_info.number"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "conversations.mute_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "conversations.read_notification_token"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "conversations.media_msg_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p0, p1}, Lcom/viber/voip/messages/conversation/h;->a(Lcom/viber/voip/messages/conversation/h;Landroid/database/Cursor;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p0, p1}, Lcom/viber/voip/messages/conversation/h;->a(Lcom/viber/voip/messages/conversation/h;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 96
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/conversation/h;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->b:J

    .line 127
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    .line 128
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->d:I

    .line 129
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->e:Ljava/lang/String;

    .line 130
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->f:J

    .line 131
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->g:Ljava/lang/String;

    .line 132
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->h:J

    .line 133
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->i:Ljava/lang/String;

    .line 134
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->j:I

    .line 135
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->k:I

    .line 136
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->l:Ljava/lang/String;

    .line 137
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->m:Ljava/lang/String;

    .line 139
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->n:Ljava/lang/String;

    .line 140
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->o:Ljava/lang/String;

    .line 141
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->p:I

    .line 142
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->q:J

    .line 143
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->r:J

    .line 144
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->s:Ljava/lang/String;

    .line 145
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->t:I

    .line 146
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->u:J

    .line 147
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->v:I

    .line 148
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/conversation/h;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->b:J

    .line 100
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    .line 101
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->d:I

    .line 102
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->e:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->f:J

    .line 104
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->g:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getLastMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->h:J

    .line 106
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMessageDraft()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->i:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getShareLocation()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->j:I

    .line 108
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getSmartNotifications()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->k:I

    .line 109
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundLandscape()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->l:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getBackgroundPortrait()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->m:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMuteNotifications()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->t:I

    .line 112
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getReadNotificationToken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->u:J

    .line 113
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMediaMessageCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->v:I

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/h;->p:I

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->o:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->b:J

    return-wide v0
.end method

.method public a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->n:Ljava/lang/String;

    .line 120
    iget-wide v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->s:J

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->q:J

    .line 121
    iget-wide v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->t:J

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->r:J

    .line 122
    iget-object v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/h;->s:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->f:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/h;->q:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/viber/voip/messages/conversation/h;->v:I

    return v0
.end method

.method public n()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget v0, p0, Lcom/viber/voip/messages/conversation/h;->d:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 239
    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->t:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-static {p0}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 255
    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->k:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationItemLoaderEntity [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/h;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/h;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageDraft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shareLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smartNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundPortrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/h;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativeContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/h;->r:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/h;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", muteNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/h;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", readNotificationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/h;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

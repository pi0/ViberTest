.class public Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/entity/ConversationEntity;


# instance fields
.field private backgroundLandscape:Ljava/lang/String;

.field private backgroundPortrait:Ljava/lang/String;

.field private conversationType:I

.field private date:J

.field private deleted:I

.field private deletedToken:J

.field private flags:I

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private lastMessageId:J

.field private mediaMessageCount:I

.field private messageDraft:Ljava/lang/String;

.field private muteNotifications:I

.field private number:Ljava/lang/String;

.field private participantInfoId1:J

.field private participantInfoId2:J

.field private participantInfoId3:J

.field private participantInfoId4:J

.field private participantInfoId5:J

.field private readNotificationToken:J

.field private shareLocation:I

.field private smartEventDate:J

.field private smartNotifications:I

.field private unreadCallsCount:I

.field private unreadMessagesCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs containFlags([I)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    invoke-static {v0, p1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public getBackgroundLandscape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->backgroundLandscape:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundPortrait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->backgroundPortrait:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 324
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->conversationType:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->date:J

    return-wide v0
.end method

.method public getDeleted()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deleted:I

    return v0
.end method

.method public getDeletedToken()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deletedToken:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    return v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupId:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, ""

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLastMessageId()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->lastMessageId:J

    return-wide v0
.end method

.method public getMediaMessageCount()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->mediaMessageCount:I

    return v0
.end method

.method public getMessageDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->messageDraft:Ljava/lang/String;

    return-object v0
.end method

.method public getMuteNotifications()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->muteNotifications:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantInfoId1()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId1:J

    return-wide v0
.end method

.method public getParticipantInfoId2()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId2:J

    return-wide v0
.end method

.method public getParticipantInfoId3()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId3:J

    return-wide v0
.end method

.method public getParticipantInfoId4()J
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId4:J

    return-wide v0
.end method

.method public getParticipantInfoId5()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId5:J

    return-wide v0
.end method

.method public getReadNotificationToken()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->readNotificationToken:J

    return-wide v0
.end method

.method public getShareLocation()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->shareLocation:I

    return v0
.end method

.method public getShareLocation(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->shareLocation:I

    .line 65
    return-void
.end method

.method public getSmartEventDate()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartEventDate:J

    return-wide v0
.end method

.method public getSmartNotifications()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartNotifications:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "conversations"

    return-object v0
.end method

.method public getUnreadCallsCount()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->unreadCallsCount:I

    return v0
.end method

.method public getUnreadMessagesCount()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->unreadMessagesCount:I

    return v0
.end method

.method public isConversationGroup()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->conversationType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 333
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deleted:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMuteNotifications()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->muteNotifications:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublicGroup()Z
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->conversationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 314
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->shareLocation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartNotificationOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 319
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartNotifications:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemConversation()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 237
    iget v2, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    new-array v3, v1, [I

    aput v0, v3, v0

    invoke-static {v2, v3}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "viber"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

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

.method public isTrialPublicGroup()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->conversationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFlag(I)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    invoke-static {v0, p1}, Lcom/viber/voip/util/bk;->b(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    .line 171
    return-void
.end method

.method public setBackgroundLandscape(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->backgroundLandscape:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setBackgroundPortrait(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->backgroundPortrait:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->conversationType:I

    .line 74
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->date:J

    .line 188
    return-void
.end method

.method public setDeleted(I)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deleted:I

    .line 310
    return-void
.end method

.method public setDeletedToken(J)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deletedToken:J

    .line 92
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    invoke-static {v0, p1}, Lcom/viber/voip/util/bk;->a(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    .line 167
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    .line 163
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupId:J

    .line 83
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setLastMessageId(J)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->lastMessageId:J

    .line 248
    return-void
.end method

.method public setMediaMessageCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->mediaMessageCount:I

    .line 228
    return-void
.end method

.method public setMessageDraft(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->messageDraft:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setMuteNotifications(I)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->muteNotifications:I

    .line 154
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->number:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setParticipantInfoId1(J)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId1:J

    .line 257
    return-void
.end method

.method public setParticipantInfoId2(J)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId2:J

    .line 266
    return-void
.end method

.method public setParticipantInfoId3(J)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId3:J

    .line 275
    return-void
.end method

.method public setParticipantInfoId4(J)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId4:J

    .line 284
    return-void
.end method

.method public setParticipantInfoId5(J)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId5:J

    .line 293
    return-void
.end method

.method public setReadNotificationToken(J)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->readNotificationToken:J

    .line 301
    return-void
.end method

.method public setShareLocation(I)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->shareLocation:I

    .line 179
    return-void
.end method

.method public setSmartEventDate(J)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartEventDate:J

    .line 140
    return-void
.end method

.method public setSmartNotifications(I)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartNotifications:I

    .line 131
    return-void
.end method

.method public setUnreadCallsCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->unreadCallsCount:I

    .line 219
    return-void
.end method

.method public setUnreadMessagesCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->unreadMessagesCount:I

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationEntityImpl [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->conversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shareLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->shareLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageDraft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->messageDraft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unreadMessagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->unreadMessagesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unreadCallsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->unreadCallsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deletedToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deletedToken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->deleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->backgroundLandscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundPortrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->backgroundPortrait:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smartNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartNotifications:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smartEventDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->smartEventDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", muteNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->muteNotifications:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->lastMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId3:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId4:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->participantInfoId5:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

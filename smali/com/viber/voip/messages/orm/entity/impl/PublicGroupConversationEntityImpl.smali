.class public Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# instance fields
.field private addressString:Ljava/lang/String;

.field private backgroundId:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private groupId:J

.field private groupRole:I

.field private groupUri:Ljava/lang/String;

.field private iconId:Ljava/lang/String;

.field private inviter:Ljava/lang/String;

.field private lastLocalMessageId:I

.field private lastMediaType:I

.field private lastMessageText:Ljava/lang/String;

.field private lastServerMessageId:I

.field private locationLat:I

.field private locationLng:I

.field private revision:I

.field private senderPhone:Ljava/lang/String;

.field private tagLine:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private verified:Z

.field private watchersCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method

.method public static toTagsArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-static {p0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toTagsString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->addressString:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->backgroundId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupId:J

    return-wide v0
.end method

.method public getGroupRole()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupRole:I

    return v0
.end method

.method public getGroupUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->iconId:Ljava/lang/String;

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLocalMessageId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastLocalMessageId:I

    return v0
.end method

.method public getLastMediaType()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastMediaType:I

    return v0
.end method

.method public getLastMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getLastServerMessageId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastServerMessageId:I

    return v0
.end method

.method public getLocationLat()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->locationLat:I

    return v0
.end method

.method public getLocationLng()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->locationLng:I

    return v0
.end method

.method public getRevision()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->revision:I

    return v0
.end method

.method public getSenderPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->senderPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, "group_conversations_extras"

    return-object v0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tagLine:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tags:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->toTagsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWatchersCount()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->watchersCount:I

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->verified:Z

    return v0
.end method

.method public setAddressString(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->addressString:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setBackgroundId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->backgroundId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->country:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupId:J

    .line 38
    return-void
.end method

.method public setGroupRole(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupRole:I

    .line 46
    return-void
.end method

.method public setGroupUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupUri:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIconId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->iconId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setInviter(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->inviter:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setLastLocalMessageId(I)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastLocalMessageId:I

    .line 170
    return-void
.end method

.method public setLastMediaType(I)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastMediaType:I

    .line 218
    return-void
.end method

.method public setLastMessageText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastMessageText:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setLastServerMessageId(I)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastServerMessageId:I

    .line 118
    return-void
.end method

.method public setLocationLat(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->locationLat:I

    .line 94
    return-void
.end method

.method public setLocationLng(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->locationLng:I

    .line 102
    return-void
.end method

.method public setRevision(I)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->revision:I

    .line 62
    return-void
.end method

.method public setSenderPhone(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->senderPhone:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setTagLine(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tagLine:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tags:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTagsArray([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-static {p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->toTagsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTags(Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->verified:Z

    .line 186
    return-void
.end method

.method public setWatchersCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->watchersCount:I

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublicGroupConversationEntityImpl{, groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->groupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->iconId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->backgroundId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", addressString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->addressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->locationLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->locationLng:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", watchersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->watchersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastServerMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagLine=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->tagLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastLocalMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inviter=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->inviter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMediaType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastMediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->lastMessageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderPhone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->senderPhone:Ljava/lang/String;

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

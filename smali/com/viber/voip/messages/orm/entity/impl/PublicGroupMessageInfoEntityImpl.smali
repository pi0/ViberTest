.class public Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# instance fields
.field private conversationId:J

.field private liked:I

.field private likesCount:I

.field private messageToken:J

.field private syncLike:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->conversationId:J

    return-wide v0
.end method

.method public getLiked()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->liked:I

    return v0
.end method

.method public getLikesCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->likesCount:I

    return v0
.end method

.method public getMessageToken()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->messageToken:J

    return-wide v0
.end method

.method public getSyncLike()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->syncLike:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "public_messages_extras"

    return-object v0
.end method

.method public setConversationId(J)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->conversationId:J

    .line 22
    return-void
.end method

.method public setLiked(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->liked:I

    .line 38
    return-void
.end method

.method public setLikesCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->likesCount:I

    .line 46
    return-void
.end method

.method public setMessageToken(J)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->messageToken:J

    .line 30
    return-void
.end method

.method public setSyncLike(I)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->syncLike:I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublicGroupMessageInfoEntityImpl [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->messageToken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", liked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->liked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", syncLike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->syncLike:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

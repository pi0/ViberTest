.class public Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# instance fields
.field private conversationId:J

.field private lastMessageId:J

.field private participantInfoId:J

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->conversationId:J

    return-wide v0
.end method

.method public getLastMessageId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->lastMessageId:J

    return-wide v0
.end method

.method public getParticipantInfoId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->participantInfoId:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->status:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "participants"

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConversationId(J)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->conversationId:J

    .line 30
    return-void
.end method

.method public setLastMessageId(J)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->lastMessageId:J

    .line 38
    return-void
.end method

.method public setParticipantInfoId(J)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->participantInfoId:J

    .line 22
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->status:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ParticipantEntityImpl [conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantInfoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->participantInfoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->lastMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

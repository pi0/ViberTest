.class public Lcom/viber/voip/messages/controller/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/d;


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:I

.field private d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/viber/voip/messages/controller/b/b;->a:J

    .line 26
    iput-object p3, p0, Lcom/viber/voip/messages/controller/b/b;->b:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/viber/voip/messages/controller/b/b;->c:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    .line 21
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/controller/b/b;->d:J

    .line 22
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/controller/b/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 86
    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 92
    :cond_0
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 93
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/b;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 94
    iget-object v1, p0, Lcom/viber/voip/messages/controller/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 95
    iget v1, p0, Lcom/viber/voip/messages/controller/b/b;->c:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 96
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/b;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 99
    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 100
    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 104
    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 105
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 107
    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBucket(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 117
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 118
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 119
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDescription(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 121
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 122
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 125
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLat(I)V

    .line 127
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLng(I)V

    .line 128
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setObjectId(J)V

    .line 130
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 131
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/controller/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/b/b;->a:J

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/e;-><init>(JLjava/lang/String;)V

    .line 138
    :goto_0
    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/messages/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const-string/jumbo v0, "location"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLat(I)V

    .line 73
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLng(I)V

    .line 74
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBucket(Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 76
    const/high16 v1, 0x42c8

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 77
    const/high16 v1, 0x4348

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 78
    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/controller/b/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0, v0}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setObjectId(J)V

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 60
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/controller/b/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    .line 36
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/controller/b/b;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDescription(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 49
    return-object v0
.end method

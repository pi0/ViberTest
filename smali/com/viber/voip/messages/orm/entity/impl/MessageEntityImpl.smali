.class public Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# instance fields
.field private body:Ljava/lang/String;

.field private bucket:Ljava/lang/String;

.field private conversationId:J

.field private conversationType:I

.field private count:I

.field private date:J

.field private deleted:I

.field private description:Ljava/lang/String;

.field private downloadId:Ljava/lang/String;

.field private duration:J

.field private extraFlags:I

.field private extraStatus:I

.field private fbStatus:I

.field private flag:I

.field private groupId:J

.field private lat:I

.field private lng:I

.field private mediaUri:Ljava/lang/String;

.field private messageGlobalId:I

.field private messageSeq:I

.field private messageToken:J

.field private mimeType:Ljava/lang/String;

.field private objectId:J

.field private opened:I

.field private participantId:J

.field private realDate:J

.field private recipientNumber:Ljava/lang/String;

.field private status:I

.field private syncRead:I

.field private thumbnailHeight:I

.field private thumbnailWidth:I

.field private twitterStatus:I

.field private type:I

.field private unread:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->unread:I

    return-void
.end method


# virtual methods
.method public addExtraFlag(I)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    invoke-static {v0, p1}, Lcom/viber/voip/util/bk;->a(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    .line 255
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 498
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationId:J

    return-wide v0
.end method

.method public getConversationType()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationType:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->count:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->date:J

    return-wide v0
.end method

.method public getDeleted()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->deleted:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->duration:J

    return-wide v0
.end method

.method public getExtraFlags()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    return v0
.end method

.method public getExtraStatus()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraStatus:I

    return v0
.end method

.method public getFbStatus()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->fbStatus:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->flag:I

    return v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->groupId:J

    return-wide v0
.end method

.method public getLat()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->lat:I

    return v0
.end method

.method public getLng()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->lng:I

    return v0
.end method

.method public getLocation()Lcom/viber/jni/LocationInfo;
    .locals 3

    .prologue
    .line 466
    new-instance v0, Lcom/viber/jni/LocationInfo;

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    return-object v0
.end method

.method public getMediaFlag()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 245
    iget v3, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    new-array v4, v0, [I

    aput v0, v4, v2

    invoke-static {v3, v4}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_0
    iget v3, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    new-array v0, v0, [I

    aput v1, v0, v2

    invoke-static {v3, v0}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 248
    goto :goto_0

    :cond_1
    move v0, v2

    .line 250
    goto :goto_0
.end method

.method public getMediaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mediaUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageGlobalId()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageGlobalId:I

    return v0
.end method

.method public getMessageSeq()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageSeq:I

    return v0
.end method

.method public getMessageToken()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageToken:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->objectId:J

    return-wide v0
.end method

.method public getOpened()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->opened:I

    return v0
.end method

.method public getParticipantId()J
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->participantId:J

    return-wide v0
.end method

.method public getPublicCacheMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicWatcher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string/jumbo v0, "image_public_cache"

    .line 522
    :goto_0
    return-object v0

    .line 518
    :cond_0
    const-string/jumbo v0, "video"

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const-string/jumbo v0, "video_public_cache"

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRealDate()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->realDate:J

    return-wide v0
.end method

.method public getRecipientNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->recipientNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    const-string/jumbo v0, ""

    .line 337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->recipientNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->status:I

    return v0
.end method

.method public getSyncRead()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->syncRead:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    const-string/jumbo v0, "messages"

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->thumbnailHeight:I

    return v0
.end method

.method public declared-synchronized getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 484
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->thumbnailWidth:I

    return v0
.end method

.method public getTwitterStatus()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->twitterStatus:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->type:I

    return v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->unread:I

    return v0
.end method

.method public isActivateSecondaryNotification()Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

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

.method public isCall()Z
    .locals 2

    .prologue
    .line 197
    const-string/jumbo v0, "call"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 489
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->deleted:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwardedFromPG()Z
    .locals 4

    .prologue
    .line 237
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public isForwardedMessage()Z
    .locals 4

    .prologue
    .line 233
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isHasAnyStatus([I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 105
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 511
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLoactionStatus()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMediaUpload()Z
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isForwardedFromPG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getObjectId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotification()Z
    .locals 2

    .prologue
    .line 447
    const-string/jumbo v0, "notif"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->opened:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutgoing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutgoingToGroup()Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublicGroup()Z
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationType:I

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

.method public isPublicWatcher()Z
    .locals 4

    .prologue
    .line 225
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public isRakutenSystemMessage()Z
    .locals 4

    .prologue
    .line 221
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->unread:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadNotSynced()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 493
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->syncRead:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getExtraStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResendMessage()Z
    .locals 4

    .prologue
    .line 241
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x9

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public isSenderMessage()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentMessage()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 201
    const-string/jumbo v0, "sms"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSyncedMessage()Z
    .locals 4

    .prologue
    .line 229
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public isSystemMessage()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

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

.method public isToSend()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 507
    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViberMessage()Z
    .locals 2

    .prologue
    .line 435
    const-string/jumbo v0, "sms"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

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

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->body:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->bucket:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setConversationId(J)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationId:J

    .line 323
    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationType:I

    .line 331
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->count:I

    .line 403
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->date:J

    .line 66
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->realDate:J

    .line 67
    return-void
.end method

.method public setDeleted(I)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->deleted:I

    .line 83
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->description:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setDownloadId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->downloadId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->duration:J

    .line 299
    return-void
.end method

.method public setExtraFlags(I)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraFlags:I

    .line 259
    return-void
.end method

.method public setExtraStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraStatus:I

    .line 158
    return-void
.end method

.method public setFbStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->fbStatus:I

    .line 275
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->flag:I

    .line 307
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->groupId:J

    .line 315
    return-void
.end method

.method public setLat(I)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->lat:I

    .line 134
    return-void
.end method

.method public setLng(I)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->lng:I

    .line 142
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 6
    .parameter

    .prologue
    const-wide v4, 0x416312d000000000L

    .line 470
    if-eqz p1, :cond_0

    .line 471
    new-instance v0, Lcom/viber/jni/LocationInfo;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLocation(Lcom/viber/jni/LocationInfo;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setLocation(Lcom/viber/jni/LocationInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p1}, Lcom/viber/jni/LocationInfo;->getNativeLatitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLat(I)V

    .line 461
    invoke-virtual {p1}, Lcom/viber/jni/LocationInfo;->getNativeLongitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLng(I)V

    .line 463
    :cond_0
    return-void
.end method

.method public setMediaUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mediaUri:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setMessageGlobalId(I)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageGlobalId:I

    .line 456
    return-void
.end method

.method public setMessageSeq(I)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageSeq:I

    .line 358
    return-void
.end method

.method public setMessageToken(J)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageToken:J

    .line 366
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setObjectId(J)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->objectId:J

    .line 174
    return-void
.end method

.method public setOpened(I)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->opened:I

    .line 291
    return-void
.end method

.method public setParticipantId(J)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->participantId:J

    .line 411
    return-void
.end method

.method public setRealDate(J)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->realDate:J

    .line 71
    return-void
.end method

.method public setRecipientNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->recipientNumber:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->status:I

    .line 114
    return-void
.end method

.method public setSyncRead(I)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->syncRead:I

    .line 194
    return-void
.end method

.method public setThumbnailHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->thumbnailHeight:I

    .line 374
    return-void
.end method

.method public setThumbnailWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->thumbnailWidth:I

    .line 382
    return-void
.end method

.method public setTwitterStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->twitterStatus:I

    .line 283
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->type:I

    .line 87
    return-void
.end method

.method public setUnread(I)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->unread:I

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MessageEntityImpl [groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->conversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->participantId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recipientNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->recipientNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->unread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->body:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/voip/util/gj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", opened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->opened:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageToken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->lng:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->deleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->thumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->thumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mediaUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mediaUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->extraStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->objectId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fbStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->fbStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", twitterStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->twitterStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", syncRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->syncRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageGlobalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->messageGlobalId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

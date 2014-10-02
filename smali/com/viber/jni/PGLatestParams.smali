.class public Lcom/viber/jni/PGLatestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private groupID:J

.field private lastMediaType:I

.field private lastMsgID:I

.field private lastMsgText:Ljava/lang/String;

.field private lastTimestampOfMsgs:J

.field private lastTokenOfMsgs:J

.field private numWatchers:I

.field private revision:I

.field private senderEncryptedPhone:Ljava/lang/String;


# direct methods
.method private constructor <init>(JIIIILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x3

    const-string/jumbo v1, "PGLatestParams"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-wide p1, p0, Lcom/viber/jni/PGLatestParams;->groupID:J

    .line 21
    iput p3, p0, Lcom/viber/jni/PGLatestParams;->revision:I

    .line 22
    iput p4, p0, Lcom/viber/jni/PGLatestParams;->numWatchers:I

    .line 23
    iput p5, p0, Lcom/viber/jni/PGLatestParams;->lastMsgID:I

    .line 24
    iput p6, p0, Lcom/viber/jni/PGLatestParams;->lastMediaType:I

    .line 25
    iput-object p7, p0, Lcom/viber/jni/PGLatestParams;->lastMsgText:Ljava/lang/String;

    .line 26
    iput-object p8, p0, Lcom/viber/jni/PGLatestParams;->senderEncryptedPhone:Ljava/lang/String;

    .line 27
    iput-wide p9, p0, Lcom/viber/jni/PGLatestParams;->lastTokenOfMsgs:J

    .line 28
    iput-wide p11, p0, Lcom/viber/jni/PGLatestParams;->lastTimestampOfMsgs:J

    .line 29
    return-void
.end method


# virtual methods
.method public getGroupID()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/viber/jni/PGLatestParams;->groupID:J

    return-wide v0
.end method

.method public getLastMediaType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/viber/jni/PGLatestParams;->lastMediaType:I

    return v0
.end method

.method public getLastMsgID()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/viber/jni/PGLatestParams;->lastMsgID:I

    return v0
.end method

.method public getLastMsgText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/jni/PGLatestParams;->lastMsgText:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTimestampOfMsgs()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/viber/jni/PGLatestParams;->lastTimestampOfMsgs:J

    return-wide v0
.end method

.method public getLastTokenOfMsgs()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/viber/jni/PGLatestParams;->lastTokenOfMsgs:J

    return-wide v0
.end method

.method public getNumWatchers()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/viber/jni/PGLatestParams;->numWatchers:I

    return v0
.end method

.method public getRevision()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/viber/jni/PGLatestParams;->revision:I

    return v0
.end method

.method public getSenderEncryptedPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/jni/PGLatestParams;->senderEncryptedPhone:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PGLatestParams [groupID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PGLatestParams;->groupID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PGLatestParams;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numWatchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PGLatestParams;->numWatchers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMsgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PGLatestParams;->lastMsgID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PGLatestParams;->lastMediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMsgText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PGLatestParams;->lastMsgText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderEncryptedPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PGLatestParams;->senderEncryptedPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastTokenOfMsgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PGLatestParams;->lastTokenOfMsgs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastTimestampOfMsgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PGLatestParams;->lastTimestampOfMsgs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

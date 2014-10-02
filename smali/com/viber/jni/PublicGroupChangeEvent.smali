.class public Lcom/viber/jni/PublicGroupChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actor:Ljava/lang/String;

.field private actorPhoneNumber:Ljava/lang/String;

.field attributes:Lcom/viber/jni/CGroupAttributesChanged;

.field private eventId:I

.field private eventToken:J

.field private flags:I

.field members:[Lcom/viber/jni/PublicGroupUserInfo;

.field private msgType:I

.field private numWatchers:I

.field private timeSent:J


# direct methods
.method constructor <init>(JJILjava/lang/String;Ljava/lang/String;II[Lcom/viber/jni/PublicGroupUserInfo;Lcom/viber/jni/CGroupAttributesChanged;I)V
    .locals 0
    .parameter
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->timeSent:J

    .line 27
    iput-wide p3, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventToken:J

    .line 28
    iput p5, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventId:I

    .line 29
    iput-object p6, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actor:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actorPhoneNumber:Ljava/lang/String;

    .line 31
    iput p8, p0, Lcom/viber/jni/PublicGroupChangeEvent;->flags:I

    .line 32
    iput p9, p0, Lcom/viber/jni/PublicGroupChangeEvent;->msgType:I

    .line 33
    iput-object p10, p0, Lcom/viber/jni/PublicGroupChangeEvent;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    .line 34
    iput-object p11, p0, Lcom/viber/jni/PublicGroupChangeEvent;->attributes:Lcom/viber/jni/CGroupAttributesChanged;

    .line 35
    iput p12, p0, Lcom/viber/jni/PublicGroupChangeEvent;->numWatchers:I

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    const-string/jumbo v1, "PublicGroupChangeEvent"

    const-string/jumbo v2, "init Bundle"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "Timesent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->timeSent:J

    .line 41
    const-string/jumbo v0, "EventToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventToken:J

    .line 42
    const-string/jumbo v0, "EventID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventId:I

    .line 43
    const-string/jumbo v0, "Actor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actor:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "ActorPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actorPhoneNumber:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "Flags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->flags:I

    .line 46
    const-string/jumbo v0, "MsgType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->msgType:I

    .line 47
    const-string/jumbo v0, "NumWatchers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->numWatchers:I

    .line 49
    const-string/jumbo v0, "MembersSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 50
    if-lez v7, :cond_1

    .line 51
    new-array v0, v7, [Lcom/viber/jni/PublicGroupUserInfo;

    iput-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    .line 52
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Member"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "PhoneNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string/jumbo v2, "ClientName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    const-string/jumbo v2, "DownloadID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string/jumbo v2, "EncryptedPhoneNumber"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string/jumbo v5, "GroupRole"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 59
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/viber/jni/PublicGroupChangeEvent;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    new-instance v0, Lcom/viber/jni/PublicGroupUserInfo;

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PublicGroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v8, v6

    .line 52
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo v0, "Attributes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    new-instance v1, Lcom/viber/jni/CGroupAttributesChanged;

    invoke-direct {v1, v0}, Lcom/viber/jni/CGroupAttributesChanged;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->attributes:Lcom/viber/jni/CGroupAttributesChanged;

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getActorPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actorPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Lcom/viber/jni/CGroupAttributesChanged;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->attributes:Lcom/viber/jni/CGroupAttributesChanged;

    return-object v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventId:I

    return v0
.end method

.method public getEventToken()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventToken:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->flags:I

    return v0
.end method

.method public getMembers()[Lcom/viber/jni/PublicGroupUserInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->msgType:I

    return v0
.end method

.method public getNumWatchers()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->numWatchers:I

    return v0
.end method

.method public getTimeSent()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupChangeEvent;->timeSent:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublicGroupChangeEvent [timeSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->timeSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventToken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->eventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actorPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->actorPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->attributes:Lcom/viber/jni/CGroupAttributesChanged;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numWatchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupChangeEvent;->numWatchers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/viber/jni/PublicGroupMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private downloadId:Ljava/lang/String;

.field private duration:J

.field private location:Lcom/viber/jni/LocationInfo;

.field private mediaType:I

.field private messageID:I

.field private messageSeq:I

.field private messageToken:J

.field private msgInfo:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private timeSent:J

.field private uploadDuration:J


# direct methods
.method private constructor <init>(IJILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 5
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v2, 0x3

    const-string/jumbo v3, "PublicGroupMessage"

    const-string/jumbo v4, "init"

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lcom/viber/jni/PublicGroupMessage;->messageSeq:I

    .line 36
    iput-wide p2, p0, Lcom/viber/jni/PublicGroupMessage;->messageToken:J

    .line 37
    iput p4, p0, Lcom/viber/jni/PublicGroupMessage;->messageID:I

    .line 38
    iput-object p5, p0, Lcom/viber/jni/PublicGroupMessage;->phoneNumber:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/viber/jni/PublicGroupMessage;->text:Ljava/lang/String;

    .line 40
    iput-wide p7, p0, Lcom/viber/jni/PublicGroupMessage;->timeSent:J

    .line 41
    iput p9, p0, Lcom/viber/jni/PublicGroupMessage;->mediaType:I

    .line 42
    iput-object p10, p0, Lcom/viber/jni/PublicGroupMessage;->senderName:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->location:Lcom/viber/jni/LocationInfo;

    .line 44
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->bucketName:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->downloadId:Ljava/lang/String;

    .line 47
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->duration:J

    .line 48
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->uploadDuration:J

    .line 49
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->msgInfo:Ljava/lang/String;

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x3

    const-string/jumbo v1, "PublicGroupMessage"

    const-string/jumbo v2, "init Bundle"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "MessageSeq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupMessage;->messageSeq:I

    .line 54
    const-string/jumbo v0, "MessageToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->messageToken:J

    .line 55
    const-string/jumbo v0, "MessageID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupMessage;->messageID:I

    .line 56
    const-string/jumbo v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->phoneNumber:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "Text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->text:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "TimeSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->timeSent:J

    .line 59
    const-string/jumbo v0, "MediaType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupMessage;->mediaType:I

    .line 60
    const-string/jumbo v0, "SenderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->senderName:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/viber/jni/LocationInfo;

    const-string/jumbo v1, "LocationLat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "LocationLong"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->location:Lcom/viber/jni/LocationInfo;

    .line 62
    const-string/jumbo v0, "BucketName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->bucketName:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "DownloadID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->downloadId:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "Duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->duration:J

    .line 66
    const-string/jumbo v0, "UploadDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->uploadDuration:J

    .line 67
    const-string/jumbo v0, "MsgInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->msgInfo:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->duration:J

    return-wide v0
.end method

.method public getLocation()Lcom/viber/jni/LocationInfo;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->location:Lcom/viber/jni/LocationInfo;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/viber/jni/PublicGroupMessage;->mediaType:I

    return v0
.end method

.method public getMessageID()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/viber/jni/PublicGroupMessage;->messageID:I

    return v0
.end method

.method public getMessageSeq()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/viber/jni/PublicGroupMessage;->messageSeq:I

    return v0
.end method

.method public getMessageToken()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->messageToken:J

    return-wide v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/jni/PublicGroupMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSent()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->timeSent:J

    return-wide v0
.end method

.method public getUploadDuration()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupMessage;->uploadDuration:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublicGroupMessage [messageSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupMessage;->messageSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupMessage;->messageToken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupMessage;->messageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupMessage;->timeSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupMessage;->mediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SenderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupMessage;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupMessage;->uploadDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupMessage;->msgInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

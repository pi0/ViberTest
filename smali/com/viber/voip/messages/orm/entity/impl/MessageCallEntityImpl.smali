.class public Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canonizedNumber:Ljava/lang/String;

.field private conversationId:J

.field private date:J

.field private duration:J

.field private endReason:I

.field private messageId:J

.field private startReason:I

.field private token:J

.field private type:I

.field private viberCallType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->id:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->conversationId:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->messageId:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->canonizedNumber:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->date:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->duration:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->token:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->canonizedNumber:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->date:J

    .line 37
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->duration:J

    .line 38
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    .line 39
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->token:J

    .line 40
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->s()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    .line 41
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->r()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    .line 42
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->v()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getCanonizedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->canonizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 181
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->conversationId:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->date:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->duration:J

    return-wide v0
.end method

.method public getEndReason()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->messageId:J

    return-wide v0
.end method

.method public getStartReason()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string/jumbo v0, "messages_calls"

    return-object v0
.end method

.method public getToken()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->token:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    return v0
.end method

.method public getViberCallType()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    return v0
.end method

.method public isAnswerredOnAnotherDevice()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissed()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutgoing()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransferredIn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransferredOut()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeViberGeneral()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeViberIn()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeViberOut()Z
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanonizedNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->canonizedNumber:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setConversationId(J)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->conversationId:J

    .line 65
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->date:J

    .line 93
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->duration:J

    .line 101
    return-void
.end method

.method public setEndReason(I)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    .line 133
    return-void
.end method

.method public setMessageId(J)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->messageId:J

    .line 73
    return-void
.end method

.method public setNativeCallId(J)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->messageId:J

    .line 77
    return-void
.end method

.method public setStartReason(I)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    .line 125
    return-void
.end method

.method public setToken(J)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->token:J

    .line 109
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    .line 117
    return-void
.end method

.method public setViberCallType(I)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MessageCallEntityImpl [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canonizedNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->canonizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->conversationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->messageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->canonizedNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->token:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->endReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->startReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->viberCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return-void
.end method

.class public Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# instance fields
.field private contactId:J

.field private contactName:Ljava/lang/String;

.field private dispalyName:Ljava/lang/String;

.field private hasPhoto:Z

.field private lat:I

.field private lng:I

.field private locationDate:J

.field private nativeContactId:J

.field private nativePhotoId:J

.field private number:Ljava/lang/String;

.field private participantType:I

.field private viberImage:Ljava/lang/String;

.field private viberName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonContactImage()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCommonContactImage(Z)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 188
    :cond_1
    if-nez p1, :cond_2

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactId:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_3
    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativeContactId:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 192
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativeContactId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getCommonContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommonContactName(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommonContactName(ZI)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberName()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, v1

    .line 167
    goto :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    move-object v0, v2

    .line 169
    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 205
    invoke-static {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->getContentValues(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getDispalyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->dispalyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->lat:I

    return v0
.end method

.method public getLng()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->lng:I

    return v0
.end method

.method public getLocationDate()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->locationDate:J

    return-wide v0
.end method

.method public getNativeContactId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativeContactId:J

    return-wide v0
.end method

.method public getNativePhotoId()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativePhotoId:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParticipantType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->participantType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string/jumbo v0, "participants_info"

    return-object v0
.end method

.method public getViberImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberImage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, ""

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberImage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViberName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHasPhoto()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->hasPhoto:Z

    goto :goto_0
.end method

.method public isOwner()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getParticipantType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContactId(J)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactId:J

    .line 99
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setDispalyName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->dispalyName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setHasPhoto(Z)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->hasPhoto:Z

    .line 151
    return-void
.end method

.method public setLat(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->lat:I

    .line 75
    return-void
.end method

.method public setLng(I)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->lng:I

    .line 83
    return-void
.end method

.method public setLocationDate(J)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->locationDate:J

    .line 127
    return-void
.end method

.method public setNativeContactId(J)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativeContactId:J

    .line 40
    return-void
.end method

.method public setNativePhotoId(J)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativePhotoId:J

    .line 139
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->number:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setParticipantType(I)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->participantType:I

    .line 91
    return-void
.end method

.method public setViberImage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberImage:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setViberName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ParticipantInfoEntityImpl [number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dispalyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->dispalyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativeContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->nativeContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->viberImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->lng:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->participantType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->locationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

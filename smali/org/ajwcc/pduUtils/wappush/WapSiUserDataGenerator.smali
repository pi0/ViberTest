.class public Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private writeActionAttribute(I)V
    .locals 1
    .parameter

    .prologue
    .line 222
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    :cond_0
    return-void
.end method

.method private writeCreatedAttribute(Ljava/util/Date;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    invoke-direct {p0, p1}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeDate(Ljava/util/Date;)V

    .line 193
    :cond_0
    return-void
.end method

.method private writeDate(Ljava/util/Date;)V
    .locals 4
    .parameter

    .prologue
    .line 252
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 253
    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 256
    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_0

    .line 258
    const-string/jumbo v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const/4 v2, 0x0

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->pduToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 270
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xc3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 275
    return-void
.end method

.method private writeExpiresAttribute(Ljava/util/Date;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    invoke-direct {p0, p1}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeDate(Ljava/util/Date;)V

    .line 204
    :cond_0
    return-void
.end method

.method private writeHrefAttribute(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid URL: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    invoke-static {}, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->getProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->getProtocolByteFor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move v0, v1

    .line 139
    :goto_0
    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    :cond_3
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v3, v2

    .line 147
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 149
    invoke-static {}, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->getDomains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object v5, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    move v0, v1

    move v1, v3

    .line 147
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    if-ge v1, v3, :cond_6

    .line 166
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v4, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 170
    :cond_6
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->getDomainByteFor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    iget-object v1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v3, v0

    move v0, v1

    .line 177
    goto :goto_2

    .line 181
    :cond_7
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 182
    return-void

    :cond_8
    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method private writeSiIdAttribute(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    invoke-direct {p0, p1}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeText(Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method

.method private writeText(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 240
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeWapSiData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc6

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeHrefAttribute(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->getCreateDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeCreatedAttribute(Ljava/util/Date;)V

    .line 105
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeExpiresAttribute(Ljava/util/Date;)V

    .line 107
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->getWapSignal()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeActionAttribute(I)V

    .line 109
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->getSiId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeSiIdAttribute(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->getIndicationText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeText(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    return-void
.end method

.method private writeWspHeader()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 76
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xea

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    return-void
.end method


# virtual methods
.method public generateWapSiUDBytes()[B
    .locals 2

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    .line 52
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeWspHeader()V

    .line 54
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->writeWapSiData()V

    .line 55
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setWapSiPdu(Lorg/ajwcc/pduUtils/wappush/WapSiPdu;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->pdu:Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    .line 44
    return-void
.end method

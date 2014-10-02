.class public Lorg/ajwcc/pduUtils/gsm3040/PduParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pduByteArray:[B

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseSmsDeliverMessage(Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 270
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v1

    .line 271
    invoke-direct {p0, v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readAddress(II)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setAddressType(I)V

    .line 273
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setAddress(Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 276
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setProtocolIdentifier(I)V

    .line 278
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 279
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setDataCodingScheme(I)V

    .line 281
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readTimeStamp()Ljava/util/Calendar;

    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setTimestamp(Ljava/util/Calendar;)V

    .line 284
    invoke-direct {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->parseUserData(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 285
    return-void
.end method

.method private parseSmsStatusReportMessage(Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 291
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setMessageReference(I)V

    .line 293
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 294
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v1

    .line 295
    invoke-direct {p0, v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readAddress(II)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setAddressType(I)V

    .line 297
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setAddress(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readTimeStamp()Ljava/util/Calendar;

    move-result-object v0

    .line 300
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setTimestamp(Ljava/util/Calendar;)V

    .line 302
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readTimeStamp()Ljava/util/Calendar;

    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setDischargeTime(Ljava/util/Calendar;)V

    .line 305
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 306
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setStatus(I)V

    .line 307
    return-void
.end method

.method private parseSmsSubmitMessage(Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 315
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setMessageReference(I)V

    .line 317
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 318
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v1

    .line 319
    invoke-direct {p0, v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readAddress(II)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setAddressType(I)V

    .line 321
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setAddress(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 324
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setProtocolIdentifier(I)V

    .line 326
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 327
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setDataCodingScheme(I)V

    .line 329
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getTpVpf()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 342
    :goto_0
    :sswitch_0
    invoke-direct {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->parseUserData(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 343
    return-void

    .line 334
    :sswitch_1
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readValidityPeriodInt()I

    move-result v0

    .line 335
    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setValidityPeriod(I)V

    goto :goto_0

    .line 338
    :sswitch_2
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readTimeStamp()Ljava/util/Calendar;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setValidityTimestamp(Ljava/util/Calendar;)V

    goto :goto_0

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseStart()Lorg/ajwcc/pduUtils/gsm3040/Pdu;
    .locals 4

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v1

    .line 198
    if-lez v1, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v2

    .line 201
    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, v2}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readAddress(II)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 204
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->createPdu(I)Lorg/ajwcc/pduUtils/gsm3040/Pdu;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v2}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setSmscAddressType(I)V

    .line 207
    invoke-virtual {v0, v3}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setSmscAddress(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setSmscInfoLength(I)V

    .line 216
    :goto_0
    return-object v0

    .line 213
    :cond_0
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 214
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->createPdu(I)Lorg/ajwcc/pduUtils/gsm3040/Pdu;

    move-result-object v0

    goto :goto_0
.end method

.method private parseUserData(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 225
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 226
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setUDLength(I)V

    .line 229
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->pduByteArray:[B

    array-length v0, v0

    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    sub-int/2addr v0, v1

    .line 230
    new-array v1, v0, [B

    .line 231
    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->pduByteArray:[B

    iget v3, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    invoke-virtual {p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setUDData([B)V

    .line 236
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 244
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    add-int/2addr v0, v1

    .line 245
    :cond_0
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    if-ge v1, v0, :cond_1

    .line 247
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v1

    .line 248
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v2

    .line 249
    new-array v3, v2, [B

    .line 250
    iget-object v4, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->pduByteArray:[B

    iget v5, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    invoke-static {v4, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    invoke-static {v1, v3}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElementFactory;->createInformationElement(I[B)Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    move-result-object v1

    .line 252
    invoke-virtual {p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->addInformationElement(Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;)V

    .line 253
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    .line 254
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    if-le v1, v0, :cond_0

    .line 257
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UDH is shorter than expected endUdh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_1
    return-void
.end method

.method private readAddress(II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-lez p1, :cond_1

    .line 120
    div-int/lit8 v2, p1, 0x2

    rem-int/lit8 v3, p1, 0x2

    if-ne v3, v0, :cond_0

    :goto_0
    add-int/2addr v0, v2

    .line 122
    new-array v2, v0, [B

    .line 123
    iget-object v3, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->pduByteArray:[B

    iget v4, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    .line 125
    invoke-static {p2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractAddressType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    invoke-static {p1, v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->readBCDNumbers(I[B)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0

    .line 129
    :pswitch_0
    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decode7bitEncoding([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->stripAddressFieldPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method private readByte()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->pduByteArray:[B

    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 42
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    .line 43
    return v0
.end method

.method private readSwappedNibbleBCDByte()I
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v0

    .line 50
    int-to-byte v0, v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->swapNibbles(I)B

    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    ushr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 53
    and-int/lit8 v0, v0, 0xf

    add-int/2addr v0, v1

    .line 54
    return v0
.end method

.method private readTimeStamp()Ljava/util/Calendar;
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readSwappedNibbleBCDByte()I

    move-result v3

    .line 62
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readSwappedNibbleBCDByte()I

    move-result v4

    .line 63
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readSwappedNibbleBCDByte()I

    move-result v5

    .line 64
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readSwappedNibbleBCDByte()I

    move-result v6

    .line 65
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readSwappedNibbleBCDByte()I

    move-result v7

    .line 66
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readSwappedNibbleBCDByte()I

    move-result v8

    .line 69
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v9

    .line 70
    and-int/lit8 v0, v9, 0x8

    const/16 v10, 0x8

    if-ne v0, v10, :cond_0

    move v0, v1

    .line 71
    :goto_0
    invoke-static {v9}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->swapNibbles(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    .line 74
    if-eqz v0, :cond_2

    .line 79
    ushr-int/lit8 v0, v9, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    .line 80
    and-int/lit8 v2, v9, 0xf

    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0xf

    .line 83
    div-int/lit8 v2, v0, 0x3c

    .line 84
    rem-int/lit8 v9, v0, 0x3c

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GMT-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v9, v11, :cond_1

    const-string/jumbo v0, "0"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 102
    :goto_2
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 103
    add-int/lit16 v2, v3, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/4 v1, 0x2

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 109
    return-object v0

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 92
    :cond_2
    ushr-int/lit8 v0, v9, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    .line 93
    and-int/lit8 v2, v9, 0xf

    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v0, v0, 0xf

    .line 96
    div-int/lit8 v2, v0, 0x3c

    .line 97
    rem-int/lit8 v9, v0, 0x3c

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GMT+"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v9, v11, :cond_3

    const-string/jumbo v0, "0"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_2

    .line 98
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method private readValidityPeriodInt()I
    .locals 4

    .prologue
    const/16 v3, 0xa7

    const/16 v2, 0x8f

    .line 141
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->readByte()I

    move-result v1

    .line 142
    const/4 v0, 0x0

    .line 143
    if-lez v1, :cond_1

    if-gt v1, v2, :cond_1

    .line 146
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x5

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    if-le v1, v2, :cond_2

    if-gt v1, v3, :cond_2

    .line 151
    add-int/lit16 v0, v1, -0x8f

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit16 v0, v0, 0x2d0

    goto :goto_0

    .line 153
    :cond_2
    if-le v1, v3, :cond_3

    const/16 v2, 0xc4

    if-gt v1, v2, :cond_3

    .line 156
    add-int/lit16 v0, v1, -0xa6

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0

    .line 158
    :cond_3
    const/16 v2, 0xc5

    if-le v1, v2, :cond_0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 161
    add-int/lit16 v0, v1, -0xc0

    mul-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0
.end method

.method private stripAddressFieldPadding(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 361
    mul-int/lit8 v0, p1, 0x4

    .line 362
    div-int/lit8 v0, v0, 0x7

    .line 363
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parsePdu(Ljava/lang/String;)Lorg/ajwcc/pduUtils/gsm3040/Pdu;
    .locals 2
    .parameter

    .prologue
    .line 169
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->pduToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->pduByteArray:[B

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->position:I

    .line 172
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->parseStart()Lorg/ajwcc/pduUtils/gsm3040/Pdu;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setRawPdu(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-object v1

    :pswitch_0
    move-object v0, v1

    .line 178
    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->parseSmsDeliverMessage(Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;)V

    goto :goto_0

    :pswitch_1
    move-object v0, v1

    .line 181
    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->parseSmsSubmitMessage(Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;)V

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    .line 184
    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduParser;->parseSmsStatusReportMessage(Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

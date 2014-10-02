.class public Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private firstOctetPosition:I

.field private updateFirstOctet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->firstOctetPosition:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->updateFirstOctet:Z

    return-void
.end method

.method private getUnencodedSeptetsForPart(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 330
    .line 334
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stringToUnencodedSeptets(Ljava/lang/String;)[B

    move-result-object v2

    .line 336
    array-length v0, v2

    div-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 338
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 342
    if-lez p3, :cond_0

    .line 344
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->setMpMaxNo(I)V

    .line 348
    :cond_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    if-lez p3, :cond_2

    .line 352
    if-le p3, v0, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid partNo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxParts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_1
    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p2

    .line 362
    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 363
    array-length v4, v3

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v3

    :cond_2
    move v0, v1

    .line 358
    goto :goto_0
.end method


# virtual methods
.method protected checkForConcat(Lorg/ajwcc/pduUtils/gsm3040/Pdu;IIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    if-le p2, p4, :cond_0

    if-le p2, p4, :cond_1

    if-gt p2, p3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->setMpRefNo(I)V

    .line 250
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    invoke-virtual {v0, p6}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->setMpSeqNo(I)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {p5, p6}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElementFactory;->generateConcatInfo(II)Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->addInformationElement(Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->updateFirstOctet:Z

    goto :goto_0
.end method

.method protected computeOffset(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    .line 204
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->isBinary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 212
    :goto_0
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    if-lez p3, :cond_0

    .line 218
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->setMpMaxNo(I)V

    .line 222
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    if-lez p3, :cond_3

    .line 226
    if-le p3, v0, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid partNo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxParts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataBytes()[B

    move-result-object v0

    array-length v0, v0

    div-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_2
    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p2

    .line 234
    :goto_1
    return v0

    .line 232
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected computePotentialUdhLength(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)I
    .locals 2
    .parameter

    .prologue
    .line 267
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v0

    .line 268
    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getDefaultConcatLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getDefaultConcatLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public generatePduList(Lorg/ajwcc/pduUtils/gsm3040/Pdu;I)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ajwcc/pduUtils/gsm3040/Pdu;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 472
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getMpMaxNo()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 474
    invoke-virtual {p0, p1, p2, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->generatePduString(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-object v1
.end method

.method public generatePduString(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 482
    invoke-virtual {p0, p1, v0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->generatePduString(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generatePduString(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    .line 493
    const/4 v1, -0x1

    iput v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->firstOctetPosition:I

    .line 494
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->updateFirstOctet:Z

    .line 496
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 511
    :goto_0
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 512
    iget-boolean v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->updateFirstOctet:Z

    if-eqz v2, :cond_0

    .line 514
    iget v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->firstOctetPosition:I

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getFirstOctet()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 516
    :cond_0
    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToPdu([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 499
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;

    move-object v1, v0

    invoke-virtual {p0, v1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->generateSmsDeliverPduString(Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 520
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 502
    :pswitch_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;

    move-object v1, v0

    invoke-virtual {p0, v1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->generateSmsSubmitPduString(Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;II)V

    goto :goto_0

    .line 505
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->generateSmsStatusReportPduString(Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected generateSmsDeliverPduString(Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeSmscInfo(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 560
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeFirstOctet(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 562
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddressType()I

    move-result v1

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeAddress(Ljava/lang/String;II)V

    .line 564
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getProtocolIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 566
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getDataCodingScheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 568
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeTimeStampStringForDate(Ljava/util/Date;)V

    .line 571
    invoke-virtual {p0, p1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDData(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V

    .line 572
    return-void
.end method

.method protected generateSmsStatusReportPduString(Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;)V
    .locals 3
    .parameter

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeSmscInfo(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 579
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeFirstOctet(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 581
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getMessageReference()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 583
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddressType()I

    move-result v1

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeAddress(Ljava/lang/String;II)V

    .line 585
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeTimeStampStringForDate(Ljava/util/Date;)V

    .line 587
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getDischargeTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeTimeStampStringForDate(Ljava/util/Date;)V

    .line 589
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 590
    return-void
.end method

.method protected generateSmsSubmitPduString(Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeSmscInfo(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 529
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeFirstOctet(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V

    .line 531
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getMessageReference()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 533
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddressType()I

    move-result v1

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeAddress(Ljava/lang/String;II)V

    .line 535
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getProtocolIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 537
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getDataCodingScheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 539
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getTpVpf()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 550
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDData(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V

    .line 551
    return-void

    .line 542
    :sswitch_0
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getValidityPeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeValidityPeriodInteger(I)V

    goto :goto_0

    .line 545
    :sswitch_1
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getValidityDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeTimeStampStringForDate(Ljava/util/Date;)V

    goto :goto_0

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method protected writeAddress(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractAddressType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeBCDAddress(Ljava/lang/String;II)V

    .line 117
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stringToUnencodedSeptets(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encode7bitUserData([B[B)[B

    move-result-object v0

    .line 107
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method protected writeBCDAddress(Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 125
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v0, v1

    move v2, v1

    .line 133
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 136
    rem-int/lit8 v4, v0, 0x2

    if-ne v4, v5, :cond_1

    .line 138
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    .line 139
    iget-object v3, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v1

    .line 133
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    goto :goto_1

    .line 148
    :cond_2
    return-void
.end method

.method protected writeByte(I)V
    .locals 1
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 460
    return-void
.end method

.method protected writeBytes([B)V
    .locals 1
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 465
    return-void
.end method

.method protected writeFirstOctet(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscInfoLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->firstOctetPosition:I

    .line 48
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getFirstOctet()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    .line 49
    return-void
.end method

.method protected writeSmscInfo(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscAddressType()I

    move-result v1

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscInfoLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeBCDAddress(Ljava/lang/String;II)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeByte(I)V

    goto :goto_0
.end method

.method protected writeTimeStampStringForDate(Ljava/util/Date;)V
    .locals 9
    .parameter

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x7d0

    .line 74
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 75
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 76
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 77
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 78
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 81
    const v7, 0xea60

    div-int/2addr v0, v7

    .line 82
    div-int/lit8 v0, v0, 0xf

    .line 84
    if-gez v0, :cond_0

    .line 86
    rsub-int v0, v0, 0x80

    .line 89
    :cond_0
    iget-object v7, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 90
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v3}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v4}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v5}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v6}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createSwappedBCD(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    return-void
.end method

.method protected writeUDData(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v0

    .line 155
    :try_start_0
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsEncoding(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 167
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid DCS encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsEncoding(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 158
    :sswitch_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDData7bit(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V

    .line 174
    :goto_0
    return-void

    .line 161
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDData8bit(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDDataUCS2(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected writeUDData7bit(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->stringToUnencodedSeptets(Ljava/lang/String;)[B

    move-result-object v0

    .line 288
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->computePotentialUdhLength(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)I

    move-result v1

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->getNumSeptetsForOctets(I)I

    move-result v1

    .line 290
    array-length v2, v0

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->getNumSeptetsForOctets(I)I

    move-result v0

    rsub-int v3, v0, 0xa0

    rsub-int v4, v1, 0xa0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->checkForConcat(Lorg/ajwcc/pduUtils/gsm3040/Pdu;IIIII)V

    .line 299
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v0

    .line 300
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->getNumSeptetsForOctets(I)I

    move-result v1

    rsub-int v1, v1, 0xa0

    .line 303
    invoke-direct {p0, p1, v1, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->getUnencodedSeptetsForPart(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)[B

    move-result-object v1

    .line 306
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->getNumSeptetsForOctets(I)I

    move-result v0

    array-length v2, v1

    add-int/2addr v0, v2

    .line 307
    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    invoke-virtual {p0, p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDH(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/io/ByteArrayOutputStream;)V

    .line 317
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 320
    :cond_0
    invoke-static {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encode7bitUserData([B[B)[B

    move-result-object v0

    .line 322
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 323
    return-void
.end method

.method protected writeUDData8bit(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataBytes()[B

    move-result-object v0

    move-object v7, v0

    .line 387
    :goto_0
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->computePotentialUdhLength(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)I

    move-result v0

    .line 389
    array-length v2, v7

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v1

    rsub-int v3, v1, 0x8c

    rsub-int v4, v0, 0x8c

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->checkForConcat(Lorg/ajwcc/pduUtils/gsm3040/Pdu;IIIII)V

    .line 398
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v0

    .line 399
    rsub-int v1, v0, 0x8c

    .line 401
    invoke-virtual {p0, p1, v1, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->computeOffset(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)I

    move-result v2

    .line 402
    array-length v3, v7

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 403
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v7, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    array-length v2, v1

    add-int/2addr v0, v2

    .line 409
    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDH(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/io/ByteArrayOutputStream;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 417
    return-void

    .line 381
    :cond_1
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encode8bitUserData(Ljava/lang/String;)[B

    move-result-object v0

    move-object v7, v0

    goto :goto_0
.end method

.method protected writeUDDataUCS2(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-virtual {p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->computePotentialUdhLength(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)I

    move-result v0

    .line 428
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v1

    rsub-int v1, v1, 0x8c

    div-int/lit8 v3, v1, 0x2

    rsub-int v0, v0, 0x8c

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->checkForConcat(Lorg/ajwcc/pduUtils/gsm3040/Pdu;IIIII)V

    .line 437
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v0

    .line 438
    rsub-int v1, v0, 0x8c

    div-int/lit8 v1, v1, 0x2

    .line 440
    invoke-virtual {p0, p1, v1, p3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->computeOffset(Lorg/ajwcc/pduUtils/gsm3040/Pdu;II)I

    move-result v2

    .line 441
    add-int/2addr v1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 447
    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 449
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDH(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/io/ByteArrayOutputStream;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->encodeUcs2UserData(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 455
    return-void
.end method

.method protected writeUDH(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->writeUDH(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/io/ByteArrayOutputStream;)V

    .line 180
    return-void
.end method

.method protected writeUDH(Lorg/ajwcc/pduUtils/gsm3040/Pdu;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHLength()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getInformationElements()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    .line 192
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->getIdentifier()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->getLength()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->getData()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method protected writeValidityPeriodInteger(I)V
    .locals 2
    .parameter

    .prologue
    .line 54
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    mul-int/lit8 v0, p1, 0xc

    add-int/lit8 v0, v0, -0x1

    .line 65
    :goto_1
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 62
    :cond_1
    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0xc

    mul-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x8f

    goto :goto_1

    .line 63
    :cond_2
    const/16 v0, 0x2d0

    if-gt p1, v0, :cond_3

    div-int/lit8 v0, p1, 0x18

    add-int/lit16 v0, v0, 0xa6

    goto :goto_1

    .line 64
    :cond_3
    div-int/lit16 v0, p1, 0xa8

    add-int/lit16 v0, v0, 0xc0

    goto :goto_1
.end method

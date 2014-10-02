.class public abstract Lorg/ajwcc/pduUtils/gsm3040/Pdu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UDH_CHECK_MODE_ADD_IF_NONE:I = 0x0

.field private static final UDH_CHECK_MODE_EXCEPTION_IF_NONE:I = 0x1

.field private static final UDH_CHECK_MODE_IGNORE_IF_NONE:I = 0x2


# instance fields
.field private address:Ljava/lang/String;

.field private addressType:I

.field private dataBytes:[B

.field private dataCodingScheme:I

.field private decodedText:Ljava/lang/String;

.field private firstOctet:I

.field private ieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private ieMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private protocolIdentifier:I

.field private rawPdu:Ljava/lang/String;

.field private smscAddress:Ljava/lang/String;

.field private smscAddressType:I

.field private smscInfoLength:I

.field private udData:[B

.field private udLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    .line 171
    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->protocolIdentifier:I

    .line 187
    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieMap:Ljava/util/HashMap;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieList:Ljava/util/ArrayList;

    return-void
.end method

.method private checkForUDHI(I)V
    .locals 2
    .parameter

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid UDH check mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PDU does not have a UDHI in the first octet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_1
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setTpUdhi(I)V

    .line 319
    :cond_0
    :pswitch_2
    return-void

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private decodeNonUDHDataAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsEncoding(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 537
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dataCodingScheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :sswitch_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHData()[B

    move-result-object v0

    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    invoke-static {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decode7bitEncoding([B[B)Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_0
    return-object v0

    .line 533
    :sswitch_1
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHData()[B

    move-result-object v0

    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    invoke-static {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decode8bitEncoding([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :sswitch_2
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHData()[B

    move-result-object v0

    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    invoke-static {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decodeUcs2Encoding([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private getPortInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->checkForUDHI(I)V

    .line 432
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getInformationElement(I)Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;

    return-object v0
.end method


# virtual methods
.method public addInformationElement(Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->checkForUDHI(I)V

    .line 362
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method protected checkTpMti(I)V
    .locals 3
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v0

    .line 134
    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid message type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method protected checkTpMti([I)V
    .locals 4
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v1

    .line 140
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    .line 142
    if-ne v1, v3, :cond_0

    return-void

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid message type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTpMti()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected formatTimestamp(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 649
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 650
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 652
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->addressType:I

    return v0
.end method

.method public getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->checkForUDHI(I)V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getInformationElement(I)Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    .line 392
    if-nez v0, :cond_0

    .line 394
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getInformationElement(I)Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    .line 396
    :cond_0
    return-object v0
.end method

.method public getDataBytes()[B
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataBytes:[B

    return-object v0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    return v0
.end method

.method public getDecodedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->decodedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->decodedText:Ljava/lang/String;

    .line 507
    :goto_0
    return-object v0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "No udData to decode"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->decodeNonUDHDataAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 511
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDestPort()I
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getPortInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;

    move-result-object v0

    .line 438
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 439
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getDestPort()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstOctet()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    return v0
.end method

.method protected getFirstOctetField(I)I
    .locals 2
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public getInformationElement(I)Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;
    .locals 2
    .parameter

    .prologue
    .line 368
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->checkForUDHI(I)V

    .line 369
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    return-object v0
.end method

.method public getInformationElements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->checkForUDHI(I)V

    .line 376
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMpMaxNo()I
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpMaxNo()I

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMpRefNo()I
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpRefNo()I

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMpSeqNo()I
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpSeqNo()I

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->protocolIdentifier:I

    return v0
.end method

.method public getRawPdu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->rawPdu:Ljava/lang/String;

    return-object v0
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmscAddressType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddressType:I

    return v0
.end method

.method public getSmscInfoLength()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscInfoLength:I

    return v0
.end method

.method public getSrcPort()I
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getPortInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;

    move-result-object v0

    .line 445
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getSrcPort()I

    move-result v0

    goto :goto_0
.end method

.method public getTotalUDHLength()I
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHLength()I

    move-result v0

    .line 324
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTpMti()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xfc

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getFirstOctetField(I)I

    move-result v0

    return v0
.end method

.method public getUDData()[B
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    return-object v0
.end method

.method public getUDHData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->checkForUDHI(I)V

    .line 345
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v1

    .line 346
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    .line 347
    :cond_0
    new-array v0, v1, [B

    .line 348
    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getUDHLength()I
    .locals 3

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    .line 337
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_0

    .line 339
    :cond_0
    return v1
.end method

.method public getUDLength()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udLength:I

    return v0
.end method

.method public getUserDataAsBytes()[B
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    array-length v0, v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v1

    sub-int/2addr v0, v1

    .line 518
    new-array v1, v0, [B

    .line 519
    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getTotalUDHLength()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    return-object v1
.end method

.method public hasTpUdhi()Z
    .locals 2

    .prologue
    .line 164
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getFirstOctetField(I)I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBinary()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 479
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_1

    .line 481
    :cond_0
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConcatMessage()Z
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getConcatInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortedMessage()Z
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getPortInfo()Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pduSubclassInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 235
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->address:Ljava/lang/String;

    .line 253
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->address:Ljava/lang/String;

    .line 251
    :goto_1
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->getAddressTypeFor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setAddressType(I)V

    goto :goto_0

    .line 247
    :cond_1
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->address:Ljava/lang/String;

    goto :goto_1
.end method

.method public setAddressType(I)V
    .locals 1
    .parameter

    .prologue
    .line 221
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createAddressType(I)I

    move-result v0

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->addressType:I

    .line 222
    return-void
.end method

.method public setDataBytes([B)V
    .locals 1
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataBytes:[B

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->decodedText:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setDataCodingScheme(I)V
    .locals 3
    .parameter

    .prologue
    .line 191
    and-int/lit16 v0, p1, -0xf4

    sparse-switch v0, :sswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :sswitch_0
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    .line 201
    return-void

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDecodedText(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->decodedText:Ljava/lang/String;

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataBytes:[B

    .line 491
    const/4 v0, 0x0

    .line 492
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsFlash(I)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 494
    :cond_0
    iget v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    .line 496
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->dataCodingScheme:I

    .line 497
    :cond_1
    return-void
.end method

.method public setFirstOctet(I)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    .line 105
    return-void
.end method

.method protected setFirstOctetField(II[I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p3, v0

    .line 111
    if-ne v2, p2, :cond_0

    .line 114
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    and-int/2addr v0, p1

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    .line 116
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    or-int/2addr v0, p2

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->firstOctet:I

    .line 117
    return-void

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid value for fieldName."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProtocolIdentifier(I)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->protocolIdentifier:I

    .line 176
    return-void
.end method

.method public setRawPdu(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->rawPdu:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddress:Ljava/lang/String;

    .line 72
    iput v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddressType:I

    .line 73
    iput v1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscInfoLength:I

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddress:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSmscAddressType(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->createAddressType(I)I

    move-result v0

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddressType:I

    .line 60
    return-void
.end method

.method public setSmscInfoLength(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscInfoLength:I

    .line 55
    return-void
.end method

.method public setTpMti(I)V
    .locals 2
    .parameter

    .prologue
    .line 149
    const/16 v0, 0xfc

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setFirstOctetField(II[I)V

    .line 150
    return-void

    .line 149
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setTpUdhi(I)V
    .locals 2
    .parameter

    .prologue
    .line 159
    const/16 v0, 0xbf

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setFirstOctetField(II[I)V

    .line 160
    return-void

    .line 159
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setUDData([B)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    .line 289
    return-void
.end method

.method public setUDLength(I)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udLength:I

    .line 278
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 556
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    const-string/jumbo v0, "=================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<< "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " >>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string/jumbo v0, "Raw Pdu: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->rawPdu:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SMSC Address: [Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscInfoLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getSmscInfoLength()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") octets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddressType:I

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddressType:I

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToBits(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->smscAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    :goto_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-static {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decodeFirstOctet(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->pduSubclassInfo()Ljava/lang/String;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->udData:[B

    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDataCodingScheme()I

    move-result v0

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->extractDcsEncoding(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 600
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User Data (pdu) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDData()[B

    move-result-object v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToPdu([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->hasTpUdhi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User Data Header (pdu) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHData()[B

    move-result-object v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToPdu([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDHLength()I

    move-result v0

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User Data Header Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") octets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const-string/jumbo v0, "UDH Information Elements:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->ieMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    .line 615
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 575
    :cond_1
    const-string/jumbo v0, "SMSC Address: [Length: 0 octets]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 591
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User Data Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDLength()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") septets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 596
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User Data Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUDLength()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") octets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 620
    :cond_2
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non UDH Data (pdu)    : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getUserDataAsBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToPdu([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->isBinary()Z

    move-result v0

    if-nez v0, :cond_3

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non UDH Data (decoded): ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    :cond_3
    :goto_3
    const-string/jumbo v0, "=================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :cond_4
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->isBinary()Z

    move-result v0

    if-nez v0, :cond_3

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User Data (decoded): ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->getDecodedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

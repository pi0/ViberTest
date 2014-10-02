.class public Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;
.super Lorg/ajwcc/pduUtils/gsm3040/Pdu;
.source "SourceFile"


# instance fields
.field private timestamp:Ljava/util/Calendar;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->timestamp:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampAsCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->timestamp:Ljava/util/Calendar;

    return-object v0
.end method

.method public hasTpMms()Z
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->checkTpMti([I)V

    .line 63
    const/16 v0, 0xfb

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getFirstOctetField(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public hasTpSri()Z
    .locals 2

    .prologue
    .line 73
    const/16 v0, 0xdf

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getFirstOctetField(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pduSubclassInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Originator Address: [Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddressType()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddressType()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToBits(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :goto_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getProtocolIdentifier()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getProtocolIdentifier()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToBits(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-DCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getDataCodingScheme()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->decodeDataCodingScheme(Lorg/ajwcc/pduUtils/gsm3040/Pdu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getDataCodingScheme()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToBits(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-SCTS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getTimestampAsCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->formatTimestamp(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    const-string/jumbo v1, "Originator Address: [Length: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddressType()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->getAddressType()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToBits(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->timestamp:Ljava/util/Calendar;

    .line 37
    return-void
.end method

.method public setTpMms(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->checkTpMti([I)V

    .line 56
    const/16 v0, 0xfb

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setFirstOctetField(II[I)V

    .line 57
    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setTpSri(I)V
    .locals 2
    .parameter

    .prologue
    .line 68
    const/16 v0, 0xdf

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setFirstOctetField(II[I)V

    .line 69
    return-void

    .line 68
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

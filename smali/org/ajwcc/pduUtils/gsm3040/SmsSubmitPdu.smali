.class public Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;
.super Lorg/ajwcc/pduUtils/gsm3040/Pdu;
.source "SourceFile"


# instance fields
.field private messageReference:I

.field private validityPeriod:I

.field private validityPeriodTimeStamp:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->messageReference:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->validityPeriod:I

    return-void
.end method


# virtual methods
.method public getMessageReference()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->messageReference:I

    return v0
.end method

.method public getTpVpf()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xe7

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getFirstOctetField(I)I

    move-result v0

    return v0
.end method

.method public getValidityDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->validityPeriodTimeStamp:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getValidityDateAsCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->validityPeriodTimeStamp:Ljava/util/Calendar;

    return-object v0
.end method

.method public getValidityPeriod()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->validityPeriod:I

    return v0
.end method

.method public hasTpRd()Z
    .locals 2

    .prologue
    .line 34
    const/16 v0, 0xfb

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getFirstOctetField(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTpSrr()Z
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0xdf

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getFirstOctetField(I)I

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

.method public hasTpVpf()Z
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xe7

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getFirstOctetField(I)I

    move-result v0

    if-eqz v0, :cond_0

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
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message Reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getMessageReference()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destination Address: [Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddress()Ljava/lang/String;

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

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddressType()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddressType()I

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

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :goto_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getProtocolIdentifier()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getProtocolIdentifier()I

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

    .line 138
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-DCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getDataCodingScheme()I

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

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getDataCodingScheme()I

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

    .line 141
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getTpVpf()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 152
    :goto_1
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    const-string/jumbo v1, "Destination Address: [Length: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddressType()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getAddressType()I

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

    .line 132
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 146
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-VPF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getValidityPeriod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 149
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-VPF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getValidityDateAsCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->formatTimestamp(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMessageReference(I)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->messageReference:I

    .line 71
    return-void
.end method

.method public setTpRd(I)V
    .locals 2
    .parameter

    .prologue
    .line 29
    const/16 v0, 0xfb

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setFirstOctetField(II[I)V

    .line 30
    return-void

    .line 29
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setTpSrr(I)V
    .locals 2
    .parameter

    .prologue
    .line 54
    const/16 v0, 0xdf

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setFirstOctetField(II[I)V

    .line 55
    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setTpVpf(I)V
    .locals 2
    .parameter

    .prologue
    .line 39
    const/16 v0, 0xe7

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->setFirstOctetField(II[I)V

    .line 40
    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setValidityPeriod(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->validityPeriod:I

    .line 94
    return-void
.end method

.method public setValidityTimestamp(Ljava/util/Calendar;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->validityPeriodTimeStamp:Ljava/util/Calendar;

    .line 99
    return-void
.end method

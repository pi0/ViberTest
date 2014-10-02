.class public Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;
.super Lorg/ajwcc/pduUtils/gsm3040/Pdu;
.source "SourceFile"


# instance fields
.field private dischargeTime:Ljava/util/Calendar;

.field private messageReference:I

.field private status:I

.field private timestamp:Ljava/util/Calendar;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;-><init>()V

    .line 60
    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->messageReference:I

    .line 75
    iput v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->status:I

    .line 27
    return-void
.end method


# virtual methods
.method public getDischargeTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->dischargeTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDischargeTimeAsCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->dischargeTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMessageReference()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->messageReference:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->status:I

    return v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->timestamp:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampAsCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->timestamp:Ljava/util/Calendar;

    return-object v0
.end method

.method public hasTpMms()Z
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->checkTpMti([I)V

    .line 43
    const/16 v0, 0xfb

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getFirstOctetField(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public hasTpSri()Z
    .locals 2

    .prologue
    .line 53
    const/16 v0, 0xdf

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getFirstOctetField(I)I

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
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message Reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getMessageReference()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destination Address: [Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddress()Ljava/lang/String;

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

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddressType()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddressType()I

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

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :goto_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TP-SCTS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getTimestampAsCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->formatTimestamp(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Discharge Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getDischargeTimeAsCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->formatTimestamp(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getStatus()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    const-string/jumbo v1, "Destination Address: [Length: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddressType()I

    move-result v2

    invoke-static {v2}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->getAddressType()I

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

    .line 149
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public setDischargeTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->dischargeTime:Ljava/util/Calendar;

    .line 116
    return-void
.end method

.method public setMessageReference(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->messageReference:I

    .line 65
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->status:I

    .line 80
    return-void
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->timestamp:Ljava/util/Calendar;

    .line 95
    return-void
.end method

.method public setTpMms(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->checkTpMti([I)V

    .line 36
    const/16 v0, 0xfb

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setFirstOctetField(II[I)V

    .line 37
    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 36
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
    .line 48
    const/16 v0, 0xdf

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;->setFirstOctetField(II[I)V

    .line 49
    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

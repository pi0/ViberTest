.class public Lorg/ajwcc/pduUtils/gsm3040/PduFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPdu(I)Lorg/ajwcc/pduUtils/gsm3040/Pdu;
    .locals 4
    .parameter

    .prologue
    .line 87
    .line 88
    const/16 v0, 0xfc

    invoke-static {p0, v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->getFirstOctetField(II)I

    move-result v0

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid TP-MTI value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :pswitch_0
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;

    invoke-direct {v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;-><init>()V

    .line 105
    :goto_0
    invoke-virtual {v0, p0}, Lorg/ajwcc/pduUtils/gsm3040/Pdu;->setFirstOctet(I)V

    .line 106
    return-object v0

    .line 95
    :pswitch_1
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;

    invoke-direct {v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsStatusReportPdu;-><init>()V

    goto :goto_0

    .line 98
    :pswitch_2
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;

    invoke-direct {v0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;-><init>()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getFirstOctetField(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static newSmsDeliveryPdu(I)Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;
    .locals 1
    .parameter

    .prologue
    .line 74
    or-int/lit8 v0, p0, 0x0

    .line 75
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->createPdu(I)Lorg/ajwcc/pduUtils/gsm3040/Pdu;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;

    return-object v0
.end method

.method public static newSmsDeliveryPdu()Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x4

    .line 68
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->createPdu(I)Lorg/ajwcc/pduUtils/gsm3040/Pdu;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;

    return-object v0
.end method

.method public static newSmsSubmitPdu()Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x10

    .line 28
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->newSmsSubmitPdu(I)Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static newSmsSubmitPdu(I)Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;
    .locals 1
    .parameter

    .prologue
    .line 34
    or-int/lit8 v0, p0, 0x1

    .line 35
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->createPdu(I)Lorg/ajwcc/pduUtils/gsm3040/Pdu;

    move-result-object v0

    check-cast v0, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;

    return-object v0
.end method

.method public static newWapSiPdu()Lorg/ajwcc/pduUtils/wappush/WapSiPdu;
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x10

    .line 42
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->newWapSiPdu(I)Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    move-result-object v0

    return-object v0
.end method

.method public static newWapSiPdu(I)Lorg/ajwcc/pduUtils/wappush/WapSiPdu;
    .locals 4
    .parameter

    .prologue
    .line 49
    or-int/lit8 v0, p0, 0x1

    .line 50
    const/16 v1, 0xfc

    invoke-static {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->getFirstOctetField(II)I

    move-result v1

    .line 51
    packed-switch v1, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid TP-MTI value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :pswitch_0
    new-instance v1, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;

    invoke-direct {v1}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->setFirstOctet(I)V

    .line 60
    return-object v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

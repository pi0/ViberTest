.class public Lcom/viber/voip/sms/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/viber/voip/sms/a/a;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/viber/voip/sms/a/a;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 26
    invoke-static {v3}, Lorg/ajwcc/pduUtils/gsm3040/PduFactory;->newSmsDeliveryPdu(I)Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setSmscInfoLength(I)V

    .line 28
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setAddressType(I)V

    .line 29
    iget-object v1, p0, Lcom/viber/voip/sms/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setAddress(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/viber/voip/sms/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setDecodedText(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v2}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setProtocolIdentifier(I)V

    .line 32
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setTimestamp(Ljava/util/Calendar;)V

    .line 33
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/ajwcc/pduUtils/gsm3040/SmsDeliveryPdu;->setDataCodingScheme(I)V

    .line 35
    new-instance v1, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;

    invoke-direct {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;-><init>()V

    .line 37
    invoke-virtual {v1, v0, v3}, Lorg/ajwcc/pduUtils/gsm3040/PduGenerator;->generatePduList(Lorg/ajwcc/pduUtils/gsm3040/Pdu;I)Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->pduToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

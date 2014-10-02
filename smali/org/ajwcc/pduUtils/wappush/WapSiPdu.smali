.class public Lorg/ajwcc/pduUtils/wappush/WapSiPdu;
.super Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;
.source "SourceFile"


# static fields
.field public static final WAP_SIGNAL_DELETE:I = 0x9

.field public static final WAP_SIGNAL_HIGH:I = 0x8

.field public static final WAP_SIGNAL_LOW:I = 0x6

.field public static final WAP_SIGNAL_MEDIUM:I = 0x7

.field public static final WAP_SIGNAL_NONE:I = 0x5


# instance fields
.field private createDate:Ljava/util/Date;

.field private expireDate:Ljava/util/Date;

.field private indicationText:Ljava/lang/String;

.field private siClass:Ljava/lang/String;

.field private siId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wapSignal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;-><init>()V

    .line 40
    const/4 v0, 0x7

    iput v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    .line 56
    const/16 v0, 0xf4

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->setDataCodingScheme(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCreateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->createDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getDataBytes()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;

    invoke-direct {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;-><init>()V

    .line 180
    invoke-virtual {v0, p0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->setWapSiPdu(Lorg/ajwcc/pduUtils/wappush/WapSiPdu;)V

    .line 181
    invoke-virtual {v0}, Lorg/ajwcc/pduUtils/wappush/WapSiUserDataGenerator;->generateWapSiUDBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->setDataBytes([B)V

    .line 183
    :cond_0
    invoke-super {p0}, Lorg/ajwcc/pduUtils/gsm3040/SmsSubmitPdu;->getDataBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getExpireDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIndicationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->indicationText:Ljava/lang/String;

    return-object v0
.end method

.method public getSiClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->siClass:Ljava/lang/String;

    return-object v0
.end method

.method public getSiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->siId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWapSignal()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    return v0
.end method

.method public setCreateDate(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->createDate:Ljava/util/Date;

    .line 107
    return-void
.end method

.method public setExpireDate(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->expireDate:Ljava/util/Date;

    .line 117
    return-void
.end method

.method public setIndicationText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->indicationText:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSiClass(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->siClass:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSiId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->siId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->url:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setWapSignal(I)V
    .locals 3
    .parameter

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid wap signal value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_0
    iput p1, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    .line 172
    return-void

    .line 160
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setWapSignalFromString(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 126
    if-nez p1, :cond_0

    .line 128
    iput v2, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    .line 156
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    goto :goto_0

    .line 136
    :cond_1
    const-string/jumbo v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const/4 v0, 0x6

    iput v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    goto :goto_0

    .line 140
    :cond_2
    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    :cond_3
    iput v2, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    goto :goto_0

    .line 144
    :cond_4
    const-string/jumbo v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    const/16 v0, 0x8

    iput v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    goto :goto_0

    .line 148
    :cond_5
    const-string/jumbo v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    const/16 v0, 0x9

    iput v0, p0, Lorg/ajwcc/pduUtils/wappush/WapSiPdu;->wapSignal:I

    goto :goto_0

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot determine WAP signal to use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

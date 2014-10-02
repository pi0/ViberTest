.class public Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElementFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInformationElement(I[B)Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    and-int/lit16 v0, p0, 0xff

    int-to-byte v1, v0

    .line 27
    sparse-switch v1, :sswitch_data_0

    .line 35
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;

    invoke-direct {v0, v1, p1}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;-><init>(B[B)V

    :goto_0
    return-object v0

    .line 31
    :sswitch_0
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    invoke-direct {v0, v1, p1}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;-><init>(B[B)V

    goto :goto_0

    .line 33
    :sswitch_1
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;

    invoke-direct {v0, v1, p1}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;-><init>(B[B)V

    goto :goto_0

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static generateConcatInfo(II)Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    invoke-static {}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getDefaultConcatType()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2, p1}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;-><init>(IIII)V

    .line 42
    return-object v0
.end method

.method public static generateConcatInfo(III)Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;-><init>(IIII)V

    .line 48
    return-object v0
.end method

.method public static generatePortInfo(II)Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p1}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;-><init>(III)V

    .line 54
    return-object v0
.end method

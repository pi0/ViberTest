.class public Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;
.super Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;
.source "SourceFile"


# static fields
.field public static final PORT_16BIT:I = 0x5


# direct methods
.method constructor <init>(B[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;-><init>(B[B)V

    .line 27
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getIdentifier()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in data in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    array-length v0, p2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid data length in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    return-void
.end method

.method constructor <init>(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0xff00

    .line 37
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;-><init>()V

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid identifier for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 43
    const/4 v1, 0x0

    and-int v2, p2, v3

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 44
    const/4 v1, 0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 45
    const/4 v1, 0x2

    and-int v2, p3, v3

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 46
    const/4 v1, 0x3

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 51
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1, v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->initialize(B[B)V

    .line 52
    return-void

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDestPort()I
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getData()[B

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getSrcPort()I
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getData()[B

    move-result-object v0

    .line 65
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    invoke-super {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string/jumbo v1, "[Dst Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getDestPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    const-string/jumbo v1, ", Src Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/PortInformationElement;->getSrcPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 77
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

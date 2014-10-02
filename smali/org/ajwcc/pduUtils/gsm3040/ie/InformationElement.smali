.class public Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private identifier:B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(B[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->initialize(B[B)V

    .line 34
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->data:[B

    return-object v0
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 49
    iget-byte v0, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->identifier:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->data:[B

    array-length v0, v0

    return v0
.end method

.method initialize(B[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-byte p1, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->identifier:B

    .line 44
    iput-object p2, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->data:[B

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-byte v1, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->identifier:B

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->data:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->byteToPdu(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v1, p0, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->data:[B

    invoke-static {v1}, Lorg/ajwcc/pduUtils/gsm3040/PduUtils;->bytesToPdu([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

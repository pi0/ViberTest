.class public Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;
.super Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;
.source "SourceFile"


# static fields
.field public static final CONCAT_16BIT_REF:I = 0x8

.field public static final CONCAT_8BIT_REF:I = 0x0

.field private static final CONCAT_IE_LENGTH_16BIT:I = 0x6

.field private static final CONCAT_IE_LENGTH_8BIT:I = 0x5

.field private static defaultConcatLength:I

.field private static defaultConcatType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatType:I

    .line 32
    const/4 v0, 0x5

    sput v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatLength:I

    return-void
.end method

.method constructor <init>(B[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;-><init>(B[B)V

    .line 64
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    array-length v0, p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

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

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 80
    array-length v0, p2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

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

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid identifier in data in: "

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

    .line 86
    :cond_2
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->validate()V

    .line 87
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;-><init>()V

    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 109
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

    .line 96
    :sswitch_0
    new-array v0, v5, [B

    .line 97
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 98
    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 99
    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 111
    :goto_0
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1, v0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->initialize(B[B)V

    .line 112
    invoke-direct {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->validate()V

    .line 113
    return-void

    .line 102
    :sswitch_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 103
    const v1, 0xff00

    and-int/2addr v1, p2

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 104
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 105
    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 106
    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getDefaultConcatLength()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatLength:I

    return v0
.end method

.method public static getDefaultConcatType()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatType:I

    return v0
.end method

.method public static setDefaultConcatType(I)V
    .locals 2
    .parameter

    .prologue
    .line 46
    sparse-switch p0, :sswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid Concat type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :sswitch_0
    const/4 v0, 0x0

    sput v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatType:I

    .line 50
    const/4 v0, 0x5

    sput v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatLength:I

    .line 59
    :goto_0
    return-void

    .line 53
    :sswitch_1
    const/16 v0, 0x8

    sput v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatType:I

    .line 54
    const/4 v0, 0x6

    sput v0, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->defaultConcatLength:I

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpMaxNo()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mpMaxNo must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpSeqNo()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mpSeqNo must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    return-void
.end method


# virtual methods
.method public getMpMaxNo()I
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getData()[B

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid identifier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMpRefNo()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getData()[B

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 121
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v3

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid identifier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMpSeqNo()I
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getData()[B

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 181
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid identifier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMpMaxNo(I)V
    .locals 3
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getData()[B

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 166
    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid identifier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMpRefNo(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getData()[B

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 133
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 137
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 138
    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid identifier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMpSeqNo(I)V
    .locals 3
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getData()[B

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getIdentifier()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 194
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid identifier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    invoke-super {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/InformationElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string/jumbo v1, "[MpRefNo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpRefNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 209
    const-string/jumbo v1, ", MpMaxNo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpMaxNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    const-string/jumbo v1, ", MpSeqNo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {p0}, Lorg/ajwcc/pduUtils/gsm3040/ie/ConcatInformationElement;->getMpSeqNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 213
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

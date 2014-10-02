.class public Lcom/viber/voip/util/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 50
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 152
    const-string/jumbo v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 20
    new-array v2, v1, [B

    .line 21
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 22
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    .line 60
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    const-string/jumbo v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 69
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 87
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not find the SHA256 algorithm. HMac conversion failed."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :catch_1
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid key exception detected. HMac conversion failed."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :catch_2
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "IIllegal state exception detected. HMac conversion failed."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_3
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unsuported encoding UTF-8. HMac conversion failed."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([B[B)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 125
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 127
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 27
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 31
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/viber/voip/util/aj;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/aj;->c([B)[B

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/aj;->a([B[B)[B

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/viber/voip/util/aj;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    const-string/jumbo v0, ""

    .line 146
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 143
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 144
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/viber/voip/util/aj;->a(Ljava/lang/StringBuffer;B)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 134
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 135
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/viber/voip/util/i;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/aj;->c([B)[B

    move-result-object v0

    .line 98
    invoke-static {p1}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/viber/voip/util/aj;->b([B[B)[B

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private static c([B)[B
    .locals 3
    .parameter

    .prologue
    .line 114
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "SHA1PRNG"

    const-string/jumbo v2, "Crypto"

    invoke-static {v1, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 117
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 118
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 120
    return-object v0
.end method

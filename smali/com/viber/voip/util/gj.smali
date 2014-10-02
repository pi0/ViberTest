.class public Lcom/viber/voip/util/gj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:[[I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 35
    const-string/jumbo v0, "((?:%\\d+\\$s)|(?:%s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/gj;->a:Ljava/util/regex/Pattern;

    .line 139
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v5, [I

    aput v3, v1, v2

    aput-object v1, v0, v2

    new-array v1, v5, [I

    aput v3, v1, v2

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput v6, v1, v2

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/util/gj;->b:[[I

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/util/gj;->c:Ljava/util/Map;

    return-void

    .line 139
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 51
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 428
    if-eqz p1, :cond_1

    const-string/jumbo v0, "sans-serif-light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const-string/jumbo v0, "fonts/Roboto-Light.ttf"

    .line 434
    :goto_0
    sget-object v1, Lcom/viber/voip/util/gj;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 436
    sget-object v2, Lcom/viber/voip/util/gj;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_0
    sget-object v1, Lcom/viber/voip/util/gj;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0

    .line 431
    :cond_1
    const-string/jumbo v0, "fonts/Roboto-Regular.ttf"

    goto :goto_0
.end method

.method public static a(ILcom/viber/voip/messages/conversation/ap;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x64

    const/4 v1, 0x0

    const/16 v9, 0x20

    const/16 v8, 0x2e

    .line 235
    if-eqz p1, :cond_9

    .line 236
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v3

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    new-instance v5, Landroid/database/CharArrayBuffer;

    new-array v0, v10, [C

    invoke-direct {v5, v0}, Landroid/database/CharArrayBuffer;-><init>([C)V

    move v0, v1

    .line 240
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 241
    invoke-virtual {p1, p0, v5}, Lcom/viber/voip/messages/conversation/ap;->a(ILandroid/database/CharArrayBuffer;)V

    .line 243
    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-nez v2, :cond_0

    .line 240
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v10, :cond_2

    .line 246
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getGroupConversationparticipantNames; at last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_2
    return-object v0

    .line 250
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    move v2, v1

    .line 251
    :goto_3
    iget v6, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v2, v6, :cond_4

    .line 252
    iget-object v6, v5, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v2

    .line 253
    const/4 v7, 0x2

    if-le v2, v7, :cond_5

    if-ne v6, v9, :cond_5

    .line 262
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gt v0, v2, :cond_7

    .line 263
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 267
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getGroupConversationparticipantNames; buffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v2}, Landroid/support/v4/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 269
    const-string/jumbo v2, "\u200f"

    invoke-virtual {v4, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getGroupConversationparticipantNames; string is rtl,insert pos: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 275
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getGroupConversationparticipantNames; after changing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    .line 255
    :cond_5
    const/16 v7, 0xe

    if-le v2, v7, :cond_6

    .line 256
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 259
    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 265
    :cond_7
    const-string/jumbo v2, ""

    goto :goto_5

    .line 272
    :cond_8
    const-string/jumbo v2, "\u200e"

    invoke-virtual {v4, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getGroupConversationparticipantNames; string is ltr,insert pos: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 281
    :cond_9
    const-string/jumbo v0, ""

    goto/16 :goto_2
.end method

.method public static a(J)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const-wide/32 v7, 0xf4240

    const-wide/16 v5, 0x3e8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 223
    const-wide/16 v0, 0x3e7

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 224
    const-string/jumbo v0, "%dK"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_0
    const-wide/32 v0, 0x1869f

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    cmp-long v0, p0, v7

    if-gez v0, :cond_1

    .line 226
    const-string/jumbo v0, "%dk"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    const-wide/32 v0, 0xf423f

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 228
    const-string/jumbo v0, "%dm"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 106
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 111
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 113
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 120
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 292
    const/16 v0, 0x20

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 293
    if-eq p1, v2, :cond_2

    if-gt v0, p1, :cond_0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 294
    :cond_0
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_1
    :goto_0
    return-object p0

    .line 295
    :cond_2
    if-eq v0, v2, :cond_1

    if-eq p1, v2, :cond_3

    if-gt v0, p1, :cond_1

    .line 296
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/text/Editable;)V
    .locals 6
    .parameter

    .prologue
    .line 163
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 164
    sget-object v1, Lcom/viber/voip/util/gj;->b:[[I

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 196
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 173
    invoke-static {p0}, Lcom/viber/voip/util/gj;->b(Landroid/text/Editable;)V

    .line 174
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 177
    sget-object v1, Lcom/viber/voip/util/gj;->b:[[I

    add-int/lit8 v0, v0, -0x6

    aget-object v1, v1, v0

    .line 178
    array-length v2, v1

    .line 181
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 182
    aget v3, v1, v0

    .line 183
    add-int v4, v3, v0

    add-int/2addr v3, v0

    const-string/jumbo v5, "-"

    invoke-interface {p0, v4, v3, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 188
    :goto_1
    if-lez v0, :cond_0

    .line 189
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 190
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 6
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 68
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 70
    cmpl-float v5, v2, v1

    if-lez v5, :cond_0

    move v1, v2

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    float-to-int v0, v1

    .line 76
    if-ge v4, v0, :cond_2

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 80
    :cond_2
    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/util/gl;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    const/4 v0, 0x0

    .line 410
    if-eqz p1, :cond_2

    .line 411
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10103ac

    aput v3, v2, v1

    .line 412
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 415
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/viber/voip/util/gj;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 416
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 421
    :cond_3
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 303
    if-ne p0, p1, :cond_1

    .line 304
    const/4 v0, 0x1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    .line 307
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    .line 310
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 211
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 214
    :cond_0
    return-object p0
.end method

.method private static b(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 132
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

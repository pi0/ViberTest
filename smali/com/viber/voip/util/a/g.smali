.class public Lcom/viber/voip/util/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 182
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 190
    const-string/jumbo v0, ""

    .line 207
    :goto_1
    return-object v0

    .line 185
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 194
    :goto_2
    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    add-int/lit8 v1, v1, -0x1

    .line 199
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 200
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 203
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 204
    goto :goto_2
.end method

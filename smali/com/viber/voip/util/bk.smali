.class public Lcom/viber/voip/util/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method

.method public static a(IIZ)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    if-eqz p2, :cond_0

    .line 15
    invoke-static {p0, p1}, Lcom/viber/voip/util/bk;->a(II)I

    move-result v0

    .line 17
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/viber/voip/util/bk;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs a(I[I)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    .line 23
    int-to-long v4, p0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    and-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 27
    :goto_1
    return v0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    return v0
.end method

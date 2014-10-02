.class public Lcom/viber/voip/messages/orm/collections/LongSparseArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    .line 50
    invoke-static {p1}, Lcom/viber/voip/util/e;->b(I)I

    move-result v0

    .line 52
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 54
    iput v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/messages/orm/collections/LongSparseArray;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-object v0
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 339
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 340
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 342
    aget-wide v3, p0, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move v1, v2

    .line 343
    goto :goto_0

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    .line 348
    :cond_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_3

    .line 349
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 353
    :cond_2
    :goto_1
    return v0

    .line 350
    :cond_3
    aget-wide v1, p0, v0

    cmp-long v1, v1, p3

    if-eqz v1, :cond_2

    .line 353
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 126
    iget v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    .line 128
    iget-object v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    .line 129
    iget-object v5, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 131
    :goto_0
    if-ge v1, v3, :cond_2

    .line 132
    aget-object v6, v5, v1

    .line 134
    sget-object v7, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 135
    if-eq v1, v0, :cond_0

    .line 136
    aget-wide v7, v4, v1

    aput-wide v7, v4, v0

    .line 137
    aput-object v6, v5, v0

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    iput-boolean v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    .line 145
    iput v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    .line 148
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 307
    iget v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 334
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 313
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 316
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    .line 317
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 318
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/viber/voip/util/e;->b(I)I

    move-result v1

    .line 320
    new-array v2, v1, [J

    .line 321
    new-array v1, v1, [Ljava/lang/Object;

    .line 324
    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    iget-object v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iput-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    .line 328
    iput-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 332
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    goto :goto_0
.end method

.method protected checkIntegrity()V
    .locals 5

    .prologue
    .line 357
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 359
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_0

    .line 360
    const-string/jumbo v1, "FAIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 291
    iget v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    .line 292
    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 294
    :goto_0
    if-ge v0, v2, :cond_0

    .line 295
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iput v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    .line 299
    iput-boolean v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    .line 300
    return-void
.end method

.method public containsKey(J)Z
    .locals 1
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(J)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 108
    if-ltz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    .line 114
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 374
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 377
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 95
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public getKeys()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v0, v0

    .line 62
    new-array v1, v0, [J

    .line 63
    iget-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v1
.end method

.method public getiIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;-><init>(Lcom/viber/voip/messages/orm/collections/LongSparseArray;)V

    return-object v0
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 280
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 284
    :goto_1
    return v0

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 158
    if-ltz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 200
    :goto_0
    return-void

    .line 161
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 163
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 164
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 165
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    .line 169
    :cond_1
    iget-boolean v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    iget-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 176
    :cond_2
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    iget-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 177
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/viber/voip/util/e;->b(I)I

    move-result v1

    .line 179
    new-array v2, v1, [J

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    iget-object v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v3, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iput-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    .line 187
    iput-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 190
    :cond_3
    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    iget-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 197
    iget-object v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 198
    iget v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->delete(J)V

    .line 121
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 252
    return-void
.end method

.method public setValues([JLjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JTE;)V"
        }
    .end annotation

    .prologue
    .line 73
    array-length v1, p1

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3, p2}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 211
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->gc()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.class public Lcom/viber/voip/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/Object;

.field private static b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/viber/voip/util/e;->a:[Ljava/lang/Object;

    .line 33
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/viber/voip/util/e;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 38
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 39
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 40
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 42
    :cond_0
    return p0

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/Class",
            "<*>;)[TT;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 149
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 150
    aget-object v2, p0, v1

    aput-object v2, v0, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/lang/Class",
            "<*>;)[TT;"
        }
    .end annotation

    .prologue
    .line 156
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/viber/voip/util/e;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 157
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 158
    return-object v0
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 58
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/viber/voip/util/e;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

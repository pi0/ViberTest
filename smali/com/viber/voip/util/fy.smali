.class public Lcom/viber/voip/util/fy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[I


# direct methods
.method public constructor <init>([[I)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/viber/voip/util/fy;->a:[[I

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 21
    iget-object v3, p0, Lcom/viber/voip/util/fy;->a:[[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    move v0, v1

    .line 22
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 23
    aget v6, v5, v0

    and-int/2addr v6, p1

    if-nez v6, :cond_1

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 21
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 25
    :cond_1
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_2

    .line 26
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget v0, v5, v0

    .line 31
    :goto_2
    return v0

    .line 22
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

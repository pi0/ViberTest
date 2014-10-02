.class final Lcom/viber/voip/util/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/viber/voip/util/bv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/viber/voip/util/bv;Lcom/viber/voip/util/bv;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 511
    iget v2, p1, Lcom/viber/voip/util/bv;->b:I

    iget v3, p2, Lcom/viber/voip/util/bv;->b:I

    if-ge v2, v3, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    iget v2, p1, Lcom/viber/voip/util/bv;->b:I

    iget v3, p2, Lcom/viber/voip/util/bv;->b:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 516
    goto :goto_0

    .line 519
    :cond_2
    iget v2, p1, Lcom/viber/voip/util/bv;->c:I

    iget v3, p2, Lcom/viber/voip/util/bv;->c:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 520
    goto :goto_0

    .line 523
    :cond_3
    iget v1, p1, Lcom/viber/voip/util/bv;->c:I

    iget v2, p2, Lcom/viber/voip/util/bv;->c:I

    if-gt v1, v2, :cond_0

    .line 527
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 509
    check-cast p1, Lcom/viber/voip/util/bv;

    check-cast p2, Lcom/viber/voip/util/bv;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/util/hq;->a(Lcom/viber/voip/util/bv;Lcom/viber/voip/util/bv;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/android/camera/a/i;
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
        "Lcom/android/camera/a/k;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/camera/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/camera/a/k;Lcom/android/camera/a/k;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 254
    iget-wide v0, p1, Lcom/android/camera/a/k;->b:J

    iget-wide v2, p2, Lcom/android/camera/a/k;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 255
    iget-wide v0, p1, Lcom/android/camera/a/k;->b:J

    iget-wide v2, p2, Lcom/android/camera/a/k;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 257
    :goto_0
    return v0

    .line 255
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget v0, p1, Lcom/android/camera/a/k;->a:I

    iget v1, p2, Lcom/android/camera/a/k;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 251
    check-cast p1, Lcom/android/camera/a/k;

    check-cast p2, Lcom/android/camera/a/k;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/a/i;->a(Lcom/android/camera/a/k;Lcom/android/camera/a/k;)I

    move-result v0

    return v0
.end method

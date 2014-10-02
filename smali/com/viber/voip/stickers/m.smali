.class Lcom/viber/voip/stickers/m;
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
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/c;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/viber/voip/stickers/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 514
    check-cast p1, Lcom/viber/voip/stickers/i;

    .line 515
    check-cast p2, Lcom/viber/voip/stickers/i;

    .line 516
    invoke-interface {p1}, Lcom/viber/voip/stickers/i;->a()I

    move-result v0

    invoke-interface {p2}, Lcom/viber/voip/stickers/i;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 511
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/stickers/m;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

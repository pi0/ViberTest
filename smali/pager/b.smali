.class final Lpager/b;
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
        "Lpager/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpager/e;Lpager/e;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    iget v0, p1, Lpager/e;->b:I

    iget v1, p2, Lpager/e;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    check-cast p1, Lpager/e;

    check-cast p2, Lpager/e;

    invoke-virtual {p0, p1, p2}, Lpager/b;->a(Lpager/e;Lpager/e;)I

    move-result v0

    return v0
.end method

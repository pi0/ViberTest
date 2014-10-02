.class Lcom/android/camera/a/m;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/camera/a/l;


# direct methods
.method constructor <init>(Lcom/android/camera/a/l;IFZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/a/m;->b:Lcom/android/camera/a/l;

    iput p5, p0, Lcom/android/camera/a/m;->a:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/camera/a/m;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/a/m;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

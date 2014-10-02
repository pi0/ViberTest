.class Lcom/a/a/a/c;
.super Lcom/a/a/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/a/a/b/a;-><init>(Ljava/util/List;)V

    .line 456
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x1

    return v0
.end method

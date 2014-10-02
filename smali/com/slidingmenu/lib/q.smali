.class final Lcom/slidingmenu/lib/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/slidingmenu/lib/SlidingMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 995
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/slidingmenu/lib/g;)V

    return-object v0
.end method

.method public a(I)[Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 999
    new-array v0, p1, [Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 993
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/q;->a(Landroid/os/Parcel;)Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 993
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/q;->a(I)[Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method

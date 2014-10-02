.class final Lit/sephiroth/android/library/widget/r;
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
        "Lit/sephiroth/android/library/widget/AbsHListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 1453
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;Lit/sephiroth/android/library/widget/a;)V

    return-object v0
.end method

.method public a(I)[Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 1458
    new-array v0, p1, [Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1449
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/r;->a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1449
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/r;->a(I)[Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    move-result-object v0

    return-object v0
.end method

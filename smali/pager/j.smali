.class final Lpager/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lpager/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lpager/ViewPager$SavedState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1062
    new-instance v0, Lpager/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lpager/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lpager/ViewPager$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 1066
    new-array v0, p1, [Lpager/ViewPager$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1059
    invoke-virtual {p0, p1, p2}, Lpager/j;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lpager/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Lpager/j;->a(I)[Lpager/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

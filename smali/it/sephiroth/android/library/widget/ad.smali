.class final Lit/sephiroth/android/library/widget/ad;
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
        "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    .locals 5
    .parameter

    .prologue
    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object v0

    .line 935
    return-object v0
.end method

.method public a(I)[Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    .locals 1
    .parameter

    .prologue
    .line 939
    new-array v0, p1, [Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 931
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ad;->a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 931
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ad;->a(I)[Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.class Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/viber/voip/gallery/preview/j;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 732
    new-instance v0, Lcom/viber/voip/gallery/preview/m;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/m;-><init>()V

    sput-object v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->a:I

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->b:I

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->c:I

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->e:I

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 759
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 760
    invoke-static {}, Lcom/viber/voip/gallery/preview/j;->values()[Lcom/viber/voip/gallery/preview/j;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->d:Lcom/viber/voip/gallery/preview/j;

    .line 762
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 771
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->d:Lcom/viber/voip/gallery/preview/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;->d:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/j;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    return-void

    .line 775
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.class Lcom/viber/voip/widget/PhotoDoodleView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/widget/PhotoDoodleView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z

.field d:Z

.field e:Lcom/viber/voip/widget/t;

.field f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 545
    new-instance v0, Lcom/viber/voip/widget/u;

    invoke-direct {v0}, Lcom/viber/voip/widget/u;-><init>()V

    sput-object v0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 570
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 571
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->a:Landroid/graphics/Bitmap;

    .line 572
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->b:Landroid/graphics/Bitmap;

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->c:Z

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->d:Z

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->f:F

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 578
    invoke-static {}, Lcom/viber/voip/widget/t;->values()[Lcom/viber/voip/widget/t;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->e:Lcom/viber/voip/widget/t;

    .line 580
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 573
    goto :goto_0

    :cond_2
    move v1, v2

    .line 574
    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 566
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 584
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 586
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 587
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->d:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 590
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->e:Lcom/viber/voip/widget/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->e:Lcom/viber/voip/widget/t;

    invoke-virtual {v0}, Lcom/viber/voip/widget/t;->ordinal()I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    return-void

    :cond_0
    move v0, v2

    .line 587
    goto :goto_0

    :cond_1
    move v1, v2

    .line 588
    goto :goto_1

    .line 590
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.class Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/viber/voip/messages/ui/bk;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/bk;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 424
    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c:I

    .line 425
    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->a:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->b:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d:I

    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 424
    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c:I

    .line 425
    iput v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d:I

    .line 443
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I
    .locals 1
    .parameter

    .prologue
    .line 420
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->a:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->a:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I
    .locals 1
    .parameter

    .prologue
    .line 420
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->b:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->b:I

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I
    .locals 1
    .parameter

    .prologue
    .line 420
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c:I

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c:I

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;)I
    .locals 1
    .parameter

    .prologue
    .line 420
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput p1, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 455
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 456
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget v0, p0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    return-void
.end method

.class Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 697
    new-instance v0, Lcom/viber/voip/messages/extras/doodle/d;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/doodle/d;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 682
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->a:Landroid/os/Bundle;

    .line 684
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/messages/extras/doodle/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 677
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    iput-object p2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->a:Landroid/os/Bundle;

    .line 679
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 692
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 694
    return-void
.end method

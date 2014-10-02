.class final Lcom/viber/voip/messages/ui/bk;
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
        "Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 432
    new-instance v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 437
    new-array v0, p1, [Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/bk;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/bk;->a(I)[Lcom/viber/voip/messages/ui/ExpandablePanelLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

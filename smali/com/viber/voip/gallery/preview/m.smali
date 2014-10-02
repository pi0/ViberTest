.class final Lcom/viber/voip/gallery/preview/m;
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
        "Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 740
    new-instance v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;

    invoke-direct {v0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 735
    new-array v0, p1, [Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/preview/m;->a(Landroid/os/Parcel;)Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/preview/m;->a(I)[Lcom/viber/voip/gallery/preview/DoodleBaseActivity$SavedState;

    move-result-object v0

    return-object v0
.end method

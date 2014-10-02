.class final Lcom/android/camera/r;
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
        "Lcom/android/camera/ImageManager$ImageListParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/camera/ImageManager$ImageListParam;
    .locals 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/android/camera/ImageManager$ImageListParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;Lcom/android/camera/o;)V

    return-object v0
.end method

.method public a(I)[Lcom/android/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter

    .prologue
    .line 110
    new-array v0, p1, [Lcom/android/camera/ImageManager$ImageListParam;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/camera/r;->a(Landroid/os/Parcel;)Lcom/android/camera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/camera/r;->a(I)[Lcom/android/camera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method

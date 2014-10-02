.class final Lcom/sec/android/app/music/player/data/a;
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
        "Lcom/sec/android/app/music/player/data/MusicAlbumInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sec/android/app/music/player/data/MusicAlbumInfo;
    .locals 2
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;

    invoke-direct {v0}, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;->d:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;->b:I

    .line 45
    return-object v0
.end method

.method public a(I)[Lcom/sec/android/app/music/player/data/MusicAlbumInfo;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-array v0, p1, [Lcom/sec/android/app/music/player/data/MusicAlbumInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/player/data/a;->a(Landroid/os/Parcel;)Lcom/sec/android/app/music/player/data/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/player/data/a;->a(I)[Lcom/sec/android/app/music/player/data/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

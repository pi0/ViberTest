.class public Lcom/viber/jni/LocationInfo;
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
            "Lcom/viber/jni/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final latitude:I

.field private final longitude:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/jni/LocationInfo;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/viber/jni/LocationInfo$1;

    invoke-direct {v0}, Lcom/viber/jni/LocationInfo$1;-><init>()V

    sput-object v0, Lcom/viber/jni/LocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/viber/jni/LocationInfo;->latitude:I

    .line 13
    iput p2, p0, Lcom/viber/jni/LocationInfo;->longitude:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/LocationInfo;->latitude:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/LocationInfo;->longitude:I

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 4

    .prologue
    .line 25
    iget v0, p0, Lcom/viber/jni/LocationInfo;->latitude:I

    int-to-double v0, v0

    const-wide v2, 0x416312d000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 4

    .prologue
    .line 29
    iget v0, p0, Lcom/viber/jni/LocationInfo;->longitude:I

    int-to-double v0, v0

    const-wide v2, 0x416312d000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNativeLatitude()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/viber/jni/LocationInfo;->latitude:I

    return v0
.end method

.method public getNativeLongitude()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/viber/jni/LocationInfo;->longitude:I

    return v0
.end method

.method public lat()D
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/viber/jni/LocationInfo;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public lng()D
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/viber/jni/LocationInfo;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/jni/LocationInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/jni/LocationInfo;->lat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/jni/LocationInfo;->lng()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/viber/jni/LocationInfo;->latitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/viber/jni/LocationInfo;->longitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method

.class final Lcom/viber/jni/PublicGroupUserInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/viber/jni/PublicGroupUserInfo;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/viber/jni/PublicGroupUserInfo;

    invoke-direct {v0, p1}, Lcom/viber/jni/PublicGroupUserInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/viber/jni/PublicGroupUserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/viber/jni/PublicGroupUserInfo;
    .locals 1
    .parameter

    .prologue
    .line 37
    new-array v0, p1, [Lcom/viber/jni/PublicGroupUserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/viber/jni/PublicGroupUserInfo$1;->newArray(I)[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v0

    return-object v0
.end method

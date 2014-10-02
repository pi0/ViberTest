.class final Lcom/viber/jni/GroupUserInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/viber/jni/GroupUserInfo;
    .locals 1
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/viber/jni/GroupUserInfo;

    invoke-direct {v0, p1}, Lcom/viber/jni/GroupUserInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/viber/jni/GroupUserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/viber/jni/GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/viber/jni/GroupUserInfo;
    .locals 1
    .parameter

    .prologue
    .line 60
    new-array v0, p1, [Lcom/viber/jni/GroupUserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/viber/jni/GroupUserInfo$1;->newArray(I)[Lcom/viber/jni/GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

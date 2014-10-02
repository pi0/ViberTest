.class final Lcom/viber/jni/OnlineContactInfo$1;
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
        "Lcom/viber/jni/OnlineContactInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/viber/jni/OnlineContactInfo;
    .locals 1
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/viber/jni/OnlineContactInfo;

    invoke-direct {v0, p1}, Lcom/viber/jni/OnlineContactInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/viber/jni/OnlineContactInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/viber/jni/OnlineContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/viber/jni/OnlineContactInfo;
    .locals 1
    .parameter

    .prologue
    .line 30
    new-array v0, p1, [Lcom/viber/jni/OnlineContactInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/viber/jni/OnlineContactInfo$1;->newArray(I)[Lcom/viber/jni/OnlineContactInfo;

    move-result-object v0

    return-object v0
.end method

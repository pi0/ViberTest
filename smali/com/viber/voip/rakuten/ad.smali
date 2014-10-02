.class final Lcom/viber/voip/rakuten/ad;
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
        "Lcom/viber/voip/rakuten/RakutenUrlSchemeData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/rakuten/RakutenUrlSchemeData;
    .locals 1
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/viber/voip/rakuten/RakutenUrlSchemeData;

    invoke-direct {v0, p1}, Lcom/viber/voip/rakuten/RakutenUrlSchemeData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/rakuten/RakutenUrlSchemeData;
    .locals 1
    .parameter

    .prologue
    .line 52
    new-array v0, p1, [Lcom/viber/voip/rakuten/RakutenUrlSchemeData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/ad;->a(Landroid/os/Parcel;)Lcom/viber/voip/rakuten/RakutenUrlSchemeData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/ad;->a(I)[Lcom/viber/voip/rakuten/RakutenUrlSchemeData;

    move-result-object v0

    return-object v0
.end method

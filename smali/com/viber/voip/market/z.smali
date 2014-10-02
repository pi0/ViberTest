.class final Lcom/viber/voip/market/z;
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
        "Lcom/viber/voip/market/MarketPublicGroupInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/market/MarketPublicGroupInfo;
    .locals 1
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/viber/voip/market/MarketPublicGroupInfo;

    invoke-direct {v0, p1}, Lcom/viber/voip/market/MarketPublicGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/market/MarketPublicGroupInfo;
    .locals 1
    .parameter

    .prologue
    .line 51
    new-array v0, p1, [Lcom/viber/voip/market/MarketPublicGroupInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/z;->a(Landroid/os/Parcel;)Lcom/viber/voip/market/MarketPublicGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/z;->a(I)[Lcom/viber/voip/market/MarketPublicGroupInfo;

    move-result-object v0

    return-object v0
.end method

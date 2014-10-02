.class final Lcom/viber/voip/market/x;
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
        "Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;
    .locals 2
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;-><init>(Landroid/os/Parcel;Lcom/viber/voip/market/p;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;
    .locals 1
    .parameter

    .prologue
    .line 127
    new-array v0, p1, [Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/x;->a(Landroid/os/Parcel;)Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/x;->a(I)[Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;

    move-result-object v0

    return-object v0
.end method

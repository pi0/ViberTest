.class final Lcom/viber/voip/market/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/market/MarketApi$ProductInfo;
    .locals 1
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/viber/voip/market/MarketApi$ProductInfo;

    invoke-direct {v0, p1}, Lcom/viber/voip/market/MarketApi$ProductInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/market/MarketApi$ProductInfo;
    .locals 1
    .parameter

    .prologue
    .line 83
    new-array v0, p1, [Lcom/viber/voip/market/MarketApi$ProductInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/t;->a(Landroid/os/Parcel;)Lcom/viber/voip/market/MarketApi$ProductInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/t;->a(I)[Lcom/viber/voip/market/MarketApi$ProductInfo;

    move-result-object v0

    return-object v0
.end method

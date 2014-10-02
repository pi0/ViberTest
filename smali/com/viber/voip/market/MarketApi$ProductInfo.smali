.class public Lcom/viber/voip/market/MarketApi$ProductInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcom/viber/voip/billing/bt;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/viber/voip/market/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/viber/voip/market/t;

    invoke-direct {v0}, Lcom/viber/voip/market/t;-><init>()V

    sput-object v0, Lcom/viber/voip/market/MarketApi$ProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->a:Lcom/viber/voip/billing/bt;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->b:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/viber/voip/market/v;->values()[Lcom/viber/voip/market/v;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->c:Lcom/viber/voip/market/v;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->a:Lcom/viber/voip/billing/bt;

    .line 55
    iput-object p2, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->c:Lcom/viber/voip/market/v;

    .line 56
    iput-object p3, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->b:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->a:Lcom/viber/voip/billing/bt;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/market/MarketApi$ProductInfo;->c:Lcom/viber/voip/market/v;

    invoke-virtual {v0}, Lcom/viber/voip/market/v;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method

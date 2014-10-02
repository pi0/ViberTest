.class final Lcom/viber/voip/registration/ap;
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
        "Lcom/viber/voip/registration/CountryCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/registration/CountryCode;
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/viber/voip/registration/CountryCode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/registration/CountryCode;-><init>(Landroid/os/Parcel;Lcom/viber/voip/registration/ap;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/registration/CountryCode;
    .locals 1
    .parameter

    .prologue
    .line 111
    new-array v0, p1, [Lcom/viber/voip/registration/CountryCode;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/ap;->a(Landroid/os/Parcel;)Lcom/viber/voip/registration/CountryCode;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/ap;->a(I)[Lcom/viber/voip/registration/CountryCode;

    move-result-object v0

    return-object v0
.end method

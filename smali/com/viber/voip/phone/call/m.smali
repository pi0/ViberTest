.class final Lcom/viber/voip/phone/call/m;
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
        "Lcom/viber/voip/phone/call/CallerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/phone/call/CallerInfo;
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/viber/voip/phone/call/CallerInfo;

    invoke-direct {v0, p1}, Lcom/viber/voip/phone/call/CallerInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/phone/call/CallerInfo;
    .locals 1
    .parameter

    .prologue
    .line 88
    new-array v0, p1, [Lcom/viber/voip/phone/call/CallerInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/call/m;->a(Landroid/os/Parcel;)Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/call/m;->a(I)[Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/viber/voip/u;
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
        "Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;
    .locals 1
    .parameter

    .prologue
    .line 226
    new-instance v0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    invoke-direct {v0, p1}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;
    .locals 1
    .parameter

    .prologue
    .line 221
    new-array v0, p1, [Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/viber/voip/u;->a(Landroid/os/Parcel;)Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/viber/voip/u;->a(I)[Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/viber/voip/messages/ui/ef;
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
        "Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;
    .locals 2
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;-><init>(Landroid/os/Parcel;Lcom/viber/voip/messages/ui/ed;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;
    .locals 1
    .parameter

    .prologue
    .line 67
    new-array v0, p1, [Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/ef;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/ef;->a(I)[Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/viber/voip/messages/ui/dm;
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
        "Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;
    .locals 1
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;
    .locals 1
    .parameter

    .prologue
    .line 86
    new-array v0, p1, [Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/dm;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/dm;->a(I)[Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/viber/voip/messages/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 1
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/GroupController$GroupMember;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 1
    .parameter

    .prologue
    .line 73
    new-array v0, p1, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/controller/b;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/controller/b;->a(I)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v0

    return-object v0
.end method

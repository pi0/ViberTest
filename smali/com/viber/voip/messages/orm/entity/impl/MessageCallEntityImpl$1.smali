.class final Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;
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
        "Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;
    .locals 2
    .parameter

    .prologue
    .line 218
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;-><init>(Landroid/os/Parcel;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 222
    new-array v0, p1, [Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl$1;->newArray(I)[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    move-result-object v0

    return-object v0
.end method

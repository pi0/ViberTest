.class final Lcom/viber/voip/calls/entities/impl/d;
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
        "Lcom/viber/voip/calls/entities/impl/CallEntityImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/calls/entities/impl/CallEntityImpl;
    .locals 2
    .parameter

    .prologue
    .line 285
    new-instance v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>(Landroid/os/Parcel;Lcom/viber/voip/calls/entities/impl/c;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/calls/entities/impl/CallEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 289
    new-array v0, p1, [Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/entities/impl/d;->a(Landroid/os/Parcel;)Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/entities/impl/d;->a(I)[Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    move-result-object v0

    return-object v0
.end method

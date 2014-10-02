.class final Lcom/viber/voip/widget/j;
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
        "Lcom/viber/voip/widget/MessageBar$Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/widget/MessageBar$Message;
    .locals 1
    .parameter

    .prologue
    .line 305
    new-instance v0, Lcom/viber/voip/widget/MessageBar$Message;

    invoke-direct {v0, p1}, Lcom/viber/voip/widget/MessageBar$Message;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/widget/MessageBar$Message;
    .locals 1
    .parameter

    .prologue
    .line 309
    new-array v0, p1, [Lcom/viber/voip/widget/MessageBar$Message;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/j;->a(Landroid/os/Parcel;)Lcom/viber/voip/widget/MessageBar$Message;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/j;->a(I)[Lcom/viber/voip/widget/MessageBar$Message;

    move-result-object v0

    return-object v0
.end method

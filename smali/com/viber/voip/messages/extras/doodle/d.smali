.class final Lcom/viber/voip/messages/extras/doodle/d;
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
        "Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 701
    new-instance v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;-><init>(Landroid/os/Parcel;Lcom/viber/voip/messages/extras/doodle/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 706
    new-array v0, p1, [Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/doodle/d;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/doodle/d;->a(I)[Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    move-result-object v0

    return-object v0
.end method

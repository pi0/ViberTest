.class final Lcom/viber/voip/messages/conversation/publicgroup/ac;
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
        "Lcom/viber/voip/messages/conversation/ui/ConversationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/conversation/ui/ConversationData;
    .locals 1
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/conversation/ui/ConversationData;
    .locals 1
    .parameter

    .prologue
    .line 94
    new-array v0, p1, [Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ac;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ac;->a(I)[Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    return-object v0
.end method

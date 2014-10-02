.class final Lcom/viber/voip/messages/conversation/q;
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
        "Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;
    .locals 1
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;
    .locals 1
    .parameter

    .prologue
    .line 154
    new-array v0, p1, [Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/q;->a(Landroid/os/Parcel;)Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/q;->a(I)[Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    move-result-object v0

    return-object v0
.end method

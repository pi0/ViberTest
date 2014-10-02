.class public Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/viber/voip/market/x;

    invoke-direct {v0}, Lcom/viber/voip/market/x;-><init>()V

    sput-object v0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->a:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->b:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->c:Ljava/lang/String;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/market/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->a:J

    .line 111
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->B()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->b:I

    .line 112
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->c:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserPublicGroupInfo{groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method

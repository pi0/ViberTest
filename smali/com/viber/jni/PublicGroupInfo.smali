.class public Lcom/viber/jni/PublicGroupInfo;
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
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final backgroundId:Ljava/lang/String;

.field public final countryCode:Ljava/lang/String;

.field public final flags:I

.field public final groupID:J

.field public final groupName:Ljava/lang/String;

.field public final groupRole:I

.field public final groupUri:Ljava/lang/String;

.field public final iconId:Ljava/lang/String;

.field public final lastMessageId:I

.field public final location:Lcom/viber/jni/LocationInfo;

.field public final members:[Lcom/viber/jni/PublicGroupUserInfo;

.field public final publicGroupType:I

.field public revision:I

.field public final tagLine:Ljava/lang/String;

.field public final tags:[Ljava/lang/String;

.field public final watchersCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/viber/jni/PublicGroupInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/jni/PublicGroupInfo;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/viber/jni/PublicGroupInfo$1;

    invoke-direct {v0}, Lcom/viber/jni/PublicGroupInfo$1;-><init>()V

    sput-object v0, Lcom/viber/jni/PublicGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x3

    const-string/jumbo v2, "PublicGroupInfo"

    const-string/jumbo v3, "init"

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iput p1, p0, Lcom/viber/jni/PublicGroupInfo;->publicGroupType:I

    .line 38
    iput-wide p2, p0, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    .line 39
    iput-object p4, p0, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/viber/jni/PublicGroupInfo;->revision:I

    .line 41
    iput-object p6, p0, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/viber/jni/PublicGroupInfo;->backgroundId:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    .line 45
    iput-object p10, p0, Lcom/viber/jni/PublicGroupInfo;->countryCode:Ljava/lang/String;

    .line 46
    iput p11, p0, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    .line 47
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->tagLine:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->tags:[Ljava/lang/String;

    .line 49
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    .line 50
    move/from16 v0, p15

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->lastMessageId:I

    .line 51
    move/from16 v0, p16

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->flags:I

    .line 52
    move/from16 v0, p17

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    .line 53
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/LocationInfo;

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->countryCode:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->tags:[Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->tagLine:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->revision:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->backgroundId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->publicGroupType:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    .line 68
    sget-object v0, Lcom/viber/jni/PublicGroupUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/jni/PublicGroupUserInfo;

    check-cast v0, [Lcom/viber/jni/PublicGroupUserInfo;

    iput-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->lastMessageId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->flags:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublicGroupInfo [publicGroupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupInfo;->publicGroupType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupInfo;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->backgroundId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->tagLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->tags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PublicGroupInfo;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupInfo;->lastMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupInfo;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", watchersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

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
    .line 81
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->tagLine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/viber/jni/PublicGroupInfo;->revision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->backgroundId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/viber/jni/PublicGroupInfo;->publicGroupType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-wide v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget v0, p0, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/viber/jni/PublicGroupInfo;->members:[Lcom/viber/jni/PublicGroupUserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 94
    iget v0, p0, Lcom/viber/jni/PublicGroupInfo;->lastMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/viber/jni/PublicGroupInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method

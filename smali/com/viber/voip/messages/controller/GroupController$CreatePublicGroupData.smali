.class public Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;
.super Lcom/viber/jni/PublicGroupInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/viber/voip/messages/controller/a;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/a;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 21
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
    .line 109
    const/4 v4, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-direct/range {v3 .. v20}, Lcom/viber/jni/PublicGroupInfo;-><init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;III)V

    .line 110
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->a:Ljava/lang/String;

    .line 111
    move-wide/from16 v0, p15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->b:J

    .line 112
    move-wide/from16 v0, p17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->c:J

    .line 113
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->d:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/viber/jni/PublicGroupInfo;-><init>(Landroid/os/Parcel;)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->a:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->b:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->c:J

    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CreatePublicGroupData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/viber/jni/PublicGroupInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", addressString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->iconId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 131
    invoke-super {p0, p1, p2}, Lcom/viber/jni/PublicGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 136
    return-void
.end method

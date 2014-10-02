.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;
.super Lcom/viber/voip/messages/conversation/ui/ConversationData;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/conversation/ui/ConversationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroid/net/Uri;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public e:Lcom/viber/jni/PublicGroupInfo;

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/ac;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ac;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;II)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const-wide/16 v8, 0x0

    const-string/jumbo v10, ""

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IIJLjava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const-wide/16 v3, -0x1

    const-string/jumbo v7, ""

    const/4 v8, 0x3

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-string/jumbo v13, ""

    move-object v2, p0

    move-wide/from16 v5, p1

    move-object/from16 v14, p3

    invoke-direct/range {v2 .. v14}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(JJLjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 28
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    .line 29
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    .line 58
    move/from16 v0, p7

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    .line 59
    move/from16 v0, p6

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->c:I

    .line 60
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->d:Ljava/lang/String;

    .line 61
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    .line 62
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(Landroid/os/Parcel;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    .line 67
    const-class v0, Lcom/viber/jni/PublicGroupInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/PublicGroupInfo;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->e:Lcom/viber/jni/PublicGroupInfo;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    .line 69
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->c:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->d:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/viber/jni/PublicGroupInfo;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 43
    iget-wide v3, p1, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    const-string/jumbo v5, ""

    const/4 v6, 0x3

    const-string/jumbo v11, ""

    iget-object v12, p1, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    move-object v0, p0

    move-wide v7, v1

    move-wide v9, v1

    invoke-direct/range {v0 .. v12}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(JJLjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->e:Lcom/viber/jni/PublicGroupInfo;

    .line 45
    iget v0, p1, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    .line 46
    iget-object v0, p1, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    .line 47
    iget v0, p1, Lcom/viber/jni/PublicGroupInfo;->revision:I

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->c:I

    .line 48
    iget-object v0, p1, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/adapters/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(Lcom/viber/voip/messages/adapters/a/a;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    .line 36
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->E()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    .line 37
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->F()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->c:I

    .line 39
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->d:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->e:Lcom/viber/jni/PublicGroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.class Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

.field final synthetic val$backgroundID:Ljava/lang/String;

.field final synthetic val$country:Ljava/lang/String;

.field final synthetic val$groupID:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$groupRole:I

.field final synthetic val$groupType:I

.field final synthetic val$groupUri:Ljava/lang/String;

.field final synthetic val$iconID:Ljava/lang/String;

.field final synthetic val$lastMessageID:I

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$members:[Lcom/viber/jni/PublicGroupUserInfo;

.field final synthetic val$revision:I

.field final synthetic val$seq:I

.field final synthetic val$status:I

.field final synthetic val$tagLine:Ljava/lang/String;

.field final synthetic val$tags:[Ljava/lang/String;

.field final synthetic val$verified:Z

.field final synthetic val$watchersCount:I


# direct methods
.method constructor <init>(Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V
    .locals 1
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->this$0:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    iput p2, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$seq:I

    iput-wide p3, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupID:J

    iput p5, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupType:I

    iput-object p6, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupUri:Ljava/lang/String;

    iput p7, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$revision:I

    iput-object p8, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$iconID:Ljava/lang/String;

    iput-object p9, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$backgroundID:Ljava/lang/String;

    iput-object p10, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupName:Ljava/lang/String;

    iput-object p11, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$location:Lcom/viber/jni/LocationInfo;

    iput-object p12, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$country:Ljava/lang/String;

    iput-object p13, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$tagLine:Ljava/lang/String;

    iput-object p14, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$tags:[Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$members:[Lcom/viber/jni/PublicGroupUserInfo;

    move/from16 v0, p16

    iput v0, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupRole:I

    move/from16 v0, p17

    iput v0, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$lastMessageID:I

    move/from16 v0, p18

    iput v0, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$watchersCount:I

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$verified:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;)V
    .locals 21
    .parameter

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$seq:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupID:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$revision:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$iconID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$backgroundID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$tagLine:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$tags:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$members:[Lcom/viber/jni/PublicGroupUserInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$groupRole:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$lastMessageID:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$watchersCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$verified:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->val$status:I

    move/from16 v20, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v20}, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;->onPublicGroupInfo(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V

    .line 38
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;

    invoke-virtual {p0, p1}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;->execute(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;)V

    return-void
.end method

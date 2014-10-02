.class Lcom/viber/jni/PhoneControllerListener$78;
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
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerListener;

.field final synthetic val$addedMembers:[Lcom/viber/jni/GroupAddedMember;

.field final synthetic val$backgroundID:Ljava/lang/String;

.field final synthetic val$changedAttributesFlags:I

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$country:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$groupId:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$iconID:Ljava/lang/String;

.field final synthetic val$location:Lcom/viber/jni/LocationInfo;

.field final synthetic val$messageID:I

.field final synthetic val$msgToken:J

.field final synthetic val$msgType:I

.field final synthetic val$numWatchers:I

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$revision:I

.field final synthetic val$tagLine:Ljava/lang/String;

.field final synthetic val$tags:[Ljava/lang/String;

.field final synthetic val$timeChanged:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)V
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
    .parameter

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$78;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$groupId:J

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$revision:I

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$clientName:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$phoneNumber:Ljava/lang/String;

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$msgType:I

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$flags:I

    iput-wide p9, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$timeChanged:J

    iput-wide p11, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$msgToken:J

    iput p13, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$messageID:I

    iput-object p14, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$groupName:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$addedMembers:[Lcom/viber/jni/GroupAddedMember;

    move/from16 v0, p16

    iput v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$changedAttributesFlags:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$iconID:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$backgroundID:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$tagLine:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$tags:[Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$country:Ljava/lang/String;

    move/from16 v0, p23

    iput v0, p0, Lcom/viber/jni/PhoneControllerListener$78;->val$numWatchers:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 24
    .parameter

    .prologue
    .line 1678
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$groupId:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$revision:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$clientName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$msgType:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$flags:I

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$timeChanged:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$msgToken:J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$messageID:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$groupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$addedMembers:[Lcom/viber/jni/GroupAddedMember;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$changedAttributesFlags:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$iconID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$backgroundID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$tagLine:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$tags:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$location:Lcom/viber/jni/LocationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$country:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/jni/PhoneControllerListener$78;->val$numWatchers:I

    move/from16 v23, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v23}, Lcom/viber/jni/PhoneControllerDelegate;->onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z

    .line 1681
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1674
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$78;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

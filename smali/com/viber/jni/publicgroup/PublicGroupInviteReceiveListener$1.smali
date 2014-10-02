.class Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;
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
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$groupUri:Ljava/lang/String;

.field final synthetic val$imageId:Ljava/lang/String;

.field final synthetic val$messageSeq:I

.field final synthetic val$messageToken:J

.field final synthetic val$numWatchers:I

.field final synthetic val$revision:I

.field final synthetic val$timeSent:J


# direct methods
.method constructor <init>(Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
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
    .line 22
    iput-object p1, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->this$0:Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

    iput-wide p2, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$messageToken:J

    iput-object p4, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$fromNumber:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$timeSent:J

    iput p7, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$messageSeq:I

    iput-object p8, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$groupUri:Ljava/lang/String;

    iput-wide p9, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$groupId:J

    iput-object p11, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$imageId:Ljava/lang/String;

    iput-object p12, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$groupName:Ljava/lang/String;

    iput p13, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$numWatchers:I

    iput p14, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$revision:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;)V
    .locals 14
    .parameter

    .prologue
    .line 26
    iget-wide v1, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$messageToken:J

    iget-object v3, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$fromNumber:Ljava/lang/String;

    iget-wide v4, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$timeSent:J

    iget v6, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$messageSeq:I

    iget-object v7, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$groupUri:Ljava/lang/String;

    iget-wide v8, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$groupId:J

    iget-object v10, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$imageId:Ljava/lang/String;

    iget-object v11, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$groupName:Ljava/lang/String;

    iget v12, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$numWatchers:I

    iget v13, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->val$revision:I

    move-object v0, p1

    invoke-interface/range {v0 .. v13}, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;->onPublicGroupInvite(JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)Z

    .line 27
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;

    invoke-virtual {p0, p1}, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;->execute(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;)V

    return-void
.end method

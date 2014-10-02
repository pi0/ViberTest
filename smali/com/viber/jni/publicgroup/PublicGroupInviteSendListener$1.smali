.class Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;
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
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

.field final synthetic val$failures:Ljava/util/Map;

.field final synthetic val$seq:I

.field final synthetic val$status:I

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;IJILjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->this$0:Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    iput p2, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$seq:I

    iput-wide p3, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$token:J

    iput p5, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$status:I

    iput-object p6, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$failures:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;)V
    .locals 6
    .parameter

    .prologue
    .line 25
    iget v1, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$seq:I

    iget-wide v2, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$token:J

    iget v4, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$status:I

    iget-object v5, p0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->val$failures:Ljava/util/Map;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;->onSendPublicGroupInviteReply(IJILjava/util/Map;)V

    .line 26
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;

    invoke-virtual {p0, p1}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;->execute(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;)V

    return-void
.end method

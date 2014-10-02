.class public Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;",
        ">;",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendPublicGroupInviteReply(IJILjava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener$1;-><init>(Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;IJILjava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    return-void
.end method

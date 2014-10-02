.class public Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;",
        ">;",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublicGroupInvite(JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)Z
    .locals 15
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
    new-instance v0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener$1;-><init>(Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 29
    const/4 v0, 0x0

    return v0
.end method

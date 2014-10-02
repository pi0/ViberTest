.class public Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;",
        ">;",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublicGroupInfo(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V
    .locals 22
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
    new-instance v1, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    invoke-direct/range {v1 .. v21}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener$1;-><init>(Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 40
    return-void
.end method

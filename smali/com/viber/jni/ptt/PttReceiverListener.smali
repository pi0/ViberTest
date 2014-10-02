.class public Lcom/viber/jni/ptt/PttReceiverListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;",
        ">;",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 13
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
    .line 21
    new-instance v0, Lcom/viber/jni/ptt/PttReceiverListener$1;

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/viber/jni/ptt/PttReceiverListener$1;-><init>(Lcom/viber/jni/ptt/PttReceiverListener;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttReceiverListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 18
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
    .line 34
    new-instance v1, Lcom/viber/jni/ptt/PttReceiverListener$2;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v1 .. v17}, Lcom/viber/jni/ptt/PttReceiverListener$2;-><init>(Lcom/viber/jni/ptt/PttReceiverListener;JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/viber/jni/ptt/PttReceiverListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 41
    const/4 v1, 0x0

    return v1
.end method

.class public Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;
.super Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;
.source "SourceFile"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJIIJ)V
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

    .prologue
    .line 90
    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p12

    move-object/from16 v5, p3

    move/from16 v6, p10

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p4

    move-wide/from16 v17, p6

    move-wide/from16 v19, p8

    invoke-direct/range {v2 .. v20}, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 91
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
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

    .prologue
    .line 84
    const-string/jumbo v7, ""

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p10

    move-object/from16 v5, p3

    move/from16 v6, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p4

    invoke-direct/range {v2 .. v20}, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 85
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;->e:I

    .line 86
    return-void
.end method

.class public Lcom/viber/voip/messages/controller/a/ac;
.super Lcom/viber/voip/messages/controller/a/a;
.source "SourceFile"


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Landroid/os/Handler;

.field private final e:[Lcom/viber/voip/messages/controller/a/a;

.field private f:I


# direct methods
.method public varargs constructor <init>(Landroid/os/Handler;Landroid/os/Handler;[Lcom/viber/voip/messages/controller/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/a;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/controller/a/ac;->f:I

    .line 30
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    .line 31
    iput-object p3, p0, Lcom/viber/voip/messages/controller/a/ac;->e:[Lcom/viber/voip/messages/controller/a/a;

    .line 32
    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/ac;->d:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->e:[Lcom/viber/voip/messages/controller/a/a;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 4
    .parameter

    .prologue
    .line 510
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/ac;->e:[Lcom/viber/voip/messages/controller/a/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 511
    invoke-virtual {v3, p1}, Lcom/viber/voip/messages/controller/a/a;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/bi;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/bi;-><init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method public onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
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
    .line 113
    iget-object v13, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bm;

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/viber/voip/messages/controller/a/bm;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 19
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
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/bn;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v1 .. v17}, Lcom/viber/voip/messages/controller/a/bn;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    const/4 v1, 0x0

    return v1
.end method

.method public onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/av;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/a/av;-><init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method public onChangeGroup(JJIIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v10, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/a/bq;-><init>(Lcom/viber/voip/messages/controller/a/ac;JJIIII)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onChangeGroupSettingsReply(JZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ap;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/ap;-><init>(Lcom/viber/voip/messages/controller/a/ac;JZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public onCreateGroupReply(IIJLjava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/af;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/af;-><init>(Lcom/viber/voip/messages/controller/a/ac;IIJLjava/util/Map;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onEncryptedPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 622
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/bl;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/bl;-><init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 631
    return-void
.end method

.method public onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/viber/voip/messages/controller/a/ai;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/ai;-><init>(Lcom/viber/voip/messages/controller/a/ac;IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public onGetRecentMessagesEnded(I)V
    .locals 2
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/an;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/an;-><init>(Lcom/viber/voip/messages/controller/a/ac;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public onGroupAddMember(JLjava/lang/String;JI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v8, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/al;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/al;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JI)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJI[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v12, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/am;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/voip/messages/controller/a/am;-><init>(Lcom/viber/voip/messages/controller/a/ac;JIJI[Ljava/lang/String;Ljava/util/Map;II)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z
    .locals 17
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
    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/bp;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/viber/voip/messages/controller/a/bp;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    const/4 v1, 0x0

    return v1
.end method

.method public onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v9, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ah;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/controller/a/ah;-><init>(Lcom/viber/voip/messages/controller/a/ac;IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method public onGroupLeave(JJI)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/bd;-><init>(Lcom/viber/voip/messages/controller/a/ac;JJI)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method public onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ba;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/ba;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public onJoinPublicGroup(JII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/controller/a/aj;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/aj;-><init>(Lcom/viber/voip/messages/controller/a/ac;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public onLikePublicGroupMessage(JJIZIJI)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v12, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bj;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/voip/messages/controller/a/bj;-><init>(Lcom/viber/voip/messages/controller/a/ac;JJIZIJI)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    return-void
.end method

.method public onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/az;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/az;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    const/4 v1, 0x0

    return v1
.end method

.method public onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
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

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/bk;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    invoke-direct/range {v1 .. v20}, Lcom/viber/voip/messages/controller/a/bk;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    const/4 v1, 0x0

    return v1
.end method

.method public onMessageDelivered(JJII)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v8, p0, Lcom/viber/voip/messages/controller/a/ac;->d:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ar;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/ar;-><init>(Lcom/viber/voip/messages/controller/a/ac;JJII)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public onMuteGroupReply(JZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/aw;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/aw;-><init>(Lcom/viber/voip/messages/controller/a/ac;JZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 26
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
    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v25, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/bo;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move/from16 v24, p22

    invoke-direct/range {v1 .. v24}, Lcom/viber/voip/messages/controller/a/bo;-><init>(Lcom/viber/voip/messages/controller/a/ac;JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    const/4 v1, 0x0

    return v1
.end method

.method public onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/ak;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/a/ak;-><init>(Lcom/viber/voip/messages/controller/a/ac;[Lcom/viber/jni/PGLatestParams;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iget-object v8, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/be;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/a/be;-><init>(Lcom/viber/voip/messages/controller/a/ac;[Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method

.method public onSecondaryRegistered(JIII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bh;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/bh;-><init>(Lcom/viber/voip/messages/controller/a/ac;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public onSendMessageReply(IJII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->d:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ae;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/ae;-><init>(Lcom/viber/voip/messages/controller/a/ac;IJII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public onServiceStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 440
    iget v0, p0, Lcom/viber/voip/messages/controller/a/ac;->f:I

    if-ne v0, p1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 441
    :cond_0
    iput p1, p0, Lcom/viber/voip/messages/controller/a/ac;->f:I

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/ay;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/ay;-><init>(Lcom/viber/voip/messages/controller/a/ac;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSyncConversation(Ljava/lang/String;JI)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bb;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/bb;-><init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;JI)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncConversationReply(Ljava/lang/String;JI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/bc;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/bc;-><init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;JI)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method public onSyncGroup(JJI)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/au;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/au;-><init>(Lcom/viber/voip/messages/controller/a/ac;JJI)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncGroupReply(JJI)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/at;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/a/at;-><init>(Lcom/viber/voip/messages/controller/a/ac;JJI)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method public onSyncMessages([J[J)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/aq;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/controller/a/aq;-><init>(Lcom/viber/voip/messages/controller/a/ac;[J[J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncMessagesReply(I[JI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/a/as;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/a/as;-><init>(Lcom/viber/voip/messages/controller/a/ac;I[JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v12, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ad;

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/voip/messages/controller/a/ad;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
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

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/ao;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/ao;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    const/4 v1, 0x0

    return v1
.end method

.method public onUpdateUserName(I)V
    .locals 4
    .parameter

    .prologue
    .line 517
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/ac;->e:[Lcom/viber/voip/messages/controller/a/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 518
    invoke-virtual {v3, p1}, Lcom/viber/voip/messages/controller/a/a;->onUpdateUserName(I)V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method public onUpdateUserPhoto(I)V
    .locals 4
    .parameter

    .prologue
    .line 524
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/ac;->e:[Lcom/viber/voip/messages/controller/a/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 525
    invoke-virtual {v3, p1}, Lcom/viber/voip/messages/controller/a/a;->onUpdateUserPhoto(I)V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method public onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/controller/a/ax;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/a/ax;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void
.end method

.method public onValidatePublicGroupUri(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/a/ag;-><init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/bf;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/bf;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    const/4 v1, 0x0

    return v1
.end method

.method public onVideoReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
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

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/ac;->c:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/bg;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    invoke-direct/range {v1 .. v20}, Lcom/viber/voip/messages/controller/a/bg;-><init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    const/4 v1, 0x0

    return v1
.end method

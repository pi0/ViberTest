.class public Lcom/viber/voip/messages/controller/a/aa;
.super Lcom/viber/voip/messages/controller/a/ac;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/viber/voip/messages/controller/a/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/a/aa;->c:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;[Lcom/viber/voip/messages/controller/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p4}, Lcom/viber/voip/messages/controller/a/ac;-><init>(Landroid/os/Handler;Landroid/os/Handler;[Lcom/viber/voip/messages/controller/a/a;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->e:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->f:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/viber/voip/messages/controller/a/ab;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/a/ab;-><init>(Lcom/viber/voip/messages/controller/a/aa;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->h:Ljava/lang/Runnable;

    .line 58
    iput-object p3, p0, Lcom/viber/voip/messages/controller/a/aa;->d:Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/Long;)Lcom/viber/voip/messages/e;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/e;

    return-object v0
.end method

.method private a(Ljava/lang/Long;Lcom/viber/voip/messages/e;)Lcom/viber/voip/messages/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p2
.end method

.method private a(Ljava/lang/String;)Lcom/viber/voip/messages/e;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/messages/e;)Lcom/viber/voip/messages/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/aa;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p2
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;I)Z
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
    .parameter

    .prologue
    .line 88
    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v20, p14

    invoke-direct/range {v0 .. v20}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z
    .locals 35
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
    .line 100
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p20

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/messages/controller/a/aa;->a(ZI)I

    move-result v14

    .line 102
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/viber/voip/messages/controller/b/a;

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p7

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p9

    move-object/from16 v13, p14

    invoke-direct/range {v2 .. v14}, Lcom/viber/voip/messages/controller/b/a;-><init>(JLjava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    move-object v4, v2

    .line 105
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/Long;)Lcom/viber/voip/messages/e;

    move-result-object v2

    .line 106
    :goto_2
    if-nez v2, :cond_5

    .line 107
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4}, Lcom/viber/voip/messages/d;->a()Lcom/viber/voip/messages/e;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/Long;Lcom/viber/voip/messages/e;)Lcom/viber/voip/messages/e;

    move-result-object v2

    :goto_3
    move-object v3, v2

    .line 111
    :goto_4
    if-eqz p6, :cond_4

    move-wide/from16 v15, p1

    move-wide/from16 v17, p7

    move-object/from16 v19, p4

    move-object/from16 v20, p15

    move-wide/from16 v21, p10

    move/from16 v23, p12

    move/from16 v24, p9

    move-object/from16 v25, p14

    move/from16 v26, p16

    move-object/from16 v27, p17

    move-object/from16 v28, p18

    move-object/from16 v29, p5

    move-object/from16 v30, p3

    move-object/from16 v31, p13

    move/from16 v32, p19

    move/from16 v33, p20

    move/from16 v34, v14

    invoke-static/range {v15 .. v34}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 115
    :goto_5
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/e;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 116
    new-instance v2, Lcom/viber/voip/messages/f;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/messages/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/e;->a(Lcom/viber/voip/messages/f;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/viber/voip/messages/controller/a/aa;->a()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/a/aa;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/viber/voip/messages/controller/a/aa;->a()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/a/aa;->h:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 100
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 102
    :cond_1
    :try_start_1
    new-instance v2, Lcom/viber/voip/messages/controller/b/a;

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p10

    move/from16 v9, p12

    move/from16 v10, p9

    move-object/from16 v11, p14

    invoke-direct/range {v2 .. v11}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    move-object v4, v2

    goto/16 :goto_1

    .line 105
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;)Lcom/viber/voip/messages/e;

    move-result-object v2

    goto/16 :goto_2

    .line 107
    :cond_3
    invoke-interface {v4}, Lcom/viber/voip/messages/d;->a()Lcom/viber/voip/messages/e;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;Lcom/viber/voip/messages/e;)Lcom/viber/voip/messages/e;

    move-result-object v2

    goto/16 :goto_3

    .line 111
    :cond_4
    const-string/jumbo v2, "text"

    move-object/from16 v0, p13

    move/from16 v1, p20

    invoke-interface {v4, v2, v0, v1}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_5

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    move-object v3, v2

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;)Z
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v0 .. v20}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;I)Z
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move/from16 v19, p15

    invoke-direct/range {v0 .. v20}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
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

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_0

    .line 201
    const-string/jumbo v10, ""

    const/4 v13, 0x6

    invoke-static/range {p10 .. p10}, Lcom/viber/voip/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p11

    move-wide/from16 v4, p1

    move/from16 v6, p8

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p4

    move-object/from16 v14, p10

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;I)Z

    .line 205
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 203
    :cond_0
    invoke-super/range {p0 .. p11}, Lcom/viber/voip/messages/controller/a/ac;->onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
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

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_0

    .line 213
    const/4 v7, 0x1

    const-string/jumbo v14, ""

    const/16 v17, 0x6

    invoke-static/range {p13 .. p13}, Lcom/viber/voip/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p14

    move-wide/from16 v8, p4

    move/from16 v10, p11

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p7

    move-object/from16 v18, p13

    move/from16 v21, p15

    invoke-direct/range {v1 .. v21}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    .line 217
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 215
    :cond_0
    invoke-super/range {p0 .. p15}, Lcom/viber/voip/messages/controller/a/ac;->onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onConnect()V
    .locals 4

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    .line 247
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/a/aa;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/a/aa;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method public declared-synchronized onConnectionStateChange(I)V
    .locals 0
    .parameter

    .prologue
    .line 254
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onGetRecentMessagesEnded(I)V
    .locals 2
    .parameter

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/a/aa;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 265
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/aa;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    .line 270
    invoke-super {p0, v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
    .parameter
    .parameter

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_0

    .line 153
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p13

    move-wide/from16 v4, p1

    move/from16 v6, p8

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p14

    move-object/from16 v11, p9

    move-object/from16 v12, p4

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;I)Z

    .line 157
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 155
    :cond_0
    invoke-super/range {p0 .. p14}, Lcom/viber/voip/messages/controller/a/ac;->onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
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
    .line 164
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_0

    .line 165
    const/4 v7, 0x1

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p16

    move-wide/from16 v8, p4

    move/from16 v10, p11

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p17

    move-object/from16 v15, p12

    move-object/from16 v16, p7

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v21, p18

    invoke-direct/range {v1 .. v21}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    .line 170
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 167
    :cond_0
    invoke-super/range {p0 .. p18}, Lcom/viber/voip/messages/controller/a/ac;->onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z
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

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_1

    .line 224
    const-string/jumbo v10, ""

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p11

    move-wide/from16 v4, p1

    move/from16 v6, p7

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v15, p9

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;I)Z

    .line 228
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/aa;->d:Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    if-eqz v1, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/aa;->d:Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;->onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z
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

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_1

    .line 235
    const/4 v7, 0x1

    const-string/jumbo v14, ""

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p14

    move-wide/from16 v8, p4

    move/from16 v10, p10

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move-object/from16 v15, p11

    move-object/from16 v19, p12

    move/from16 v21, p15

    invoke-direct/range {v1 .. v21}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    .line 239
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 236
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/aa;->d:Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    if-eqz v1, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/aa;->d:Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    invoke-interface/range {v1 .. v16}, Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;->onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z

    goto :goto_0
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p10

    move-wide v3, p1

    move/from16 v5, p8

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object v9, p4

    move-object/from16 v10, p9

    .line 130
    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;)Z

    .line 134
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/viber/voip/messages/controller/a/ac;->onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
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
    .parameter

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p13

    move-wide/from16 v6, p4

    move/from16 v8, p11

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p7

    move-object/from16 v13, p12

    move/from16 v14, p14

    .line 141
    invoke-direct/range {v0 .. v14}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;I)Z

    .line 145
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-super/range {p0 .. p14}, Lcom/viber/voip/messages/controller/a/ac;->onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
    .parameter
    .parameter

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_0

    .line 178
    const/4 v13, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p14

    move-wide/from16 v4, p1

    move/from16 v6, p8

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p13

    move-object/from16 v11, p9

    move-object/from16 v12, p4

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p10

    invoke-direct/range {v1 .. v16}, Lcom/viber/voip/messages/controller/a/aa;->a(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;I)Z

    .line 182
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 180
    :cond_0
    invoke-super/range {p0 .. p14}, Lcom/viber/voip/messages/controller/a/ac;->onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
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
    .line 189
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/a/aa;->g:Z

    if-eqz v1, :cond_0

    .line 190
    const/4 v7, 0x1

    const/16 v17, 0x3

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p17

    move-wide/from16 v8, p4

    move/from16 v10, p11

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p16

    move-object/from16 v15, p12

    move-object/from16 v16, p7

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v20, p13

    move/from16 v21, p18

    invoke-direct/range {v1 .. v21}, Lcom/viber/voip/messages/controller/a/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIJILjava/lang/String;Lcom/viber/jni/LocationInfo;[BILjava/lang/String;Ljava/lang/String;II)Z

    .line 194
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 192
    :cond_0
    invoke-super/range {p0 .. p18}, Lcom/viber/voip/messages/controller/a/ac;->onVideoReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

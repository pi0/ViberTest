.class public Lcom/viber/voip/registration/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/viber/voip/registration/cj;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/registration/cn;Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/df;
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
    .line 48
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/viber/voip/registration/df;

    move-object/from16 v18, v0

    .line 49
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/io/IOException;

    move-object/from16 v19, v0

    .line 51
    new-instance v20, Lcom/viber/voip/d/b;

    invoke-direct/range {v20 .. v20}, Lcom/viber/voip/d/b;-><init>()V

    .line 52
    new-instance v21, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    .line 53
    invoke-static/range {v4 .. v17}, Lcom/viber/voip/registration/cm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/registration/cn;)Ljava/lang/String;

    move-result-object v4

    .line 57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/registration/cj;->a:Ljava/lang/String;

    new-instance v6, Lcom/viber/voip/registration/ck;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/viber/voip/registration/ck;-><init>(Lcom/viber/voip/registration/cj;[Lcom/viber/voip/registration/df;[Ljava/io/IOException;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v4, v6}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;

    move-result-object v4

    .line 79
    new-instance v5, Lcom/viber/voip/registration/cl;

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-direct {v5, v0, v1, v4}, Lcom/viber/voip/registration/cl;-><init>(Lcom/viber/voip/registration/cj;Lcom/viber/voip/util/t;Lcom/viber/voip/util/fw;)V

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/viber/voip/registration/cj;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 92
    const/4 v4, 0x0

    aget-object v4, v19, v4

    if-eqz v4, :cond_0

    .line 93
    const/4 v4, 0x6

    const-string/jumbo v5, "-trace-"

    const/4 v6, 0x0

    aget-object v6, v19, v6

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v19, v7

    invoke-static {v4, v5, v6, v7}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    const/4 v4, 0x0

    .line 102
    :goto_0
    return-object v4

    .line 97
    :cond_0
    sget-boolean v4, Lcom/viber/voip/util/am;->c:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    aget-object v4, v19, v4

    if-eqz v4, :cond_1

    .line 98
    const/4 v4, 0x0

    aget-object v4, v19, v4

    throw v4

    .line 102
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v18, v4

    goto :goto_0
.end method

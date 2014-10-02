.class public Lcom/viber/voip/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JLcom/viber/voip/phone/call/k;JLcom/viber/voip/calls/w;)V
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->e()Z

    move-result v1

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 24
    :goto_0
    if-eqz v1, :cond_3

    const/4 v7, 0x1

    .line 25
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v8

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->a()I

    move-result v2

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long v9, v9, p3

    sub-long v9, v4, v9

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v4

    sget-object v5, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    if-ne v4, v5, :cond_5

    .line 32
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gtz v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_2
    move v4, v0

    .line 37
    :goto_3
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x2

    .line 42
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->o()I

    move-result v1

    .line 43
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_8

    .line 44
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    if-nez v1, :cond_7

    const/4 v5, 0x1

    :goto_5
    const/4 v13, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v11, p3

    move-object/from16 v14, p5

    invoke-interface/range {v0 .. v14}, Lcom/viber/voip/calls/u;->a(JLjava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V

    .line 64
    :goto_6
    return-void

    .line 22
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 32
    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    .line 34
    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    .line 39
    :cond_6
    const/4 v6, 0x3

    goto :goto_4

    .line 44
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 49
    :cond_8
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v11, Lcom/viber/voip/util/r;

    move-wide/from16 v12, p0

    move v14, v4

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move-wide/from16 v18, v9

    move-wide/from16 v20, p3

    move-object/from16 v22, p5

    invoke-direct/range {v11 .. v22}, Lcom/viber/voip/util/r;-><init>(JIIIIJJLcom/viber/voip/calls/w;)V

    invoke-static {v0, v3, v11}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    goto :goto_6

    .line 60
    :cond_9
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v6, 0x2

    :goto_7
    const/4 v13, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v11, p3

    move-object/from16 v14, p5

    invoke-interface/range {v0 .. v14}, Lcom/viber/voip/calls/u;->a(JLjava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V

    goto :goto_6

    :cond_a
    const/4 v6, 0x1

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;JJIIIILjava/lang/String;ILjava/lang/String;Lcom/viber/voip/calls/w;)V
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
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v14

    new-instance v1, Lcom/viber/voip/util/s;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p11

    move-object/from16 v13, p15

    invoke-direct/range {v1 .. v13}, Lcom/viber/voip/util/s;-><init>(JLjava/lang/String;IIIJJILcom/viber/voip/calls/w;)V

    move-object/from16 v0, p3

    invoke-static {v14, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 82
    return-void
.end method

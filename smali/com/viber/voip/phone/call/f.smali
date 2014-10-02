.class Lcom/viber/voip/phone/call/f;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/call/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/a;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/viber/voip/phone/call/f;->a:Lcom/viber/voip/phone/call/a;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallMissed(JLjava/lang/String;IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/viber/voip/phone/call/f;->a:Lcom/viber/voip/phone/call/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CallBackListener onCallMissed phoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", numMissed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", numMissedOther: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", clientName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/a;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/viber/voip/phone/call/f;->a:Lcom/viber/voip/phone/call/a;

    invoke-static {v0}, Lcom/viber/voip/phone/call/a;->b(Lcom/viber/voip/phone/call/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/viber/voip/phone/call/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/phone/call/g;-><init>(Lcom/viber/voip/phone/call/f;J)V

    invoke-static {p3, v0, v1}, Lcom/viber/voip/util/w;->b(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/ag;)V

    .line 419
    return-void
.end method

.method public onGetMissedCalls([Lcom/viber/jni/CMissedCall;)Z
    .locals 24
    .parameter

    .prologue
    .line 429
    move-object/from16 v0, p1

    array-length v5, v0

    new-array v0, v5, [J

    move-object/from16 v22, v0

    .line 430
    const/4 v5, 0x0

    move/from16 v21, v5

    :goto_0
    move-object/from16 v0, p1

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_0

    .line 431
    aget-object v23, p1, v21

    .line 433
    invoke-virtual/range {v23 .. v23}, Lcom/viber/jni/CMissedCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    .line 434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/phone/call/f;->a:Lcom/viber/voip/phone/call/a;

    invoke-static {v5}, Lcom/viber/voip/phone/call/a;->b(Lcom/viber/voip/phone/call/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0370

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/phone/call/f;->a:Lcom/viber/voip/phone/call/a;

    invoke-static {v5}, Lcom/viber/voip/phone/call/a;->b(Lcom/viber/voip/phone/call/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/viber/jni/CMissedCall;->getToken()J

    move-result-wide v6

    invoke-virtual/range {v23 .. v23}, Lcom/viber/jni/CMissedCall;->getCalledAt()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/viber/jni/CMissedCall;->getFlags()I

    move-result v16

    const/16 v18, 0x0

    const-string/jumbo v19, "Viber"

    new-instance v20, Lcom/viber/voip/phone/call/h;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v21

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/phone/call/h;-><init>(Lcom/viber/voip/phone/call/f;[JILcom/viber/jni/CMissedCall;)V

    invoke-static/range {v5 .. v20}, Lcom/viber/voip/util/q;->a(Landroid/content/Context;JLjava/lang/String;JJIIIILjava/lang/String;ILjava/lang/String;Lcom/viber/voip/calls/w;)V

    .line 430
    add-int/lit8 v5, v21, 0x1

    move/from16 v21, v5

    goto :goto_0

    .line 451
    :cond_0
    const/4 v5, 0x1

    return v5
.end method

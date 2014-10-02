.class final Lcom/viber/voip/b/e;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:J

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/viber/voip/b/a;

.field private g:J

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/viber/voip/b/e;->f:Lcom/viber/voip/b/a;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/b/e;->j:Z

    .line 431
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 460
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/b/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/viber/voip/b/e;->j:Z

    return v0
.end method


# virtual methods
.method public a(J)V
    .locals 16
    .parameter

    .prologue
    .line 464
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/b/e;->f:Lcom/viber/voip/b/a;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/voip/b/e;->d:J

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/viber/voip/b/a;->a(Lcom/viber/voip/b/a;JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const/4 v2, 0x3

    invoke-static {}, Lcom/viber/voip/b/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCallReceivedWithoutStateCheck: callType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viber/voip/b/e;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    const-wide/16 v14, 0x0

    .line 469
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/voip/b/e;->a:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/b/e;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viber/voip/b/e;->c:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/viber/voip/b/e;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/viber/voip/b/e;->g:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/voip/b/e;->h:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/viber/voip/b/e;->i:I

    invoke-interface/range {v2 .. v15}, Lcom/viber/jni/dialer/DialerController;->handleCallReceived(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JIIJ)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v2, 0x5

    invoke-static {}, Lcom/viber/voip/b/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Out of time delay message!"

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iput-wide p1, p0, Lcom/viber/voip/b/e;->a:J

    .line 443
    iput-object p3, p0, Lcom/viber/voip/b/e;->b:Ljava/lang/String;

    .line 444
    iput-object p4, p0, Lcom/viber/voip/b/e;->c:Ljava/lang/String;

    .line 445
    iput-wide p5, p0, Lcom/viber/voip/b/e;->d:J

    .line 446
    iput-object p7, p0, Lcom/viber/voip/b/e;->e:Ljava/lang/String;

    .line 447
    iput-wide p8, p0, Lcom/viber/voip/b/e;->g:J

    .line 448
    iput p10, p0, Lcom/viber/voip/b/e;->h:I

    .line 449
    iput p11, p0, Lcom/viber/voip/b/e;->i:I

    .line 450
    return-void
.end method

.method public b(J)V
    .locals 3
    .parameter

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/viber/voip/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/b/e;->a(J)V

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x5

    invoke-static {}, Lcom/viber/voip/b/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "didn\'t pass state check - GSM call seems active"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    goto :goto_0
.end method

.method public onLBServerTime(J)V
    .locals 2
    .parameter

    .prologue
    .line 453
    invoke-super {p0, p1, p2}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onLBServerTime(J)V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/b/e;->b(J)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/b/e;->j:Z

    .line 456
    return-void
.end method

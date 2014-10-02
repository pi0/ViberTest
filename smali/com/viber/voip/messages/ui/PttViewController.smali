.class public Lcom/viber/voip/messages/ui/PttViewController;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/RadialGradientView;

.field private b:Lcom/viber/voip/messages/ui/TimeFillView;

.field private c:Landroid/view/View;

.field private d:J

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View$OnTouchListener;

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/Handler;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Lcom/viber/voip/messages/ui/eb;

.field private m:Lcom/viber/voip/messages/ui/ec;

.field private n:Lcom/viber/jni/ptt/PttController;

.field private o:Ljava/lang/String;

.field private p:Lcom/viber/voip/messages/ui/dz;

.field private q:Lcom/viber/jni/connection/ConnectionDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/ui/PttViewController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->a()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->d:J

    .line 68
    new-instance v0, Lcom/viber/voip/messages/ui/dw;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/dw;-><init>(Lcom/viber/voip/messages/ui/PttViewController;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->q:Lcom/viber/jni/connection/ConnectionDelegate;

    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/dx;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/dx;-><init>(Lcom/viber/voip/messages/ui/PttViewController;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->a()V

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/jni/ptt/PttController;)Lcom/viber/jni/ptt/PttController;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/PttViewController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/ui/PttViewController;->e:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/PttViewController;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/ui/PttViewController;->f:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/PttViewController;)Lcom/viber/jni/ptt/PttController;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/PttViewController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->f:Ljava/util/TimerTask;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->onStopPttIndicator()V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->b:Lcom/viber/voip/messages/ui/TimeFillView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/TimeFillView;->b()V

    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/PttViewController;->m:Lcom/viber/voip/messages/ui/ec;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->d:J

    sub-long/2addr v0, v2

    .line 162
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/ad;->a(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 164
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->p:Lcom/viber/voip/messages/ui/dz;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->p:Lcom/viber/voip/messages/ui/dz;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/viber/voip/messages/ui/dz;->a(Ljava/lang/String;J)V

    .line 172
    :cond_1
    iput-wide v6, p0, Lcom/viber/voip/messages/ui/PttViewController;->d:J

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    .line 175
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->e:Ljava/util/Timer;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030116

    invoke-static {v0, v1, p0}, Lcom/viber/voip/messages/ui/PttViewController;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    const v0, 0x7f070393

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/RadialGradientView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->a:Lcom/viber/voip/messages/ui/RadialGradientView;

    .line 120
    const v0, 0x7f070394

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/TimeFillView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->b:Lcom/viber/voip/messages/ui/TimeFillView;

    .line 121
    const v0, 0x7f070395

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->g:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    const v0, 0x7f070398

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->c:Landroid/view/View;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->i:Landroid/os/Handler;

    .line 126
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->j:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/viber/voip/messages/ui/eb;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/ui/eb;-><init>(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/voip/messages/ui/dw;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->l:Lcom/viber/voip/messages/ui/eb;

    .line 128
    new-instance v0, Lcom/viber/voip/messages/ui/ec;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/ui/ec;-><init>(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/voip/messages/ui/dw;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->m:Lcom/viber/voip/messages/ui/ec;

    .line 130
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/PttViewController;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/PttViewController;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttRecorderListener()Lcom/viber/jni/ptt/PttRecorderListener;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/viber/jni/ptt/PttRecorderListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 321
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/PttViewController;->q:Lcom/viber/jni/connection/ConnectionDelegate;

    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v2}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 322
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/PttViewController;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/PttViewController;->setEnabled(Z)V

    .line 323
    const/4 v0, 0x4

    const-string/jumbo v1, "PttViewController"

    const-string/jumbo v2, "Ptt on"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 328
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttRecorderListener()Lcom/viber/jni/ptt/PttRecorderListener;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/viber/jni/ptt/PttRecorderListener;->removeDelegate(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/PttViewController;->q:Lcom/viber/jni/connection/ConnectionDelegate;

    invoke-virtual {v0, v1}, Lcom/viber/jni/connection/ConnectionListener;->removeDelegate(Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 335
    :cond_0
    const/4 v0, 0x4

    const-string/jumbo v1, "PttViewController"

    const-string/jumbo v2, "Ptt off"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 308
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->b()V

    .line 309
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 314
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->c()V

    .line 315
    return-void
.end method

.method public onPttRecordStopped(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/PttViewController;->d()V

    .line 263
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;->RECORD_STOP_NO_CONNECTION:I

    if-ne p2, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onStartPttIndicator()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->a:Lcom/viber/voip/messages/ui/RadialGradientView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/RadialGradientView;->a()V

    .line 272
    return-void
.end method

.method public onStartRecordPttReply(ILjava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 233
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_OK:I

    if-ne v0, p3, :cond_3

    .line 234
    iput-object p2, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->b:Lcom/viber/voip/messages/ui/TimeFillView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/TimeFillView;->a()V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->d:J

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleStopRecordPtt(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/PttViewController;->d()V

    .line 245
    :cond_0
    :goto_0
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_FAILED:I

    if-ne v0, p3, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c03a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 249
    :cond_1
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_NO_SPACE:I

    if-ne v0, p3, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_LOW_STORAGE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 253
    :cond_2
    return-void

    .line 242
    :cond_3
    iput-object v3, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public onStopPttIndicator()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->a:Lcom/viber/voip/messages/ui/RadialGradientView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/RadialGradientView;->b()V

    .line 278
    return-void
.end method

.method public onStopRecordPttReply(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/PttViewController;->d()V

    .line 258
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 185
    const/4 v2, 0x3

    const-string/jumbo v3, "PttViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouchEvent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->h:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->h:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 228
    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 193
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/PttViewController;->l:Lcom/viber/voip/messages/ui/eb;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->a:Lcom/viber/voip/messages/ui/RadialGradientView;

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/ui/RadialGradientView;->setActive(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/viber/voip/util/ao;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 201
    :pswitch_2
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->b:Lcom/viber/voip/messages/ui/TimeFillView;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/TimeFillView;->b()V

    .line 203
    :pswitch_3
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    if-eqz v2, :cond_3

    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->n:Lcom/viber/jni/ptt/PttController;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->o:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/viber/jni/ptt/PttController;->handleStopRecordPtt(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/PttViewController;->d()V

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/viber/voip/util/ao;->b(Landroid/app/Activity;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->a:Lcom/viber/voip/messages/ui/RadialGradientView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/RadialGradientView;->setActive(Z)V

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->j:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/messages/ui/dy;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/dy;-><init>(Lcom/viber/voip/messages/ui/PttViewController;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 207
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/PttViewController;->l:Lcom/viber/voip/messages/ui/eb;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setCallbacks(Lcom/viber/voip/messages/ui/dz;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/viber/voip/messages/ui/PttViewController;->p:Lcom/viber/voip/messages/ui/dz;

    .line 345
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_0

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PttViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c035e

    const v2, 0x7f0c035f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->b:Lcom/viber/voip/messages/ui/TimeFillView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/TimeFillView;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->a:Lcom/viber/voip/messages/ui/RadialGradientView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/RadialGradientView;->setEnabled(Z)V

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PttViewController;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iput-object p1, p0, Lcom/viber/voip/messages/ui/PttViewController;->h:Landroid/view/View$OnTouchListener;

    .line 181
    return-void
.end method

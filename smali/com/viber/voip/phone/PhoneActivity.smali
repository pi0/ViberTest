.class public Lcom/viber/voip/phone/PhoneActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/g/b;
.implements Lcom/viber/voip/phone/call/i;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static q:Z

.field private static r:Z


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/viber/voip/phone/ab;

.field private d:Lcom/viber/voip/phone/ac;

.field private e:Lcom/viber/voip/ViberApplication;

.field private f:Landroid/content/DialogInterface;

.field private g:Lcom/viber/voip/phone/b/b/c;

.field private h:Lcom/viber/voip/a/g;

.field private i:I

.field private j:Lcom/viber/voip/viberout/i;

.field private k:Landroid/os/Handler;

.field private l:Ljava/util/Timer;

.field private m:Ljava/util/TimerTask;

.field private n:Lcom/viber/jni/dialer/DialerController;

.field private o:Lcom/viber/voip/phone/call/a;

.field private p:Lcom/viber/voip/phone/call/k;

.field private s:Lcom/viber/voip/phone/t;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 87
    const/16 v0, 0x708

    iput v0, p0, Lcom/viber/voip/phone/PhoneActivity;->a:I

    .line 88
    const/16 v0, 0x1388

    iput v0, p0, Lcom/viber/voip/phone/PhoneActivity;->b:I

    .line 92
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/PhoneActivity;->i:I

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->k:Landroid/os/Handler;

    .line 105
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->l:Ljava/util/Timer;

    .line 156
    new-instance v0, Lcom/viber/voip/phone/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/phone/t;-><init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/n;)V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->s:Lcom/viber/voip/phone/t;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/viber/voip/phone/PhoneActivity;->i:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/a/g;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/ab;)Lcom/viber/voip/phone/ab;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/phone/PhoneActivity;->t:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/phone/PhoneActivity;->m:Ljava/util/TimerTask;

    return-object p1
.end method

.method private a(Lcom/viber/voip/billing/ae;)V
    .locals 4
    .parameter

    .prologue
    .line 285
    const-string/jumbo v0, "rescheduleBuyCredits"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    :cond_0
    new-instance v0, Lcom/viber/voip/phone/n;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/phone/n;-><init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/billing/ae;)V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->t:Ljava/lang/Runnable;

    .line 305
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 560
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 561
    new-instance v1, Lcom/viber/voip/messages/controller/b/b;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, p3, v4}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p2, v4}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 563
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    if-nez v2, :cond_1

    .line 564
    :cond_0
    invoke-virtual {v1, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 566
    :cond_1
    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 571
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/billing/ae;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/messages/conversation/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/messages/conversation/h;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/PhoneActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 545
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Lcom/viber/voip/phone/o;

    invoke-direct {v9, p0, p1, p2}, Lcom/viber/voip/phone/o;-><init>(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/x;->a(ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->m:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ac;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->d:Lcom/viber/voip/phone/ac;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->f:Landroid/content/DialogInterface;

    invoke-static {v0}, Lcom/viber/voip/util/at;->b(Landroid/content/DialogInterface;)V

    .line 602
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->n:Lcom/viber/jni/dialer/DialerController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/viber/jni/dialer/DialerController;->handleDialogReply(ILjava/lang/String;)V

    .line 603
    return-void
.end method

.method public static c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 806
    sput-boolean p0, Lcom/viber/voip/phone/PhoneActivity;->q:Z

    .line 807
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    return-object v0
.end method

.method public static d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 814
    sput-boolean p0, Lcom/viber/voip/phone/PhoneActivity;->r:Z

    .line 815
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/phone/PhoneActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/viber/voip/phone/PhoneActivity;->i:I

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->l:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/call/a;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->o:Lcom/viber/voip/phone/call/a;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 802
    sget-boolean v0, Lcom/viber/voip/phone/PhoneActivity;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/jni/dialer/DialerController;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->n:Lcom/viber/jni/dialer/DialerController;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 810
    sget-boolean v0, Lcom/viber/voip/phone/PhoneActivity;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/viber/voip/phone/PhoneActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    .line 431
    :goto_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 430
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 431
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private k()Lcom/viber/voip/a/g;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->h:Lcom/viber/voip/a/g;

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    .line 583
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->h:Lcom/viber/voip/a/g;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->h:Lcom/viber/voip/a/g;

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 620
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 4
    .parameter

    .prologue
    .line 493
    const-string/jumbo v0, "tel"

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 495
    const-string/jumbo v0, "viber_out"

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/g;->h(Z)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 497
    invoke-static {p0, v1}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 498
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 528
    if-eqz p1, :cond_0

    .line 531
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v10

    move-wide v2, v0

    move-wide v6, v0

    move-wide v8, v0

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 533
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 535
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/viber/voip/phone/PhoneActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/p;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/phone/p;-><init>(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    .line 598
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->k()Lcom/viber/voip/a/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->t()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/a/g;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->n:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v1}, Lcom/viber/jni/dialer/DialerController;->handleDecline()V

    .line 524
    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/call/k;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 445
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 446
    if-nez v1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/ab;->a(Z)V

    .line 451
    :cond_1
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->g:Lcom/viber/voip/phone/b/b/c;

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->g:Lcom/viber/voip/phone/b/b/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/b/b/c;->a(Z)V

    .line 456
    :cond_2
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/PhoneActivity;->b(Z)V

    goto :goto_0

    .line 451
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 361
    if-eqz v0, :cond_0

    .line 362
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 363
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 364
    const-class v4, Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 369
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 613
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/phone/PhoneActivity;->a(ILjava/lang/String;)V

    .line 614
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0xb

    .line 788
    if-eqz p1, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 790
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 439
    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->a()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "secure_trust_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/b/b/c;

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->g:Lcom/viber/voip/phone/b/b/c;

    .line 462
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->g:Lcom/viber/voip/phone/b/b/c;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/viber/voip/phone/b/b/c;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/b/c;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->g:Lcom/viber/voip/phone/b/b/c;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->g:Lcom/viber/voip/phone/b/b/c;

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "secure_trust_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/b/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 481
    const-string/jumbo v0, "handleRedial action"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    .line 483
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/a/g;->h(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.REDIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x19

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 406
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopRingtone()Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isTouchInputEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 501
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    .line 502
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->n:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleAnswer()V

    .line 504
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->k()Lcom/viber/voip/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->t()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/g;->a(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 506
    :cond_0
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    .line 509
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    .line 510
    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->k()Lcom/viber/voip/a/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->t()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/g;->b(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->n:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleDecline()V

    .line 515
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 607
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->finish()V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 609
    const v0, 0x7f040001

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->overridePendingTransition(II)V

    .line 610
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->d:Lcom/viber/voip/phone/ac;

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->b()Lcom/viber/voip/phone/ab;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/viber/voip/phone/b/k;

    if-eqz v1, :cond_1

    .line 343
    check-cast v0, Lcom/viber/voip/phone/b/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 349
    :cond_2
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onBackPressed()V

    .line 350
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    .line 820
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    sget-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 161
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    sput-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 163
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->n:Lcom/viber/jni/dialer/DialerController;

    .line 164
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->o:Lcom/viber/voip/phone/call/a;

    .line 165
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->o:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/i;)Z

    .line 173
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 175
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lcom/viber/voip/phone/PhoneActivity;->setRequestedOrientation(I)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 180
    const v0, 0x488000

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 183
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 184
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    const/high16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 193
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "samsung"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "GT-I9300"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 196
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/registration/cp;->d()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 198
    if-eqz v0, :cond_5

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    move v3, v1

    .line 200
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getViberInInfo()Lcom/viber/jni/ViberInInfo;

    move-result-object v3

    .line 203
    iput-boolean v2, v3, Lcom/viber/jni/ViberInInfo;->isViberInNativeCallScreen:Z

    .line 204
    iput-boolean v0, v3, Lcom/viber/jni/ViberInInfo;->isViberInTestGroup:Z

    .line 210
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra_screen_factory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_6

    .line 211
    new-instance v0, Lcom/viber/voip/phone/a/c;

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/phone/a/c;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->d:Lcom/viber/voip/phone/ac;

    .line 219
    :goto_2
    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->setTheme(I)V

    .line 220
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->d:Lcom/viber/voip/phone/ac;

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->setContentView(I)V

    .line 222
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 226
    :cond_3
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/voip/viberout/e;->b(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->j:Lcom/viber/voip/viberout/i;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Create: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 229
    return-void

    :cond_4
    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 198
    goto :goto_1

    .line 213
    :cond_6
    new-instance v0, Lcom/viber/voip/phone/b/ai;

    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/phone/b/ai;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->d:Lcom/viber/voip/phone/ac;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 334
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->o:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/call/a;->b(Lcom/viber/voip/phone/call/i;)Z

    .line 335
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->j:Lcom/viber/voip/viberout/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/i;)V

    .line 336
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 397
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 393
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->e()V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/viber/voip/phone/PhoneActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 385
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 380
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/PhoneActivity;->setIntent(Landroid/content/Intent;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->m:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->m:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 253
    :cond_0
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/viber/voip/viberout/e;->b(Landroid/app/Activity;Landroid/content/Intent;)Lcom/viber/voip/viberout/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->j:Lcom/viber/voip/viberout/i;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "New Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->m:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->m:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->f()Lcom/viber/voip/g/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/g/a;->a(Lcom/viber/voip/g/b;)V

    .line 315
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->s:Lcom/viber/voip/phone/t;

    invoke-virtual {v0}, Lcom/viber/voip/phone/t;->b()V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Pause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 317
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 318
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v0, "onResume Finish"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->s:Lcom/viber/voip/phone/t;

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->p:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/t;->a(Lcom/viber/voip/phone/call/k;)V

    .line 272
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->s:Lcom/viber/voip/phone/t;

    invoke-virtual {v0}, Lcom/viber/voip/phone/t;->a()V

    .line 274
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->s:Lcom/viber/voip/phone/t;

    invoke-virtual {v0}, Lcom/viber/voip/phone/t;->c()V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->e:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->f()Lcom/viber/voip/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/g/a;->a(Lcom/viber/voip/g/b;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 234
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStart()V

    .line 235
    sput-object v0, Lcom/viber/voip/app/ViberActivity;->sLastUsedActivity:Landroid/app/Activity;

    .line 237
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/i;->a(ZZ)V

    .line 238
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStop()V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/viber/voip/phone/PhoneActivity;->c:Lcom/viber/voip/phone/ab;

    invoke-virtual {v0}, Lcom/viber/voip/phone/ab;->b()V

    .line 328
    :cond_0
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/viber/voip/phone/i;->a(ZZ)V

    .line 329
    return-void
.end method

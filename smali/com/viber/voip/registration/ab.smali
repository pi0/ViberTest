.class public Lcom/viber/voip/registration/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/ab;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    iput-object p1, p0, Lcom/viber/voip/registration/ab;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/df;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    new-array v0, v8, [Lcom/viber/voip/registration/df;

    .line 38
    new-array v1, v8, [Ljava/io/IOException;

    .line 39
    new-instance v2, Lcom/viber/voip/d/b;

    invoke-direct {v2}, Lcom/viber/voip/d/b;-><init>()V

    .line 41
    new-instance v3, Lcom/viber/logger/QaLogger$QaActivationEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/viber/logger/QaLogger$QaActivationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 43
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    invoke-static {p1, p2, p3}, Lcom/viber/voip/registration/ae;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    iget-object v5, p0, Lcom/viber/voip/registration/ab;->a:Ljava/lang/String;

    new-instance v6, Lcom/viber/voip/registration/ac;

    invoke-direct {v6, p0, v0, v1, v3}, Lcom/viber/voip/registration/ac;-><init>(Lcom/viber/voip/registration/ab;[Lcom/viber/voip/registration/df;[Ljava/io/IOException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v5, v4, v6}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;

    move-result-object v2

    .line 70
    new-instance v4, Lcom/viber/voip/registration/ad;

    invoke-direct {v4, p0, p4, v2}, Lcom/viber/voip/registration/ad;-><init>(Lcom/viber/voip/registration/ab;Lcom/viber/voip/util/t;Lcom/viber/voip/util/fw;)V

    .line 77
    invoke-direct {p0, v3}, Lcom/viber/voip/registration/ab;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 83
    aget-object v2, v1, v7

    if-eqz v2, :cond_0

    .line 84
    const/4 v0, 0x6

    const-string/jumbo v2, "-trace-"

    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v0, v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-boolean v2, Lcom/viber/voip/util/am;->c:Z

    if-nez v2, :cond_1

    aget-object v2, v1, v7

    if-eqz v2, :cond_1

    .line 89
    aget-object v0, v1, v7

    throw v0

    .line 93
    :cond_1
    aget-object v0, v0, v7

    goto :goto_0
.end method

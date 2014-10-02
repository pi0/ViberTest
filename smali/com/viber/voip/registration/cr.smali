.class public Lcom/viber/voip/registration/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/viber/voip/registration/cr;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/registration/df;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 29
    new-array v1, v4, [Lcom/viber/voip/registration/df;

    .line 30
    new-array v0, v4, [Ljava/io/IOException;

    .line 31
    new-instance v2, Lcom/viber/voip/d/b;

    invoke-direct {v2}, Lcom/viber/voip/d/b;-><init>()V

    .line 33
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 35
    invoke-static {p1, p2}, Lcom/viber/voip/registration/ct;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    iget-object v5, p0, Lcom/viber/voip/registration/cr;->a:Ljava/lang/String;

    new-instance v6, Lcom/viber/voip/registration/cs;

    invoke-direct {v6, p0, v1, v0, v3}, Lcom/viber/voip/registration/cs;-><init>(Lcom/viber/voip/registration/cr;[Lcom/viber/voip/registration/df;[Ljava/io/IOException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v5, v4, v6}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;

    .line 59
    invoke-direct {p0, v3}, Lcom/viber/voip/registration/cr;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 60
    const/4 v2, 0x4

    const-string/jumbo v3, "-trace-"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ResendActivationCodeManager.invokeResendActivationCode(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    if-eqz v5, :cond_0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    aget-object v0, v1, v7

    return-object v0

    .line 60
    :cond_0
    const-string/jumbo v0, " no"

    goto :goto_0
.end method

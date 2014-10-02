.class public Lcom/viber/voip/registration/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/viber/voip/registration/bc;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/df;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 34
    new-array v0, v4, [Lcom/viber/voip/registration/df;

    .line 35
    new-array v1, v4, [Ljava/io/IOException;

    .line 36
    new-instance v2, Lcom/viber/voip/d/b;

    invoke-direct {v2}, Lcom/viber/voip/d/b;-><init>()V

    .line 38
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    invoke-static {p1, p2, p3}, Lcom/viber/voip/registration/bf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/viber/voip/registration/bc;->a:Ljava/lang/String;

    new-instance v6, Lcom/viber/voip/registration/bd;

    invoke-direct {v6, p0, v0, v1, v3}, Lcom/viber/voip/registration/bd;-><init>(Lcom/viber/voip/registration/bc;[Lcom/viber/voip/registration/df;[Ljava/io/IOException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v5, v4, v6}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;

    move-result-object v2

    .line 65
    new-instance v4, Lcom/viber/voip/registration/be;

    invoke-direct {v4, p0, p4, v2}, Lcom/viber/voip/registration/be;-><init>(Lcom/viber/voip/registration/bc;Lcom/viber/voip/util/t;Lcom/viber/voip/util/fw;)V

    .line 72
    invoke-direct {p0, v3}, Lcom/viber/voip/registration/bc;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 77
    aget-object v2, v1, v7

    if-eqz v2, :cond_0

    .line 78
    const/4 v0, 0x6

    const-string/jumbo v2, "-trace-"

    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v0, v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget-boolean v2, Lcom/viber/voip/util/am;->c:Z

    if-nez v2, :cond_1

    aget-object v2, v1, v7

    if-eqz v2, :cond_1

    .line 82
    aget-object v0, v1, v7

    throw v0

    .line 85
    :cond_1
    aget-object v0, v0, v7

    goto :goto_0
.end method

.class public Lcom/viber/voip/billing/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/viber/voip/billing/bn;",
            "Lcom/viber/voip/billing/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/br;->a:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method private a()J
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;
    .locals 5
    .parameter

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/billing/br;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bs;

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/viber/voip/billing/br;->a()J

    move-result-wide v1

    .line 27
    iget-wide v3, v0, Lcom/viber/voip/billing/bs;->b:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/viber/voip/billing/br;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 30
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/viber/voip/billing/bs;->a:Lcom/viber/voip/billing/bq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/billing/bq;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/viber/voip/billing/bs;

    invoke-direct {p0}, Lcom/viber/voip/billing/br;->a()J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/viber/voip/billing/bs;-><init>(Lcom/viber/voip/billing/br;Lcom/viber/voip/billing/bq;J)V

    .line 38
    iget-object v1, p0, Lcom/viber/voip/billing/br;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/viber/voip/billing/bq;->a()Lcom/viber/voip/billing/bn;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

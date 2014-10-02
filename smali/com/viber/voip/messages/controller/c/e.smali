.class public Lcom/viber/voip/messages/controller/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/cx;


# static fields
.field private static a:Lcom/viber/voip/messages/controller/c/e;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/da;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/de;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/dg;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/dc;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/cz;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->b:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->c:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->d:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->e:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->f:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->g:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->h:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public static a()Lcom/viber/voip/messages/controller/c/e;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/viber/voip/messages/controller/c/e;->a:Lcom/viber/voip/messages/controller/c/e;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcom/viber/voip/messages/controller/c/e;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/controller/c/e;->a:Lcom/viber/voip/messages/controller/c/e;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/viber/voip/messages/controller/c/e;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/e;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/controller/c/e;->a:Lcom/viber/voip/messages/controller/c/e;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/controller/c/e;->a:Lcom/viber/voip/messages/controller/c/e;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/c/e;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->g:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/controller/c/aj;)V
    .locals 4
    .parameter

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/e;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/cz;

    .line 517
    instance-of v2, v0, Lcom/viber/voip/messages/controller/cy;

    if-eqz v2, :cond_0

    .line 518
    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/c/aj;->a(Lcom/viber/voip/messages/controller/cz;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/controller/c/ac;

    invoke-direct {v3, p0, p1, v0}, Lcom/viber/voip/messages/controller/c/ac;-><init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/aj;Lcom/viber/voip/messages/controller/cz;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method

.method private a(Lcom/viber/voip/messages/controller/c/ak;)V
    .locals 4
    .parameter

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/e;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/da;

    .line 501
    instance-of v2, v0, Lcom/viber/voip/messages/controller/db;

    if-eqz v2, :cond_0

    .line 502
    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/c/ak;->a(Lcom/viber/voip/messages/controller/da;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/controller/c/aa;

    invoke-direct {v3, p0, p1, v0}, Lcom/viber/voip/messages/controller/c/aa;-><init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/ak;Lcom/viber/voip/messages/controller/da;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method

.method private a(Lcom/viber/voip/messages/controller/c/al;)V
    .locals 4
    .parameter

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/e;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/dc;

    .line 485
    instance-of v2, v0, Lcom/viber/voip/messages/controller/dd;

    if-eqz v2, :cond_0

    .line 486
    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/c/al;->a(Lcom/viber/voip/messages/controller/dc;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/controller/c/z;

    invoke-direct {v3, p0, p1, v0}, Lcom/viber/voip/messages/controller/c/z;-><init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/al;Lcom/viber/voip/messages/controller/dc;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 497
    :cond_1
    return-void
.end method

.method private a(Lcom/viber/voip/messages/controller/c/am;)V
    .locals 4
    .parameter

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/e;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/de;

    .line 453
    instance-of v2, v0, Lcom/viber/voip/messages/controller/df;

    if-eqz v2, :cond_0

    .line 454
    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/c/am;->a(Lcom/viber/voip/messages/controller/de;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/controller/c/x;

    invoke-direct {v3, p0, p1, v0}, Lcom/viber/voip/messages/controller/c/x;-><init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/am;Lcom/viber/voip/messages/controller/de;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method

.method private a(Lcom/viber/voip/messages/controller/c/an;)V
    .locals 4
    .parameter

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/e;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/dg;

    .line 469
    instance-of v2, v0, Lcom/viber/voip/messages/controller/dh;

    if-eqz v2, :cond_0

    .line 470
    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/c/an;->a(Lcom/viber/voip/messages/controller/dg;)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/controller/c/y;

    invoke-direct {v3, p0, p1, v0}, Lcom/viber/voip/messages/controller/c/y;-><init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/an;Lcom/viber/voip/messages/controller/dg;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 481
    :cond_1
    return-void
.end method

.method private declared-synchronized d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/da;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/e;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/de;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/e;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/dg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/e;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/dc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/e;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/controller/cz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/e;->f:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 352
    new-instance v0, Lcom/viber/voip/messages/controller/c/o;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/c/o;-><init>(Lcom/viber/voip/messages/controller/c/e;I)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 359
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 332
    new-instance v0, Lcom/viber/voip/messages/controller/c/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/m;-><init>(Lcom/viber/voip/messages/controller/c/e;II)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 339
    return-void
.end method

.method public a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    new-instance v0, Lcom/viber/voip/messages/controller/c/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/u;-><init>(Lcom/viber/voip/messages/controller/c/e;IJ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 427
    return-void
.end method

.method public a(IJI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    new-instance v0, Lcom/viber/voip/messages/controller/c/s;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/s;-><init>(Lcom/viber/voip/messages/controller/c/e;IJI)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 393
    return-void
.end method

.method public a(IJIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    new-instance v0, Lcom/viber/voip/messages/controller/c/t;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/t;-><init>(Lcom/viber/voip/messages/controller/c/e;IJIZ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 410
    return-void
.end method

.method public a(IJJLjava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/viber/voip/messages/controller/c/k;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/c/k;-><init>(Lcom/viber/voip/messages/controller/c/e;IJJLjava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 317
    return-void
.end method

.method public a(IJLjava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/viber/voip/messages/controller/c/n;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/n;-><init>(Lcom/viber/voip/messages/controller/c/e;IJLjava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 349
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 362
    new-instance v0, Lcom/viber/voip/messages/controller/c/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/p;-><init>(Lcom/viber/voip/messages/controller/c/e;J)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 369
    return-void
.end method

.method public a(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 320
    new-instance v0, Lcom/viber/voip/messages/controller/c/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/l;-><init>(Lcom/viber/voip/messages/controller/c/e;JI)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 329
    return-void
.end method

.method public a(JJJZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lcom/viber/voip/messages/controller/c/f;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/controller/c/f;-><init>(Lcom/viber/voip/messages/controller/c/e;JJJZ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/am;)V

    .line 141
    return-void
.end method

.method public a(JJZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/viber/voip/messages/controller/c/ad;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/ad;-><init>(Lcom/viber/voip/messages/controller/c/e;JJZ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/am;)V

    .line 183
    return-void
.end method

.method public a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/util/Set;Z)V

    .line 147
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/messages/controller/cz;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/messages/controller/da;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/messages/controller/de;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/messages/controller/dg;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Lcom/viber/voip/messages/controller/c/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/ae;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/am;)V

    .line 193
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/viber/voip/messages/controller/c/w;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/c/w;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/aj;)V

    .line 449
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/viber/voip/messages/controller/c/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/q;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/am;)V

    .line 157
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/viber/voip/messages/controller/c/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/c/g;-><init>(Lcom/viber/voip/messages/controller/c/e;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/an;)V

    .line 265
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    new-instance v0, Lcom/viber/voip/messages/controller/c/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/r;-><init>(Lcom/viber/voip/messages/controller/c/e;II)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 381
    return-void
.end method

.method public b(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->b(Ljava/util/Set;Z)V

    .line 163
    return-void
.end method

.method public declared-synchronized b(Lcom/viber/voip/messages/controller/da;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/viber/voip/messages/controller/dc;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/viber/voip/messages/controller/de;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/viber/voip/messages/controller/dg;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/viber/voip/messages/controller/c/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/ab;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/am;)V

    .line 173
    return-void
.end method

.method public b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/e;->g:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 414
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/viber/voip/messages/controller/c/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/c/h;-><init>(Lcom/viber/voip/messages/controller/c/e;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/an;)V

    .line 275
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 430
    new-instance v0, Lcom/viber/voip/messages/controller/c/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/v;-><init>(Lcom/viber/voip/messages/controller/c/e;II)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/al;)V

    .line 439
    return-void
.end method

.method public c(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->c(Ljava/util/Set;Z)V

    .line 199
    return-void
.end method

.method public c(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/viber/voip/messages/controller/c/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/af;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/ak;)V

    .line 209
    return-void
.end method

.method public d(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->e(Ljava/util/Set;Z)V

    .line 215
    return-void
.end method

.method public d(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/viber/voip/messages/controller/c/ag;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/ag;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/ak;)V

    .line 225
    return-void
.end method

.method public e(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->f(Ljava/util/Set;Z)V

    .line 245
    return-void
.end method

.method public e(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance p1, Ljava/util/HashSet;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 232
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/controller/c/ah;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/ah;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/ak;)V

    .line 239
    return-void
.end method

.method public f(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->g(Ljava/util/Set;Z)V

    .line 281
    return-void
.end method

.method public f(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/viber/voip/messages/controller/c/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/ai;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/ak;)V

    .line 255
    return-void
.end method

.method public g(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/controller/c/e;->h(Ljava/util/Set;Z)V

    .line 297
    return-void
.end method

.method public g(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/viber/voip/messages/controller/c/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/i;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/an;)V

    .line 291
    return-void
.end method

.method public h(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lcom/viber/voip/messages/controller/c/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/c/j;-><init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/an;)V

    .line 307
    return-void
.end method

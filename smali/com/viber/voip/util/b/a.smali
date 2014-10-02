.class public abstract Lcom/viber/voip/util/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/viber/voip/util/b/g;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lcom/viber/voip/util/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/b/k",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:Lcom/viber/voip/util/b/j;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 207
    new-instance v0, Lcom/viber/voip/util/b/b;

    invoke-direct {v0}, Lcom/viber/voip/util/b/b;-><init>()V

    sput-object v0, Lcom/viber/voip/util/b/a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 216
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/viber/voip/util/b/a;->e:Ljava/util/concurrent/BlockingQueue;

    .line 222
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/viber/voip/util/b/a;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/viber/voip/util/b/a;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/viber/voip/util/b/a;->b:Ljava/util/concurrent/Executor;

    .line 231
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/util/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/util/b/h;-><init>(Lcom/viber/voip/util/b/b;)V

    :goto_0
    sput-object v0, Lcom/viber/voip/util/b/a;->c:Ljava/util/concurrent/Executor;

    .line 234
    const/4 v0, 0x2

    sget-object v1, Lcom/viber/voip/util/b/a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/b/a;->d:Ljava/util/concurrent/Executor;

    .line 240
    new-instance v0, Lcom/viber/voip/util/b/g;

    invoke-direct {v0}, Lcom/viber/voip/util/b/g;-><init>()V

    sput-object v0, Lcom/viber/voip/util/b/a;->f:Lcom/viber/voip/util/b/g;

    .line 242
    sget-object v0, Lcom/viber/voip/util/b/a;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/viber/voip/util/b/a;->g:Ljava/util/concurrent/Executor;

    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/viber/voip/util/b/a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    sget-object v0, Lcom/viber/voip/util/b/j;->a:Lcom/viber/voip/util/b/j;

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->j:Lcom/viber/voip/util/b/j;

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 249
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 313
    new-instance v0, Lcom/viber/voip/util/b/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/b/c;-><init>(Lcom/viber/voip/util/b/a;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->h:Lcom/viber/voip/util/b/k;

    .line 324
    new-instance v0, Lcom/viber/voip/util/b/d;

    iget-object v1, p0, Lcom/viber/voip/util/b/a;->h:Lcom/viber/voip/util/b/k;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/b/d;-><init>(Lcom/viber/voip/util/b/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->i:Ljava/util/concurrent/FutureTask;

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/b/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/util/b/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/util/b/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 343
    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 350
    sget-object v0, Lcom/viber/voip/util/b/a;->f:Lcom/viber/voip/util/b/g;

    new-instance v1, Lcom/viber/voip/util/b/f;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/util/b/f;-><init>(Lcom/viber/voip/util/b/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/viber/voip/util/b/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 353
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/viber/voip/util/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/a;->b(Ljava/lang/Object;)V

    .line 664
    :goto_0
    sget-object v0, Lcom/viber/voip/util/b/j;->c:Lcom/viber/voip/util/b/j;

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->j:Lcom/viber/voip/util/b/j;

    .line 665
    return-void

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/viber/voip/util/b/a;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/viber/voip/util/b/a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->j:Lcom/viber/voip/util/b/j;

    sget-object v1, Lcom/viber/voip/util/b/j;->a:Lcom/viber/voip/util/b/j;

    if-eq v0, v1, :cond_0

    .line 604
    sget-object v0, Lcom/viber/voip/util/b/e;->a:[I

    iget-object v1, p0, Lcom/viber/voip/util/b/a;->j:Lcom/viber/voip/util/b/j;

    invoke-virtual {v1}, Lcom/viber/voip/util/b/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 615
    :cond_0
    sget-object v0, Lcom/viber/voip/util/b/j;->b:Lcom/viber/voip/util/b/j;

    iput-object v0, p0, Lcom/viber/voip/util/b/a;->j:Lcom/viber/voip/util/b/j;

    .line 617
    invoke-virtual {p0}, Lcom/viber/voip/util/b/a;->b()V

    .line 619
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->h:Lcom/viber/voip/util/b/k;

    iput-object p2, v0, Lcom/viber/voip/util/b/k;->b:[Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 622
    return-object p0

    .line 606
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Lcom/viber/voip/util/b/j;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->j:Lcom/viber/voip/util/b/j;

    return-object v0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method public final a(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 497
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/viber/voip/util/b/a;->c()V

    .line 435
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 417
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/viber/voip/util/b/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/viber/voip/util/b/a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 564
    sget-object v0, Lcom/viber/voip/util/b/a;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/util/b/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/viber/voip/util/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

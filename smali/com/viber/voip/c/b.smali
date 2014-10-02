.class public Lcom/viber/voip/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/Semaphore;

.field private c:Lcom/viber/voip/c/h;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/c/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/viber/voip/c/h;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/c/b;->d:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/c/b;->e:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/c/b;->f:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/viber/voip/c/b;->c:Lcom/viber/voip/c/h;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/viber/voip/c/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/c/b;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/c/b;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/c/b;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/c/b;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/viber/voip/c/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/viber/voip/c/b;->c()V

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/c/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/c/d;-><init>(Lcom/viber/voip/c/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/c/b;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    return-void

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doNotifyDexLoaded mDexLibListener.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/c/f;

    .line 188
    invoke-interface {v0}, Lcom/viber/voip/c/f;->onDexLoaded()V

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 149
    const-string/jumbo v0, "doLoad"

    invoke-direct {p0, v0}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/c/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/c/e;

    .line 152
    :try_start_0
    iget-boolean v1, v0, Lcom/viber/voip/c/e;->a:Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/viber/voip/c/b;->c:Lcom/viber/voip/c/h;

    iget-object v3, v0, Lcom/viber/voip/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/viber/voip/c/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/viber/voip/c/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/c/b;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/viber/voip/c/b;->c:Lcom/viber/voip/c/h;

    iget-object v4, v0, Lcom/viber/voip/c/e;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/viber/voip/c/e;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Lcom/viber/voip/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/c/b;->c()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/viber/voip/c/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/c/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 80
    if-nez v0, :cond_3

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadClass, new class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/viber/voip/c/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v3

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 86
    :try_start_3
    iget-object v2, p0, Lcom/viber/voip/c/b;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    move-object v2, v1

    move-object v1, v0

    .line 89
    goto :goto_0

    .line 91
    :cond_0
    if-nez v2, :cond_2

    .line 92
    :try_start_4
    iget-object v0, p0, Lcom/viber/voip/c/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 103
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 104
    :goto_2
    return-object v0

    .line 95
    :cond_1
    :try_start_6
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " No class loaders! Class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    move-object v0, v2

    .line 101
    :cond_3
    :try_start_7
    iget-object v1, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    const-string/jumbo v0, "load"

    invoke-direct {p0, v0}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/viber/voip/c/b;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    invoke-direct {p0}, Lcom/viber/voip/c/b;->b()V

    .line 125
    return-void

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/c/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    invoke-direct {p0}, Lcom/viber/voip/c/b;->b()V

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/c/f;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addDexListener listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dexLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/c/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/viber/voip/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/viber/voip/c/f;->onDexLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/c/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/c/b;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/viber/voip/c/e;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/viber/voip/c/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    const-string/jumbo v0, "loadAsync"

    invoke-direct {p0, v0}, Lcom/viber/voip/c/b;->c(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/c/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/c/c;-><init>(Lcom/viber/voip/c/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/c/b;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/viber/voip/c/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/viber/voip/c/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

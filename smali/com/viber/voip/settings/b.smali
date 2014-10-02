.class public Lcom/viber/voip/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/concurrent/locks/ReentrantLock;

.field protected b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/settings/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/viber/voip/settings/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/viber/voip/settings/b;->c:Lcom/viber/voip/settings/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/b;->d:Ljava/util/Map;

    .line 272
    invoke-static {p2, p3}, Lcom/viber/voip/util/bj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/b;->b:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/settings/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 276
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v1, p0, Lcom/viber/voip/settings/b;->d:Ljava/util/Map;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/settings/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/settings/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 300
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 301
    iget-object v5, p0, Lcom/viber/voip/settings/b;->d:Ljava/util/Map;

    invoke-virtual {p0, v4}, Lcom/viber/voip/settings/b;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/viber/voip/settings/b;->d:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/viber/voip/settings/b;->c:Lcom/viber/voip/settings/a;

    iget-object v0, v0, Lcom/viber/voip/settings/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/settings/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/settings/c;-><init>(Lcom/viber/voip/settings/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/viber/voip/settings/b;->c:Lcom/viber/voip/settings/a;

    iget-object v0, v0, Lcom/viber/voip/settings/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/settings/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/settings/d;-><init>(Lcom/viber/voip/settings/b;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/b;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 311
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    return v0

    .line 313
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->b(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/settings/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

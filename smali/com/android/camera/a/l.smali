.class public Lcom/android/camera/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/android/camera/a/n",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/a/l;->b:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/a/l;->c:Ljava/lang/ref/ReferenceQueue;

    .line 34
    new-instance v0, Lcom/android/camera/a/m;

    const/16 v2, 0x10

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/a/m;-><init>(Lcom/android/camera/a/l;IFZI)V

    iput-object v0, p0, Lcom/android/camera/a/l;->a:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/a/l;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a/n;

    .line 54
    :goto_0
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/camera/a/l;->b:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/camera/a/n;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/android/camera/a/l;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a/n;

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/a/l;->b()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/a/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v0

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/a/l;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a/n;

    .line 73
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/a/n;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/a/l;->b()V

    .line 62
    iget-object v0, p0, Lcom/android/camera/a/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/camera/a/l;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/android/camera/a/n;

    iget-object v2, p0, Lcom/android/camera/a/l;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/camera/a/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/a/n;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/a/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/a/l;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/a/l;->c:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

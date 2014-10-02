.class public Lcom/viber/jni/controller/ControllerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDelegatesHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/controller/ControllerListener;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .line 67
    iget-object v1, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    monitor-enter v1

    .line 68
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 69
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v3, Lcom/viber/jni/controller/ControllerListener$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/viber/jni/controller/ControllerListener$1;-><init>(Lcom/viber/jni/controller/ControllerListener;Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;Ljava/util/Map$Entry;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/viber/jni/controller/ControllerListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit v1

    .line 46
    return-object p0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lcom/viber/jni/controller/ControllerListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    monitor-enter v1

    .line 51
    :try_start_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 52
    iget-object v4, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    iget-object v5, p0, Lcom/viber/jni/controller/ControllerListener;->mHandler:Landroid/os/Handler;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    monitor-exit v1

    .line 56
    return-object p0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDelegate(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/viber/jni/controller/ControllerListener;->mDelegatesHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

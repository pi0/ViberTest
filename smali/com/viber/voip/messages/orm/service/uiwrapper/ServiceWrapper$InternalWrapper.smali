.class public Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/service/ServiceCallback;


# instance fields
.field private mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/orm/service/ServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/viber/voip/messages/orm/service/EntityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private refCount:I

.field final synthetic this$0:Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->this$0:Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->refCount:I

    .line 53
    iget v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->refCount:I

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mService:Lcom/viber/voip/messages/orm/service/EntityService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->this$0:Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;

    iget-object v1, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mService:Lcom/viber/voip/messages/orm/service/EntityService;

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;->onDestroy(Lcom/viber/voip/messages/orm/service/EntityService;Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mService:Lcom/viber/voip/messages/orm/service/EntityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstance(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/messages/orm/service/EntityService;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/ServiceCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mService:Lcom/viber/voip/messages/orm/service/EntityService;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->this$0:Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper;->createInstance(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/messages/orm/service/EntityService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mService:Lcom/viber/voip/messages/orm/service/EntityService;

    .line 47
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->refCount:I

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mService:Lcom/viber/voip/messages/orm/service/EntityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/service/ServiceCallback;

    .line 85
    invoke-interface {v0}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs onDataChange(Lcom/viber/voip/messages/orm/service/EntityService;I[Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;I[",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/service/ServiceCallback;

    .line 78
    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->onDataChange(Lcom/viber/voip/messages/orm/service/EntityService;I[Lcom/viber/voip/messages/orm/entity/Entity;)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public onDataReady(Lcom/viber/voip/messages/orm/service/EntityService;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/service/ServiceCallback;

    .line 71
    invoke-interface {v0, p1}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->onDataReady(Lcom/viber/voip/messages/orm/service/EntityService;)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public start(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public stop(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

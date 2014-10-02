.class public Lcom/viber/voip/calls/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/x;
.implements Lcom/viber/voip/contacts/c/d/e;
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;
.implements Lcom/viber/voip/messages/orm/service/EntityService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/voip/calls/x;",
        "Lcom/viber/voip/contacts/c/d/e;",
        "Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;",
        "Lcom/viber/voip/messages/orm/service/EntityService",
        "<",
        "Lcom/viber/voip/calls/entities/AggregatedCallEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/messages/orm/service/ServiceCallback;

.field private c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/calls/entities/AggregatedCallEntity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/a/a;->h:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/viber/voip/calls/a/b;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/calls/a/b;-><init>(Lcom/viber/voip/calls/a/a;I)V

    iput-object v0, p0, Lcom/viber/voip/calls/a/a;->i:Landroid/support/v4/util/LruCache;

    .line 65
    new-instance v0, Lcom/viber/voip/calls/a/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/calls/a/c;-><init>(Lcom/viber/voip/calls/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/calls/a/a;->j:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/viber/voip/calls/a/a;->b:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    .line 75
    sget-object v0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-static {v0, p0}, Lcom/viber/voip/calls/a/d;->a(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/viber/voip/calls/a/a;->g:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/calls/a/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/a/a;->b(I)V

    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 2
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/viber/voip/calls/a/a;->g:I

    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/calls/a/a;->e:Z

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->a(Lcom/viber/voip/contacts/c/d/e;)V

    .line 103
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/calls/u;->a(Lcom/viber/voip/calls/x;)V

    .line 106
    :cond_0
    if-nez p1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/calls/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/calls/a/d;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/calls/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/calls/a/d;->b(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/calls/entities/AggregatedCallEntity;
    .locals 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->i:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 174
    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/viber/voip/calls/a/a;->i:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/viber/voip/calls/a/a;->e:Z

    if-eqz v0, :cond_0

    .line 146
    iget v0, p0, Lcom/viber/voip/calls/a/a;->g:I

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/a/a;->b(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p2, p0, Lcom/viber/voip/calls/a/a;->d:Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/a/a;->b(I)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/viber/voip/calls/a/a;->d:Ljava/lang/String;

    .line 115
    iget v0, p0, Lcom/viber/voip/calls/a/a;->g:I

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/a/a;->b(I)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/calls/a/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/calls/a/a;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/viber/voip/calls/a/a;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->closeCursor()Z

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/calls/a/a;->e:Z

    .line 139
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->b(Lcom/viber/voip/contacts/c/d/e;)V

    .line 140
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/calls/u;->b(Lcom/viber/voip/calls/x;)V

    .line 141
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getPositionsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-object v1
.end method

.method public f()Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public findEntity(J)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/a/a;->a(I)Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getHelper()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/calls/a/a;->f()Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    move-result-object v0

    return-object v0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/viber/voip/calls/a/a;->e:Z

    return v0
.end method

.method public declared-synchronized onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->i:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 123
    iget v0, p0, Lcom/viber/voip/calls/a/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/calls/a/a;->f:I

    .line 124
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->b:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    if-eqz v0, :cond_0

    .line 125
    iget-boolean v0, p0, Lcom/viber/voip/calls/a/a;->e:Z

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/calls/a/a;->e:Z

    .line 127
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->b:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->onDataReady(Lcom/viber/voip/messages/orm/service/EntityService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/calls/a/a;->b:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-interface {v0, p0, p2, v1}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->onDataChange(Lcom/viber/voip/messages/orm/service/EntityService;I[Lcom/viber/voip/messages/orm/entity/Entity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/viber/voip/contacts/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/x;
.implements Lcom/viber/voip/contacts/a;
.implements Lcom/viber/voip/contacts/c/d/e;
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;
.implements Lcom/viber/voip/messages/orm/service/EntityService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/voip/calls/x;",
        "Lcom/viber/voip/contacts/a;",
        "Lcom/viber/voip/contacts/c/d/e;",
        "Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;",
        "Lcom/viber/voip/messages/orm/service/EntityService",
        "<",
        "Lcom/viber/voip/contacts/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Ljava/lang/Runnable;

.field private c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

.field private d:Lcom/viber/voip/contacts/e/h;

.field private e:Lcom/viber/voip/contacts/e/h;

.field private f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Handler;

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/Handler;

.field private r:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/contacts/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/viber/voip/contacts/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/e/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->n:Landroid/os/Handler;

    .line 65
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->o:Landroid/os/Handler;

    .line 66
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->p:Landroid/os/Handler;

    .line 67
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->q:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/viber/voip/contacts/e/b;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/e/b;-><init>(Lcom/viber/voip/contacts/e/a;I)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->r:Landroid/support/v4/util/LruCache;

    .line 128
    new-instance v0, Lcom/viber/voip/contacts/e/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/e/e;-><init>(Lcom/viber/voip/contacts/e/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->a:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/viber/voip/contacts/e/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/e/g;-><init>(Lcom/viber/voip/contacts/e/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->s:Ljava/lang/Runnable;

    .line 77
    iput-object p1, p0, Lcom/viber/voip/contacts/e/a;->c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    .line 78
    sget-object v0, Lcom/viber/voip/contacts/b/b/e;->e:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-static {v0, p0}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 80
    new-instance v0, Lcom/viber/voip/contacts/e/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/e/c;-><init>(Lcom/viber/voip/contacts/e/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->d:Lcom/viber/voip/contacts/e/h;

    .line 87
    new-instance v0, Lcom/viber/voip/contacts/e/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/e/d;-><init>(Lcom/viber/voip/contacts/e/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->e:Lcom/viber/voip/contacts/e/h;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/e/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/e/a;->d(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->closeCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget v1, p0, Lcom/viber/voip/contacts/e/a;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/e/a;->onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/e/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/e/a;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/e/a;->h:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/contacts/e/h;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->d:Lcom/viber/voip/contacts/e/h;

    return-object v0
.end method

.method private declared-synchronized d(I)V
    .locals 2
    .parameter

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/viber/voip/contacts/e/a;->h:I

    .line 167
    iget-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    if-nez v0, :cond_1

    .line 168
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->a(Lcom/viber/voip/contacts/c/d/e;)V

    .line 169
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 170
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/calls/u;->a(Lcom/viber/voip/calls/x;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/contacts/e/h;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->e:Lcom/viber/voip/contacts/e/h;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/contacts/e/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/contacts/e/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    return v0
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/e/a;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/contacts/e/a;->h:I

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/e/a;->d(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 288
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/contacts/e/a;->m:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/viber/voip/contacts/e/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/contacts/e/a;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 291
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/e/a;->a(Z)V

    .line 296
    :goto_1
    return-void

    .line 288
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public b(I)Lcom/viber/voip/contacts/b/e;
    .locals 3
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->r:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 221
    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 224
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/a;->r:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/e/a;->d(I)V

    .line 102
    return-void
.end method

.method public c_()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/viber/voip/contacts/e/a;->j:I

    return v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->closeCursor()Z

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    .line 204
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->b(Lcom/viber/voip/contacts/c/d/e;)V

    .line 205
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/calls/u;->b(Lcom/viber/voip/calls/x;)V

    .line 206
    return-void
.end method

.method public f()Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public findEntity(J)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/e/a;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getHelper()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/contacts/e/a;->f()Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    move-result-object v0

    return-object v0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    return v0
.end method

.method public declared-synchronized onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->r:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 187
    iput p2, p0, Lcom/viber/voip/contacts/e/a;->i:I

    .line 188
    iget v0, p0, Lcom/viber/voip/contacts/e/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/contacts/e/a;->j:I

    .line 189
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    if-eqz v0, :cond_0

    .line 190
    iget-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    if-nez v0, :cond_1

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/e/a;->g:Z

    .line 192
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->onDataReady(Lcom/viber/voip/messages/orm/service/EntityService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/contacts/e/a;->c:Lcom/viber/voip/messages/orm/service/ServiceCallback;

    iget v1, p0, Lcom/viber/voip/contacts/e/a;->i:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-interface {v0, p0, v1, v2}, Lcom/viber/voip/messages/orm/service/ServiceCallback;->onDataChange(Lcom/viber/voip/messages/orm/service/EntityService;I[Lcom/viber/voip/messages/orm/entity/Entity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

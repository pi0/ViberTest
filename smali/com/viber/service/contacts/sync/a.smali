.class public final Lcom/viber/service/contacts/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/au;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;

.field private h:Lcom/viber/voip/contacts/c/d/at;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x2710

    .line 19
    const-class v0, Lcom/viber/service/contacts/sync/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/contacts/sync/a;->a:Ljava/lang/String;

    .line 21
    sput-wide v2, Lcom/viber/service/contacts/sync/a;->b:J

    .line 22
    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/viber/service/contacts/sync/a;->c:J

    .line 23
    sput-wide v2, Lcom/viber/service/contacts/sync/a;->d:J

    .line 24
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/viber/service/contacts/sync/a;->e:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/viber/service/contacts/sync/b;

    invoke-direct {v0, p0}, Lcom/viber/service/contacts/sync/b;-><init>(Lcom/viber/service/contacts/sync/a;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->l:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/viber/service/contacts/sync/c;

    invoke-direct {v0, p0}, Lcom/viber/service/contacts/sync/c;-><init>(Lcom/viber/service/contacts/sync/a;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->m:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/viber/service/contacts/sync/d;

    invoke-direct {v0, p0}, Lcom/viber/service/contacts/sync/d;-><init>(Lcom/viber/service/contacts/sync/a;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->n:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/viber/service/contacts/sync/e;

    invoke-direct {v0, p0}, Lcom/viber/service/contacts/sync/e;-><init>(Lcom/viber/service/contacts/sync/a;)V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->o:Ljava/lang/Runnable;

    .line 94
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->f:Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    .line 96
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a;->h:Lcom/viber/voip/contacts/c/d/at;

    .line 97
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->h:Lcom/viber/voip/contacts/c/d/at;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->a(Lcom/viber/voip/contacts/c/d/au;)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/service/contacts/sync/b;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/service/contacts/sync/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/viber/service/contacts/sync/a;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/viber/service/contacts/sync/f;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/service/contacts/sync/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/viber/service/contacts/sync/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/service/contacts/sync/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/viber/service/contacts/sync/a;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/service/contacts/sync/a;->f()V

    return-void
.end method

.method static synthetic d(Lcom/viber/service/contacts/sync/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->k:Z

    return v0
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->i:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->l:Ljava/lang/Runnable;

    sget-wide v2, Lcom/viber/service/contacts/sync/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->o:Ljava/lang/Runnable;

    sget-wide v2, Lcom/viber/service/contacts/sync/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->h:Lcom/viber/voip/contacts/c/d/at;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->b(Lcom/viber/voip/contacts/c/d/au;)V

    .line 158
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->R()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 147
    invoke-virtual {p0}, Lcom/viber/service/contacts/sync/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 0

    .prologue
    .line 102
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c()V
    .locals 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_CONTCATS_SYNC_ACCOUT_REQUEST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 107
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->i:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->m:Ljava/lang/Runnable;

    sget-wide v2, Lcom/viber/service/contacts/sync/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->i:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->n:Ljava/lang/Runnable;

    sget-wide v2, Lcom/viber/service/contacts/sync/a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/service/contacts/sync/a;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_REMOVE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/viber/service/contacts/sync/a;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

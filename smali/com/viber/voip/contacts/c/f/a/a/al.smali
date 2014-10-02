.class public Lcom/viber/voip/contacts/c/f/a/a/al;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/aj;
.implements Lcom/viber/voip/settings/m;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/contacts/c/f/a/a/n;

.field private final c:Lcom/viber/voip/contacts/c/f/a/a/ab;

.field private final d:Lcom/viber/voip/contacts/c/d/at;

.field private final e:Lcom/viber/voip/contacts/c/f/a/a/a;

.field private final f:Lcom/viber/voip/ViberApplication;

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/viber/voip/util/fe;

.field private i:Lcom/viber/voip/contacts/c/f/a/a/ae;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/al;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/a/a/a;Lcom/viber/voip/util/fe;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->g:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->e:Lcom/viber/voip/contacts/c/f/a/a/a;

    .line 75
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->h:Lcom/viber/voip/util/fe;

    .line 76
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->f:Lcom/viber/voip/ViberApplication;

    .line 77
    invoke-static {p1}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->d:Lcom/viber/voip/contacts/c/d/at;

    .line 78
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->g:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Lcom/viber/voip/contacts/c/f/a/a/ab;-><init>(Landroid/content/Context;Lcom/viber/voip/contacts/c/f/a/a/aj;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    .line 79
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/n;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->f:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/n;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    .line 80
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->u()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    .line 83
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/a/a/al;->f()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/ae;)Lcom/viber/voip/contacts/c/f/a/a/ae;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    return-void
.end method

.method private a(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    .locals 5
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->f:Lcom/viber/voip/ViberApplication;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->j:Z

    if-eqz v0, :cond_3

    .line 156
    :cond_2
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/al;->b(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    goto :goto_0

    .line 157
    :cond_3
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/a/a/al;->h()V

    goto :goto_0

    .line 160
    :cond_4
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->b:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(ZLcom/viber/voip/contacts/c/f/a/a/ae;J)V

    goto :goto_0

    .line 163
    :cond_5
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->f:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_6

    .line 165
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(Lcom/viber/voip/contacts/c/f/a/a/ae;)V

    goto :goto_0

    .line 166
    :cond_6
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->d:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_7

    .line 168
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/ab;->b(Lcom/viber/voip/contacts/c/f/a/a/ae;)V

    goto :goto_0

    .line 169
    :cond_7
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->c:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_9

    .line 171
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    if-nez v0, :cond_8

    .line 172
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/ab;->c(Lcom/viber/voip/contacts/c/f/a/a/ae;)V

    goto :goto_0

    .line 174
    :cond_8
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->e:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    goto :goto_0

    .line 176
    :cond_9
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->e:Lcom/viber/voip/contacts/c/f/a/a/au;

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->d:Lcom/viber/voip/contacts/c/d/at;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/at;->a(I)V

    .line 181
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/a/a/al;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/al;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/a/a/al;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/a/a/al;->i()V

    return-void
.end method

.method private b(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->h:Lcom/viber/voip/util/fe;

    sget-object v3, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "COUNT(*)"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    const-string/jumbo v6, "GROUP_CONCAT(\'\'\'\'||contact_id||\'_\'||_id||\'_\'||version||\'_\'||starred||\'\'\'\')"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "GROUP_CONCAT(_id)"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "GROUP_CONCAT(contact_id)"

    aput-object v6, v4, v5

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/at;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/at;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 351
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/f/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->e:Lcom/viber/voip/contacts/c/f/a/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/f/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->i:Lcom/viber/voip/contacts/c/f/a/a/ae;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/f/a/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/al;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Z)V

    .line 89
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 104
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->c:Lcom/viber/voip/contacts/c/f/a/a/ab;

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/am;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/f/a/a/am;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(Lcom/viber/voip/contacts/c/f/a/a/ak;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/viber/voip/contacts/c/f/a/a/al;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/d/at;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->d:Lcom/viber/voip/contacts/c/d/at;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->g:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/an;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/f/a/a/an;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method

.method static synthetic h(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->f:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->b:Lcom/viber/voip/contacts/c/f/a/a/n;

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/ao;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/f/a/a/ao;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(Lcom/viber/voip/contacts/c/f/a/a/aa;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_1
    :try_start_2
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->b:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized i()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->k:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->k:Z

    .line 223
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->b:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Z)V

    .line 119
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->b(Lcom/viber/voip/settings/m;)V

    .line 120
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/f/a/a/af;)V
    .locals 4
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->e:Lcom/viber/voip/contacts/c/f/a/a/a;

    iget-boolean v1, p1, Lcom/viber/voip/contacts/c/f/a/a/af;->a:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/c/f/a/a/af;->b:Ljava/util/Set;

    new-instance v3, Lcom/viber/voip/contacts/c/f/a/a/ap;

    invoke-direct {v3, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/ap;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/af;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(ZLjava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 253
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/f/a/a/ag;)V
    .locals 4
    .parameter

    .prologue
    .line 279
    iget-boolean v0, p1, Lcom/viber/voip/contacts/c/f/a/a/ag;->a:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->e:Lcom/viber/voip/contacts/c/f/a/a/a;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/viber/voip/contacts/c/f/a/a/ag;->b:Ljava/lang/String;

    new-instance v3, Lcom/viber/voip/contacts/c/f/a/a/ar;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/c/f/a/a/ar;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->c:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/contacts/c/f/a/a/ah;)V
    .locals 4
    .parameter

    .prologue
    .line 262
    iget-boolean v0, p1, Lcom/viber/voip/contacts/c/f/a/a/ah;->a:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->e:Lcom/viber/voip/contacts/c/f/a/a/a;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/viber/voip/contacts/c/f/a/a/ah;->b:Ljava/lang/String;

    new-instance v3, Lcom/viber/voip/contacts/c/f/a/a/aq;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/c/f/a/a/aq;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->d:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/contacts/c/f/a/a/ai;)V
    .locals 3
    .parameter

    .prologue
    .line 296
    iget-boolean v0, p1, Lcom/viber/voip/contacts/c/f/a/a/ai;->a:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->e:Lcom/viber/voip/contacts/c/f/a/a/a;

    iget-object v1, p1, Lcom/viber/voip/contacts/c/f/a/a/ai;->b:Ljava/lang/String;

    new-instance v2, Lcom/viber/voip/contacts/c/f/a/a/as;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/c/f/a/a/as;-><init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->e:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 131
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->m:Z

    if-nez v0, :cond_1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->m:Z

    .line 134
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    if-nez p1, :cond_0

    :try_start_1
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->m:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->m:Z

    .line 139
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V

    .line 124
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->j:Z

    .line 257
    return-void
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/au;->a:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->u()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSharedPreferenceChanged: showAll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Ljava/lang/String;)V

    .line 112
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/al;->n:Z

    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/a/a/al;->b()V

    .line 115
    :cond_0
    return-void
.end method

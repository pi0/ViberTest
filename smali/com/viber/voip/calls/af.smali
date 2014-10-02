.class public Lcom/viber/voip/calls/af;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/viber/voip/ViberApplication;

.field private c:Lcom/viber/voip/calls/t;

.field private d:Lcom/viber/voip/calls/a;

.field private e:Lcom/viber/voip/calls/am;

.field private f:Z

.field private g:Z

.field private h:Z

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/viber/voip/calls/entities/impl/CallEntityImpl;",
            "Lcom/viber/voip/calls/entities/impl/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/viber/voip/calls/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/calls/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/af;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/af;->i:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/calls/am;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/af;->j:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/af;->k:Ljava/util/Map;

    .line 68
    invoke-static {p1}, Lcom/viber/voip/calls/entities/impl/e;->a(Lcom/viber/voip/ViberApplication;)V

    .line 70
    iput-object p1, p0, Lcom/viber/voip/calls/af;->b:Lcom/viber/voip/ViberApplication;

    .line 71
    iput-object p2, p0, Lcom/viber/voip/calls/af;->e:Lcom/viber/voip/calls/am;

    .line 72
    new-instance v0, Lcom/viber/voip/calls/a;

    iget-object v1, p0, Lcom/viber/voip/calls/af;->b:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/calls/a;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/calls/af;->d:Lcom/viber/voip/calls/a;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/af;->a(Z)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/af;)Lcom/viber/voip/calls/am;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/calls/af;->e:Lcom/viber/voip/calls/am;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/t;)Lcom/viber/voip/calls/t;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/viber/voip/calls/af;->c:Lcom/viber/voip/calls/t;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/af;->b(Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V

    return-void
.end method

.method private a(Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/calls/af;->h:Z

    .line 79
    iget-object v0, p0, Lcom/viber/voip/calls/af;->d:Lcom/viber/voip/calls/a;

    new-instance v1, Lcom/viber/voip/calls/ag;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/calls/ag;-><init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/q;)V

    .line 88
    return-void
.end method

.method public static a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    sput-object p0, Lcom/viber/voip/calls/af;->i:Ljava/util/Set;

    .line 277
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/calls/af;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/calls/af;->c()V

    return-void
.end method

.method private declared-synchronized b(Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/af;->c:Lcom/viber/voip/calls/t;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/calls/af;->h:Z

    if-eqz v0, :cond_2

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_2
    :try_start_1
    sget-object v0, Lcom/viber/voip/calls/al;->a:Lcom/viber/voip/calls/al;

    if-ne p1, v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/viber/voip/calls/af;->d:Lcom/viber/voip/calls/a;

    new-instance v1, Lcom/viber/voip/calls/ai;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/calls/ai;-><init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/an;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 238
    :cond_3
    :try_start_2
    sget-object v0, Lcom/viber/voip/calls/al;->b:Lcom/viber/voip/calls/al;

    if-ne p1, v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/viber/voip/calls/af;->d:Lcom/viber/voip/calls/a;

    sget-object v1, Lcom/viber/voip/calls/af;->i:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/viber/voip/calls/an;->a()J

    move-result-wide v2

    new-instance v4, Lcom/viber/voip/calls/aj;

    invoke-direct {v4, p0, p2}, Lcom/viber/voip/calls/aj;-><init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/an;)V

    iget-object v5, p0, Lcom/viber/voip/calls/af;->c:Lcom/viber/voip/calls/t;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/calls/a;->a(Ljava/util/Set;JLcom/viber/voip/calls/o;Lcom/viber/voip/calls/t;)V

    goto :goto_0

    .line 252
    :cond_4
    sget-object v0, Lcom/viber/voip/calls/al;->c:Lcom/viber/voip/calls/al;

    if-ne p1, v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/viber/voip/calls/af;->d:Lcom/viber/voip/calls/a;

    new-instance v1, Lcom/viber/voip/calls/ak;

    invoke-direct {v1, p0}, Lcom/viber/voip/calls/ak;-><init>(Lcom/viber/voip/calls/af;)V

    iget-object v2, p0, Lcom/viber/voip/calls/af;->c:Lcom/viber/voip/calls/t;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/o;Lcom/viber/voip/calls/t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/w;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Lcom/viber/voip/calls/ah;

    invoke-direct {v0, p0, p3, p1}, Lcom/viber/voip/calls/ah;-><init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/w;Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)V

    .line 198
    iget-object v1, p0, Lcom/viber/voip/calls/af;->d:Lcom/viber/voip/calls/a;

    invoke-virtual {v1, p1, p2, v0}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/o;)V

    .line 212
    return-void
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/af;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/viber/voip/calls/af;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 153
    iget-object v1, p0, Lcom/viber/voip/calls/af;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/calls/w;

    .line 154
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/calls/entities/impl/g;

    invoke-direct {p0, v2, v0, v1}, Lcom/viber/voip/calls/af;->b(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/w;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/viber/voip/calls/af;->g:Z

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/calls/af;->g:Z

    .line 158
    invoke-direct {p0}, Lcom/viber/voip/calls/af;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/viber/voip/calls/af;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/viber/voip/calls/al;->a:Lcom/viber/voip/calls/al;

    new-instance v1, Lcom/viber/voip/calls/an;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/calls/an;-><init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/ag;)V

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/af;->b(Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/af;->a(Z)V

    .line 92
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/w;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/calls/af;->f:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/viber/voip/calls/af;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/viber/voip/calls/af;->k:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/voip/calls/af;->f:Z

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/calls/af;->b(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/w;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/calls/af;->f:Z

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/calls/af;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/voip/calls/af;->f:Z

    .line 145
    invoke-direct {p0}, Lcom/viber/voip/calls/af;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 0
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/viber/voip/calls/af;->b()V

    .line 169
    return-void
.end method

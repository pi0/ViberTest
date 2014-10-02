.class public Lcom/viber/voip/stickers/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/stickers/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/stickers/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/stickers/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/d/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/d/c;->c:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/d/c;->d:Ljava/util/Set;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/stickers/d/c;->e:Ljava/lang/Runnable;

    .line 35
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/d/c;->b:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/d/d;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/stickers/d/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/stickers/d/c;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/viber/voip/stickers/d/f;->a()Lcom/viber/voip/stickers/d/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/viber/voip/stickers/d/c;->c()Ljava/util/Set;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/viber/voip/stickers/d/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/stickers/d/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/voip/stickers/d/e;-><init>(Lcom/viber/voip/stickers/d/c;Ljava/util/Set;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/stickers/d/a;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/d/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/stickers/d/g;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/d/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/stickers/d/c;->b()Ljava/util/Set;

    move-result-object v2

    .line 75
    iget-object v0, p0, Lcom/viber/voip/stickers/d/c;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/d/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/stickers/d/c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    :cond_0
    new-instance v0, Lcom/viber/voip/stickers/d/d;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/stickers/d/d;-><init>(Lcom/viber/voip/stickers/d/c;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/d/c;->e:Ljava/lang/Runnable;

    .line 84
    iget-object v0, p0, Lcom/viber/voip/stickers/d/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/stickers/d/c;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method public declared-synchronized b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/stickers/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/stickers/d/c;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/viber/voip/stickers/d/a;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/d/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/stickers/d/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/stickers/d/c;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

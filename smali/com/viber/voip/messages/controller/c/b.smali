.class public Lcom/viber/voip/messages/controller/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/messages/controller/c/b;


# instance fields
.field private final b:Lcom/viber/voip/messages/controller/c/e;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    .line 25
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->b:Lcom/viber/voip/messages/controller/c/e;

    .line 26
    return-void
.end method

.method public static a()Lcom/viber/voip/messages/controller/c/b;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/viber/voip/messages/controller/c/b;->a:Lcom/viber/voip/messages/controller/c/b;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcom/viber/voip/messages/controller/c/b;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/controller/c/b;->a:Lcom/viber/voip/messages/controller/c/b;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/viber/voip/messages/controller/c/b;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/b;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/controller/c/b;->a:Lcom/viber/voip/messages/controller/c/b;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/controller/c/b;->a:Lcom/viber/voip/messages/controller/c/b;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->b:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->d(Ljava/util/Set;Z)V

    .line 47
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 3
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
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->b:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->d(Ljava/util/Set;Z)V

    .line 41
    :cond_0
    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    return-object v0
.end method

.method public b(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->b:Lcom/viber/voip/messages/controller/c/e;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/messages/controller/c/e;->d(Ljava/util/Set;Z)V

    .line 56
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/b;->b:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/b;->c:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->d(Ljava/util/Set;Z)V

    .line 35
    return-void
.end method

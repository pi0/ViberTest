.class public Lcom/viber/voip/contacts/c/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/ViberApplication;

.field private c:Lcom/viber/voip/contacts/c/d/aa;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/contacts/c/d/d;",
            "Lcom/viber/voip/contacts/c/d/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/contacts/c/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/d/aa;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/a;->b:Lcom/viber/voip/ViberApplication;

    .line 49
    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/a/a;->c:Lcom/viber/voip/contacts/c/d/aa;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/contacts/c/d/aa;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->c:Lcom/viber/voip/contacts/c/d/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->b:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/a/b;

    .line 117
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public declared-synchronized a(JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/c/d/a/a;->a(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JLjava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/b;

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/c/d/a/b;-><init>(Lcom/viber/voip/contacts/c/d/a/a;Lcom/viber/voip/contacts/c/d/d;JLjava/lang/String;Z)V

    .line 54
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/viber/voip/contacts/c/d/d;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/b;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/viber/voip/contacts/c/d/a/b;-><init>(Lcom/viber/voip/contacts/c/d/a/a;Lcom/viber/voip/contacts/c/d/d;Ljava/lang/String;Z)V

    .line 61
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->b(Lcom/viber/voip/contacts/c/d/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/a/b;

    .line 93
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->c(Lcom/viber/voip/contacts/c/d/a/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/d/a/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/a/b;

    .line 84
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->c(Lcom/viber/voip/contacts/c/d/a/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/d/a/b;->a(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/a/b;

    .line 102
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->c(Lcom/viber/voip/contacts/c/d/a/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/viber/voip/contacts/c/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/ViberApplication;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/contacts/c/d/d;",
            "Lcom/viber/voip/contacts/c/d/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/contacts/c/d/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/d/aa;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/b/a;->c:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/b/a;->b:Lcom/viber/voip/ViberApplication;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/b/a;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/a;->b:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/a;->c:Ljava/util/Map;

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

    check-cast v0, Lcom/viber/voip/contacts/c/d/b/b;

    .line 95
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/b/b;->a(Lcom/viber/voip/contacts/c/d/b/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/d/b/b;->a(Lcom/viber/voip/contacts/c/d/b/b;Z)V

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public declared-synchronized a(JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public a(JLjava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/viber/voip/contacts/c/d/b/b;

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/b/b;-><init>(Lcom/viber/voip/contacts/c/d/b/a;Lcom/viber/voip/contacts/c/d/d;JZ)V

    .line 42
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/b/a;->c:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/d/b/b;->a(Lcom/viber/voip/contacts/c/d/b/b;Z)V

    .line 45
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/contacts/c/d/d;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
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
    .line 48
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/viber/voip/contacts/c/d/b/b;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/viber/voip/contacts/c/d/b/b;-><init>(Lcom/viber/voip/contacts/c/d/b/a;Lcom/viber/voip/contacts/c/d/d;Ljava/lang/String;Z)V

    .line 49
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/b/a;->c:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/b/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/a;->c:Ljava/util/Map;

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

    check-cast v0, Lcom/viber/voip/contacts/c/d/b/b;

    .line 80
    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/b/b;->a(Lcom/viber/voip/contacts/c/d/b/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/d/b/b;->a(Lcom/viber/voip/contacts/c/d/b/b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_1
    monitor-exit p0

    return-void
.end method

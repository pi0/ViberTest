.class public Lcom/viber/voip/contacts/c/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/c/b;


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/contacts/c/c/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/c/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/contacts/c/c/a/b;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/viber/voip/contacts/c/c/a/f;->a()Lcom/viber/voip/contacts/c/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/viber/voip/contacts/c/c/a/e;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    iget-object v1, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    monitor-enter v1

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/c/d;

    .line 56
    invoke-interface {p1, v0}, Lcom/viber/voip/contacts/c/c/a/e;->a(Lcom/viber/voip/contacts/c/c/d;)V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/c/d;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v1, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/contacts/c/c/a/c;-><init>(Lcom/viber/voip/contacts/c/c/a/b;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/c/a/b;->a(Lcom/viber/voip/contacts/c/c/a/e;)V

    .line 37
    return-void
.end method

.method public b(Lcom/viber/voip/contacts/c/c/d;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v1, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/c/a/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/contacts/c/c/a/d;-><init>(Lcom/viber/voip/contacts/c/c/a/b;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/c/a/b;->a(Lcom/viber/voip/contacts/c/c/a/e;)V

    .line 48
    return-void
.end method

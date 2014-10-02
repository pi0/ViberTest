.class public Lcom/viber/voip/util/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Lcom/viber/voip/util/bg",
            "<TK;TV;>.com/viber/voip/util/bh;>;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/viber/voip/util/bg;-><init>(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/viber/voip/util/bg;->b:J

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 96
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bh;

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 54
    invoke-virtual {v0}, Lcom/viber/voip/util/bh;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 56
    iget-wide v4, p0, Lcom/viber/voip/util/bg;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/viber/voip/util/bh;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 66
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/util/bh;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 66
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v6, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/viber/voip/util/bh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/util/bh;-><init>(Lcom/viber/voip/util/bg;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bh;

    .line 42
    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/util/bh;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/viber/voip/util/bg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bh;

    .line 71
    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/util/bh;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/util/bg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bh;

    .line 122
    invoke-virtual {v0}, Lcom/viber/voip/util/bh;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    return-object v1
.end method

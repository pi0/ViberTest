.class public Lcom/viber/voip/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/l;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/viber/voip/settings/b;

.field protected final c:Landroid/os/Handler;

.field protected d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/settings/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/settings/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/settings/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/viber/voip/settings/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/a;->e:Ljava/util/Set;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/a;->f:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/viber/voip/settings/b;

    invoke-static {p3}, Lcom/viber/voip/settings/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/settings/b;-><init>(Lcom/viber/voip/settings/a;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    .line 45
    iput-object p2, p0, Lcom/viber/voip/settings/a;->c:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string/jumbo v0, "preferences/"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "preferences/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/viber/voip/settings/l;
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 106
    iget-object v3, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/viber/voip/settings/b;->a(Ljava/lang/String;)V

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/settings/b;->a(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/a;->c(Ljava/lang/String;)V

    .line 98
    return-object p0
.end method

.method public a(Ljava/lang/String;F)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    .line 64
    :cond_0
    :goto_0
    return-object p0

    .line 55
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 56
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 57
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 58
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 59
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 60
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 61
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    .line 70
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/settings/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Lcom/viber/voip/settings/l;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/viber/voip/settings/l;"
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 119
    :cond_0
    return-object p0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object p3, v0

    .line 162
    :cond_1
    :goto_0
    return-object p3

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/settings/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v0

    .line 160
    goto :goto_0
.end method

.method public a(Lcom/viber/voip/settings/m;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/settings/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public b(Ljava/lang/String;F)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 172
    const-class v0, Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 177
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 182
    const-class v0, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/a;->c(Ljava/lang/String;)V

    .line 232
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/settings/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    invoke-virtual {v0}, Lcom/viber/voip/settings/b;->a()Ljava/util/Map;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    iget-object v2, p0, Lcom/viber/voip/settings/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    :goto_0
    monitor-exit v1

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/viber/voip/settings/m;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/viber/voip/settings/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 126
    .line 127
    iget-object v1, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/settings/a;->e:Ljava/util/Set;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/settings/a;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/settings/a;->b:Lcom/viber/voip/settings/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/settings/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    iget-object v2, p0, Lcom/viber/voip/settings/a;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 218
    iget-object v1, p0, Lcom/viber/voip/settings/a;->f:Ljava/util/Set;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/settings/a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/m;

    .line 220
    invoke-interface {v0, p0, p1}, Lcom/viber/voip/settings/m;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 329
    iget-object v2, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/settings/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/viber/voip/settings/a;->b()Ljava/util/Map;

    .line 333
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    const-string/jumbo v0, "{ PreferencesStorage: \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    iget-object v0, p0, Lcom/viber/voip/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 338
    :cond_1
    :try_start_1
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.class public Lcom/viber/voip/contacts/c/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/contacts/c/f/b;


# instance fields
.field private b:Lcom/viber/voip/contacts/c/f/b/u;

.field private c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b;->d:Ljava/util/Set;

    .line 28
    invoke-static {p1}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b;->b:Lcom/viber/voip/contacts/c/f/b/u;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b;->c(Ljava/util/Set;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b;)I
    .locals 1
    .parameter

    .prologue
    .line 12
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b;->c:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput p1, p0, Lcom/viber/voip/contacts/c/f/b;->c:I

    return p1
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b;
    .locals 1
    .parameter

    .prologue
    .line 21
    sget-object v0, Lcom/viber/voip/contacts/c/f/b;->a:Lcom/viber/voip/contacts/c/f/b;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/viber/voip/contacts/c/f/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/b;->a:Lcom/viber/voip/contacts/c/f/b;

    .line 24
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/b;->a:Lcom/viber/voip/contacts/c/f/b;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/b;->b(Ljava/util/Set;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/g;

    .line 43
    iget v2, p0, Lcom/viber/voip/contacts/c/f/b;->c:I

    invoke-interface {v0, v2, p1}, Lcom/viber/voip/contacts/c/d/g;->a(ILjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 45
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private c(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b;->b:Lcom/viber/voip/contacts/c/f/b/u;

    new-instance v1, Lcom/viber/voip/contacts/c/f/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/f/c;-><init>(Lcom/viber/voip/contacts/c/f/b;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/contacts/c/f/b/ab;)V

    .line 66
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b;->c(Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/contacts/c/d/g;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b;->c:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/contacts/c/d/g;->a(ILjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/b;->c(Ljava/util/Set;)V

    .line 49
    return-void
.end method

.method public declared-synchronized b(Lcom/viber/voip/contacts/c/d/g;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

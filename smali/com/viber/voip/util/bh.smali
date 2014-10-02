.class Lcom/viber/voip/util/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bg;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private d:J

.field private final e:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bg;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 141
    iput-object p1, p0, Lcom/viber/voip/util/bh;->a:Lcom/viber/voip/util/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bh;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 142
    if-nez p3, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An expiring object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p2, p0, Lcom/viber/voip/util/bh;->b:Ljava/lang/Object;

    .line 147
    iput-object p3, p0, Lcom/viber/voip/util/bh;->c:Ljava/lang/Object;

    .line 148
    iput-wide p4, p0, Lcom/viber/voip/util/bh;->d:J

    .line 149
    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/util/bh;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-wide v0, p0, Lcom/viber/voip/util/bh;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v2, p0, Lcom/viber/voip/util/bh;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/util/bh;->e:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/util/bh;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/util/bh;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/viber/voip/util/bh;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/util/bh;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

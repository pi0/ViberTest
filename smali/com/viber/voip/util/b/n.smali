.class Lcom/viber/voip/util/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b/m;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    invoke-static {v0}, Lcom/viber/voip/util/b/m;->a(Lcom/viber/voip/util/b/m;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    monitor-exit v1

    .line 284
    :goto_0
    return-object v3

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    invoke-static {v0}, Lcom/viber/voip/util/b/m;->b(Lcom/viber/voip/util/b/m;)V

    .line 279
    iget-object v0, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    invoke-static {v0}, Lcom/viber/voip/util/b/m;->c(Lcom/viber/voip/util/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    invoke-static {v0}, Lcom/viber/voip/util/b/m;->d(Lcom/viber/voip/util/b/m;)V

    .line 281
    iget-object v0, p0, Lcom/viber/voip/util/b/n;->a:Lcom/viber/voip/util/b/m;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/util/b/m;->a(Lcom/viber/voip/util/b/m;I)I

    .line 283
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/viber/voip/util/b/n;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

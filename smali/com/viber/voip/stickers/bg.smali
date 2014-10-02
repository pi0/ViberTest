.class Lcom/viber/voip/stickers/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/bf;

.field private volatile b:Z

.field private c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:[I

.field private e:Lcom/viber/voip/stickers/bj;


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/bf;Ljava/lang/Iterable;Lcom/viber/voip/stickers/bj;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;",
            "Lcom/viber/voip/stickers/bj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/viber/voip/stickers/bg;->c:Ljava/lang/Iterable;

    .line 109
    iput-object p3, p0, Lcom/viber/voip/stickers/bg;->e:Lcom/viber/voip/stickers/bj;

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/bf;[ILcom/viber/voip/stickers/bj;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/viber/voip/stickers/bg;->d:[I

    .line 114
    iput-object p3, p0, Lcom/viber/voip/stickers/bg;->e:Lcom/viber/voip/stickers/bj;

    .line 115
    return-void
.end method

.method private a(Lcom/viber/voip/stickers/c/a;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v0}, Lcom/viber/voip/stickers/bf;->b(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/bi;

    move-result-object v2

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v0}, Lcom/viber/voip/stickers/bf;->b(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/bi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/stickers/bi;->a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    monitor-exit v2

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v0}, Lcom/viber/voip/stickers/bf;->c(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sget-object v3, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v1}, Lcom/viber/voip/stickers/bf;->b(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/bi;

    move-result-object v1

    monitor-enter v1

    .line 170
    :try_start_1
    iget-object v2, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v2}, Lcom/viber/voip/stickers/bf;->b(Lcom/viber/voip/stickers/bf;)Lcom/viber/voip/stickers/bi;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/viber/voip/stickers/bi;->a(Lcom/viber/voip/stickers/c/a;Landroid/graphics/Bitmap;)V

    .line 171
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/stickers/bg;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/stickers/bg;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/stickers/bg;)Lcom/viber/voip/stickers/bj;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->e:Lcom/viber/voip/stickers/bj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/stickers/bg;->b:Z

    .line 177
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 123
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->c:Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 125
    iget-boolean v4, p0, Lcom/viber/voip/stickers/bg;->b:Z

    if-eqz v4, :cond_2

    .line 146
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->e:Lcom/viber/voip/stickers/bj;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v0}, Lcom/viber/voip/stickers/bf;->a(Lcom/viber/voip/stickers/bf;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/viber/voip/stickers/bh;

    invoke-direct {v3, p0}, Lcom/viber/voip/stickers/bh;-><init>(Lcom/viber/voip/stickers/bg;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->a:Lcom/viber/voip/stickers/bf;

    invoke-static {v0, p0}, Lcom/viber/voip/stickers/bf;->a(Lcom/viber/voip/stickers/bf;Lcom/viber/voip/stickers/bg;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 158
    return-void

    .line 128
    :cond_2
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/bg;->a(Lcom/viber/voip/stickers/c/a;)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/stickers/bg;->d:[I

    if-eqz v0, :cond_0

    .line 131
    iget-object v3, p0, Lcom/viber/voip/stickers/bg;->d:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 132
    if-gtz v5, :cond_5

    .line 131
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 136
    :cond_5
    if-lez v5, :cond_6

    .line 137
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/viber/voip/stickers/bg;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 140
    :cond_6
    iget-boolean v5, p0, Lcom/viber/voip/stickers/bg;->b:Z

    if-eqz v5, :cond_4

    goto :goto_1
.end method

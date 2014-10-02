.class Lcom/viber/voip/stickers/b/j;
.super Lcom/viber/voip/stickers/b/e;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/viber/voip/stickers/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/h;Lcom/viber/voip/stickers/c/e;Lcom/viber/voip/stickers/d/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/viber/voip/stickers/b/j;->b:Lcom/viber/voip/stickers/b/h;

    invoke-direct {p0, p2, p3}, Lcom/viber/voip/stickers/b/e;-><init>(Lcom/viber/voip/stickers/c/e;Lcom/viber/voip/stickers/d/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v1, p0, Lcom/viber/voip/stickers/b/j;->b:Lcom/viber/voip/stickers/b/h;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/j;->b:Lcom/viber/voip/stickers/b/h;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->a(Lcom/viber/voip/stickers/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/stickers/b/j;->b:Lcom/viber/voip/stickers/b/h;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/viber/voip/stickers/b/h;->a(Lcom/viber/voip/stickers/b/h;I)I

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v1, p0, Lcom/viber/voip/stickers/b/j;->b:Lcom/viber/voip/stickers/b/h;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/j;->b:Lcom/viber/voip/stickers/b/h;

    invoke-static {v0, p1}, Lcom/viber/voip/stickers/b/h;->a(Lcom/viber/voip/stickers/b/h;I)I

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

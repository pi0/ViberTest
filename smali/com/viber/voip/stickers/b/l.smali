.class Lcom/viber/voip/stickers/b/l;
.super Lcom/viber/voip/stickers/b/o;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/viber/voip/stickers/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/h;Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/d/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/viber/voip/stickers/b/l;->b:Lcom/viber/voip/stickers/b/h;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/viber/voip/stickers/b/o;-><init>(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/d/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 161
    iget-object v1, p0, Lcom/viber/voip/stickers/b/l;->b:Lcom/viber/voip/stickers/b/h;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/l;->b:Lcom/viber/voip/stickers/b/h;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->d(Lcom/viber/voip/stickers/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

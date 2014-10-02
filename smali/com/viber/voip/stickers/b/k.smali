.class Lcom/viber/voip/stickers/b/k;
.super Lcom/viber/voip/stickers/b/g;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/stickers/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/h;IZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/stickers/b/k;->b:Lcom/viber/voip/stickers/b/h;

    iput p4, p0, Lcom/viber/voip/stickers/b/k;->a:I

    invoke-direct {p0, p2, p3}, Lcom/viber/voip/stickers/b/g;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 138
    iget-object v1, p0, Lcom/viber/voip/stickers/b/k;->b:Lcom/viber/voip/stickers/b/h;

    monitor-enter v1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b/k;->b:Lcom/viber/voip/stickers/b/h;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->b(Lcom/viber/voip/stickers/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/viber/voip/stickers/b/k;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/stickers/b/k;->b:Lcom/viber/voip/stickers/b/h;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->c(Lcom/viber/voip/stickers/b/h;)Lcom/viber/voip/stickers/r;

    move-result-object v0

    iget v2, p0, Lcom/viber/voip/stickers/b/k;->a:I

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/r;->a(I)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/stickers/b/k;->b:Lcom/viber/voip/stickers/b/h;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->c(Lcom/viber/voip/stickers/b/h;)Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->c()V

    .line 144
    :cond_0
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

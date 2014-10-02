.class Lcom/viber/voip/backgrounds/b/c;
.super Lcom/viber/voip/backgrounds/b/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/a;Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/c;->a:Lcom/viber/voip/backgrounds/b/a;

    invoke-direct {p0, p2, p3, p4}, Lcom/viber/voip/backgrounds/b/g;-><init>(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/c;->a:Lcom/viber/voip/backgrounds/b/a;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/c;->a:Lcom/viber/voip/backgrounds/b/a;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/a;->a(Lcom/viber/voip/backgrounds/b/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/viber/voip/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/viber/voip/c/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/c/b;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/voip/c/c;->b:Lcom/viber/voip/c/b;

    iput-object p2, p0, Lcom/viber/voip/c/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/c/c;->b:Lcom/viber/voip/c/b;

    iget-object v1, p0, Lcom/viber/voip/c/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/b;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/viber/voip/c/c;->b:Lcom/viber/voip/c/b;

    invoke-static {v0}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/c/c;->b:Lcom/viber/voip/c/b;

    invoke-static {v0}, Lcom/viber/voip/c/b;->b(Lcom/viber/voip/c/b;)V

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/c/c;->b:Lcom/viber/voip/c/b;

    invoke-static {v1}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 137
    iget-object v1, p0, Lcom/viber/voip/c/c;->b:Lcom/viber/voip/c/b;

    invoke-static {v1}, Lcom/viber/voip/c/b;->b(Lcom/viber/voip/c/b;)V

    throw v0
.end method

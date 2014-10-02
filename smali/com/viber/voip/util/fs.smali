.class Lcom/viber/voip/util/fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/fr;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/fr;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v0}, Lcom/viber/voip/util/fr;->a(Lcom/viber/voip/util/fr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v0}, Lcom/viber/voip/util/fr;->b(Lcom/viber/voip/util/fr;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    iget-object v0, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v0}, Lcom/viber/voip/util/fr;->d(Lcom/viber/voip/util/fr;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v1}, Lcom/viber/voip/util/fr;->c(Lcom/viber/voip/util/fr;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object v0, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v0}, Lcom/viber/voip/util/fr;->d(Lcom/viber/voip/util/fr;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v1}, Lcom/viber/voip/util/fr;->c(Lcom/viber/voip/util/fr;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/util/fs;->a:Lcom/viber/voip/util/fr;

    invoke-static {v2}, Lcom/viber/voip/util/fr;->e(Lcom/viber/voip/util/fr;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_0
    return-void
.end method

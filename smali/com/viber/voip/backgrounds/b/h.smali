.class Lcom/viber/voip/backgrounds/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/backgrounds/m;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/b/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->b(Lcom/viber/voip/backgrounds/b/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/b/j;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/backgrounds/b/j;-><init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->b(Lcom/viber/voip/backgrounds/b/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/b/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/backgrounds/b/k;-><init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->b(Lcom/viber/voip/backgrounds/b/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/b/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/backgrounds/b/i;-><init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/q;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->b(Lcom/viber/voip/backgrounds/b/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/b/m;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/backgrounds/b/m;-><init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/h;->a:Lcom/viber/voip/backgrounds/b/g;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/g;->b(Lcom/viber/voip/backgrounds/b/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/b/l;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/backgrounds/b/l;-><init>(Lcom/viber/voip/backgrounds/b/h;Lcom/viber/voip/backgrounds/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

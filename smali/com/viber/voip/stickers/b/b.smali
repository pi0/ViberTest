.class Lcom/viber/voip/stickers/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/d/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->b(Lcom/viber/voip/stickers/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/stickers/b/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/stickers/b/c;-><init>(Lcom/viber/voip/stickers/b/b;Lcom/viber/voip/stickers/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/d;)V

    .line 52
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/d;I)V

    .line 62
    return-void
.end method

.method public a(ZLcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/stickers/d/b;->a(ZLcom/viber/voip/stickers/c/d;)V

    .line 67
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/stickers/d/b;->b(Lcom/viber/voip/stickers/c/d;)V

    .line 57
    return-void
.end method

.method public c(Lcom/viber/voip/stickers/c/d;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->b(Lcom/viber/voip/stickers/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/stickers/b/d;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/stickers/b/d;-><init>(Lcom/viber/voip/stickers/b/b;Lcom/viber/voip/stickers/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

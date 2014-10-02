.class Lcom/viber/voip/stickers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/k;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v0}, Lcom/viber/voip/stickers/k;->a(Lcom/viber/voip/stickers/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    iget-object v0, v0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    invoke-static {v0}, Lcom/viber/voip/stickers/b;->b(Lcom/viber/voip/stickers/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v0}, Lcom/viber/voip/stickers/k;->b(Lcom/viber/voip/stickers/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    iget-object v0, v0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    iget-object v0, v0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    iget-object v1, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v1}, Lcom/viber/voip/stickers/k;->c(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v2}, Lcom/viber/voip/stickers/k;->d(Lcom/viber/voip/stickers/k;)Z

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v3}, Lcom/viber/voip/stickers/k;->e(Lcom/viber/voip/stickers/k;)Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v4}, Lcom/viber/voip/stickers/k;->f(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/ba;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v5}, Lcom/viber/voip/stickers/k;->g(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/h;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/g;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/h;)V

    .line 300
    iget-object v0, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v0}, Lcom/viber/voip/stickers/k;->h(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/o;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v1}, Lcom/viber/voip/stickers/k;->c(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    iget-object v3, p0, Lcom/viber/voip/stickers/l;->a:Lcom/viber/voip/stickers/k;

    invoke-static {v3}, Lcom/viber/voip/stickers/k;->g(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/h;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/stickers/o;->a(Lcom/viber/voip/stickers/c/a;Ljava/lang/Object;Lcom/viber/voip/stickers/h;)V

    goto :goto_0
.end method

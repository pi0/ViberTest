.class Lcom/viber/voip/messages/conversation/ui/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/ad;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/ad;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;Lcom/viber/voip/messages/ui/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/bj;->a:Lcom/viber/voip/messages/ui/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bo;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bo;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bq;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bq;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 349
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->d(Lcom/viber/voip/messages/conversation/ui/ba;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bp;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bp;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bl;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bl;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->d(Lcom/viber/voip/messages/conversation/ui/ba;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bm;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bm;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bn;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bn;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    invoke-virtual {v1}, Lcom/viber/voip/a/ac;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    const v1, 0x7f070201

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a(I)V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->a:Lcom/viber/voip/messages/ui/ad;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->g()V

    .line 278
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bk;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bk;-><init>(Lcom/viber/voip/messages/conversation/ui/bj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

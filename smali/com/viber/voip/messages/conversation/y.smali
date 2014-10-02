.class Lcom/viber/voip/messages/conversation/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/w;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/provider/b;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ad;->a()V

    .line 63
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->c(Lcom/viber/voip/messages/conversation/w;)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->d(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/d;->e(I)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v1

    invoke-interface {v1, v0, p2, v2}, Lcom/viber/voip/messages/conversation/ad;->a(Lcom/viber/voip/messages/conversation/h;ZZ)V

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 72
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/y;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/w;->e(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/controller/c/b;->b(J)V

    .line 74
    :cond_1
    return-void
.end method

.class Lcom/viber/voip/messages/conversation/x;
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
    .line 44
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/provider/b;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/w;->b(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/v;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ad;->a(Lcom/viber/voip/messages/conversation/v;)V

    .line 49
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->c(Lcom/viber/voip/messages/conversation/w;)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/w;->b(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/v;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/x;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/w;->b(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/v;->q()I

    move-result v2

    invoke-interface {v0, v1, p2, v2}, Lcom/viber/voip/messages/conversation/ad;->a(Lcom/viber/voip/messages/conversation/v;ZI)V

    .line 55
    :cond_0
    return-void
.end method

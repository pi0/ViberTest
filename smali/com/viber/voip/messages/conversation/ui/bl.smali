.class Lcom/viber/voip/messages/conversation/ui/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bl;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bl;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/m;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bl;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bl;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/bj;->a:Lcom/viber/voip/messages/ui/ad;

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/ad;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Landroid/net/Uri;)Landroid/net/Uri;

    .line 288
    return-void
.end method

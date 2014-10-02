.class Lcom/viber/voip/messages/conversation/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 402
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/g;->c(Lcom/viber/voip/messages/conversation/a/g;)Lcom/viber/voip/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->j()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 403
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/g;->d(Lcom/viber/voip/messages/conversation/a/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/j;->a(Lcom/viber/voip/messages/conversation/a/j;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gv;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/g;->d(Lcom/viber/voip/messages/conversation/a/g;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 405
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/g;->d(Lcom/viber/voip/messages/conversation/a/g;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/l;->a:Lcom/viber/voip/messages/conversation/a/j;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/g;->d(Lcom/viber/voip/messages/conversation/a/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

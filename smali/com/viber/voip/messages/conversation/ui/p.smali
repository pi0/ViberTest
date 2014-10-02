.class Lcom/viber/voip/messages/conversation/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/o;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/p;->b:Lcom/viber/voip/messages/conversation/ui/o;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 444
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/p;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 445
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/p;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "dialog_context"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/p;->b:Lcom/viber/voip/messages/conversation/ui/o;

    iget-object v2, v2, Lcom/viber/voip/messages/conversation/ui/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/p;->b:Lcom/viber/voip/messages/conversation/ui/o;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/p;->b:Lcom/viber/voip/messages/conversation/ui/o;

    iget-object v4, v2, Lcom/viber/voip/messages/conversation/ui/o;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-wide v2, v0

    move-wide v6, v0

    move-wide v8, v0

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/p;->b:Lcom/viber/voip/messages/conversation/ui/o;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

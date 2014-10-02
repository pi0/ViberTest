.class Lcom/viber/voip/messages/conversation/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/k;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/l;->b:Lcom/viber/voip/messages/conversation/ui/k;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/l;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/l;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/viber/voip/util/gn;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/l;->a:Landroid/app/Activity;

    const v2, 0x7f0c03d7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v1, "fromConversation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/l;->b:Lcom/viber/voip/messages/conversation/ui/k;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/k;->a(Lcom/viber/voip/messages/conversation/ui/k;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.class Lcom/viber/voip/messages/conversation/ui/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ch;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v1, "thread_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ch;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    const-string/jumbo v1, "extra_group_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ch;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 512
    const-string/jumbo v1, "extra_group_name"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ch;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v1, "participants_count"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ch;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ch;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 515
    return-void
.end method

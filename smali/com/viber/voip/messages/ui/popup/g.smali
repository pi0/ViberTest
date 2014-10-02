.class Lcom/viber/voip/messages/ui/popup/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/ui/popup/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/f;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/popup/g;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 512
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendHandleGetLastOnline lastOnlineEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v4, v4, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/g;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSystemConversation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->j:Landroid/widget/Button;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->p(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    new-instance v1, Lcom/viber/voip/messages/conversation/as;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v5, v5, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/messages/conversation/as;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/av;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/conversation/as;)Lcom/viber/voip/messages/conversation/as;

    .line 530
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/g;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getMessageDraft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->q(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 532
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/g;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/as;->a(J)V

    .line 533
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->e()V

    .line 534
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->v()V

    .line 535
    return-void

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v2

    iget-object v3, v2, Lcom/viber/voip/messages/ui/popup/n;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->p(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 524
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/g;->b:Lcom/viber/voip/messages/ui/popup/f;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->p(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move v2, v0

    .line 523
    goto :goto_1

    :cond_4
    move v0, v1

    .line 524
    goto :goto_2
.end method

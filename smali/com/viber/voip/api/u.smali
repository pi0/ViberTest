.class Lcom/viber/voip/api/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/x;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/viber/voip/api/y;

.field final synthetic d:Lcom/viber/voip/api/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/t;Ljava/lang/String;Landroid/os/Bundle;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/viber/voip/api/u;->d:Lcom/viber/voip/api/t;

    iput-object p2, p0, Lcom/viber/voip/api/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/api/u;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/viber/voip/api/u;->c:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const-wide/16 v0, 0x0

    .line 588
    const/4 v2, 0x0

    .line 589
    if-nez p1, :cond_2

    .line 590
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v2

    .line 591
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/viber/voip/api/u;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 592
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v3

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v6

    iget-object v2, p0, Lcom/viber/voip/api/u;->a:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v2}, Lcom/viber/voip/messages/controller/x;->a(JLjava/lang/String;)V

    .line 594
    :cond_0
    const-string/jumbo v10, ""

    move-wide v2, v0

    move-object v4, p2

    move-wide v6, v0

    move-wide v8, v0

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 595
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    const-string/jumbo v1, "com.viber.voip.action.PRE_CONVERSATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string/jumbo v1, "send_1to1"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    const-string/jumbo v1, "go_up"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    iget-object v1, p0, Lcom/viber/voip/api/u;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/api/u;->c:Lcom/viber/voip/api/y;

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v1, v5, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 602
    return-void

    :cond_1
    move v5, v11

    .line 601
    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

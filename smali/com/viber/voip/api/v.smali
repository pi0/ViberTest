.class Lcom/viber/voip/api/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/w;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/viber/voip/api/y;

.field final synthetic e:Lcom/viber/voip/api/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/t;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/viber/voip/api/v;->e:Lcom/viber/voip/api/t;

    iput-object p2, p0, Lcom/viber/voip/api/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/api/v;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/api/v;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/viber/voip/api/v;->d:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 612
    if-eqz p1, :cond_3

    .line 615
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/api/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_5

    .line 617
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_4

    .line 619
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    .line 621
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/api/v;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 625
    :cond_0
    :goto_1
    invoke-static {p1, v1}, Lcom/viber/voip/messages/j;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;Z)Landroid/content/Intent;

    move-result-object v3

    .line 626
    const-string/jumbo v4, "go_up"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/viber/voip/api/v;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "draft"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/viber/voip/api/v;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "open_custom_menu"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/api/v;->d:Lcom/viber/voip/api/y;

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 639
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 619
    goto :goto_0

    .line 636
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.PUBLIC_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/viber/voip/api/v;->d:Lcom/viber/voip/api/y;

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

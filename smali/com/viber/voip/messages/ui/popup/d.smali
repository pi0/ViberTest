.class Lcom/viber/voip/messages/ui/popup/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/popup/view/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->h(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Landroid/support/v4/view/ViewPager;Landroid/app/Activity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/a/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->j()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/messages/ui/popup/a/h;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    .line 238
    new-instance v2, Lcom/viber/voip/messages/controller/b/b;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->G()I

    move-result v0

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    const-string/jumbo v0, "sticker"

    int-to-long v3, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/controller/c/c;->a(Landroid/content/Context;)Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/d;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    .line 246
    return-void
.end method

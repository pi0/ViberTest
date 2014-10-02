.class Lcom/viber/voip/messages/conversation/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hs;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->e(Lcom/viber/voip/messages/conversation/ui/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(Landroid/view/View;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 161
    :goto_1
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/viber/voip/contacts/c/d/b;->c(Ljava/lang/String;)Lcom/viber/voip/contacts/c/d/l;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/c/d/l;->a:Lcom/viber/voip/contacts/c/d/l;

    if-ne v1, v2, :cond_2

    .line 149
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.DIALER"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    goto :goto_1

    .line 153
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    const-string/jumbo v0, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/t;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

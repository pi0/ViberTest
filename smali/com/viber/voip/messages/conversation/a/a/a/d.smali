.class Lcom/viber/voip/messages/conversation/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/d;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/a/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/d;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 11
    .parameter

    .prologue
    .line 311
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ag()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v6

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ah()J

    move-result-wide v8

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->Y()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IIJLjava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/j;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;Z)Landroid/content/Intent;

    move-result-object v1

    .line 314
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    const-string/jumbo v2, "back_intent"

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/d;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a/b;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/d;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a/b;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/d;->a:Lcom/viber/voip/messages/conversation/a/a/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/a/a/b;->a(Lcom/viber/voip/messages/conversation/a/a/a/b;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

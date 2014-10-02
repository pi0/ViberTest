.class Lcom/viber/voip/messages/conversation/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/fb/af;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/n;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error validating access token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/n;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/n;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/n;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->b(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/n;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method

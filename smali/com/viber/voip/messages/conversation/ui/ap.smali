.class Lcom/viber/voip/messages/conversation/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ap;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ap;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->k()V

    .line 1397
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ap;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ap;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ap;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v2, v2, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ap;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZLjava/lang/String;)V

    .line 1398
    return-void
.end method

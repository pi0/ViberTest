.class Lcom/viber/voip/messages/conversation/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/am;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/am;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/an;->a:Lcom/viber/voip/messages/conversation/ui/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/an;->a:Lcom/viber/voip/messages/conversation/ui/am;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/am;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/an;->a:Lcom/viber/voip/messages/conversation/ui/am;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/am;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/an;->a:Lcom/viber/voip/messages/conversation/ui/am;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/am;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Z)V

    .line 1195
    :cond_0
    return-void
.end method

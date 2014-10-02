.class Lcom/viber/voip/messages/conversation/ui/aj;
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
    .line 864
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/aj;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aj;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/aj;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/a/o;->b(J)V

    .line 868
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aj;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 869
    return-void
.end method

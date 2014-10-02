.class Lcom/viber/voip/messages/conversation/publicgroup/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/conversation/publicgroup/ah;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/ah;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->c:Lcom/viber/voip/messages/conversation/publicgroup/ah;

    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->a:J

    iput-boolean p4, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->c:Lcom/viber/voip/messages/conversation/publicgroup/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->c:Lcom/viber/voip/messages/conversation/publicgroup/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Z)Z

    .line 525
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->b:Z

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->c:Lcom/viber/voip/messages/conversation/publicgroup/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->c:Lcom/viber/voip/messages/conversation/publicgroup/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->h(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->i()V

    .line 529
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ai;->c:Lcom/viber/voip/messages/conversation/publicgroup/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->i(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    goto :goto_0
.end method

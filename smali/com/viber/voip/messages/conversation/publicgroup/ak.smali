.class Lcom/viber/voip/messages/conversation/publicgroup/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ak;->a:Lcom/viber/voip/messages/conversation/publicgroup/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 547
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ak;->a:Lcom/viber/voip/messages/conversation/publicgroup/aj;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/aj;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ak;->a:Lcom/viber/voip/messages/conversation/publicgroup/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/aj;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    .line 550
    :cond_0
    return-void
.end method

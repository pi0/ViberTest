.class Lcom/viber/voip/messages/conversation/publicgroup/ah;
.super Lcom/viber/voip/messages/controller/di;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {p0}, Lcom/viber/voip/messages/controller/di;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ah;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/ai;

    invoke-direct {v1, p0, p2, p3, p5}, Lcom/viber/voip/messages/conversation/publicgroup/ai;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/ah;JZ)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method

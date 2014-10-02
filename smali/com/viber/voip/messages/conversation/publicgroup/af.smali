.class Lcom/viber/voip/messages/conversation/publicgroup/af;
.super Lcom/viber/voip/messages/controller/di;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {p0}, Lcom/viber/voip/messages/controller/di;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->c(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 357
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 359
    :cond_1
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->c(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/af;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 365
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 368
    :cond_1
    return-void
.end method

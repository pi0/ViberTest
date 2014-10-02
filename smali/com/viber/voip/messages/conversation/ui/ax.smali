.class Lcom/viber/voip/messages/conversation/ui/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ax;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 689
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "501b"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 691
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ax;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ax;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ax;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->i()V

    .line 694
    :cond_0
    return-void
.end method

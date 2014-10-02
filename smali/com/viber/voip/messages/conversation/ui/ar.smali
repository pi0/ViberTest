.class Lcom/viber/voip/messages/conversation/ui/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ar;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ar;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ar;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a/k;

    .line 349
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ar;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/cq;->a(J)Z

    goto :goto_0
.end method

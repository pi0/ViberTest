.class Lcom/viber/voip/messages/conversation/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Landroid/view/View;)Z

    move-result v0

    .line 365
    :goto_0
    return v0

    .line 360
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/viber/voip/messages/extras/map/BalloonLayout;

    if-nez v0, :cond_3

    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/as;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

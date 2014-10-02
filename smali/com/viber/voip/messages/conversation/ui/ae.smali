.class Lcom/viber/voip/messages/conversation/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ae;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ae;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->g()V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ae;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a()V

    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ae;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ae;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/a/o;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

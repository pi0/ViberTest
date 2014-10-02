.class Lcom/viber/voip/messages/ui/chathead/ao;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/b;

.field final synthetic c:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;ZLcom/viber/voip/messages/ui/chathead/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ao;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iput-boolean p2, p0, Lcom/viber/voip/messages/ui/chathead/ao;->a:Z

    iput-object p3, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 701
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->a:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 703
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;)V

    .line 710
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    .line 711
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 712
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 706
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getUnreadMessagesCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ao;->b:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getUnreadMessagesCount()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    goto :goto_0
.end method

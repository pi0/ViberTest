.class Lcom/viber/voip/messages/ui/chathead/v;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/a;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/a/a;

.field final synthetic c:Lcom/viber/voip/messages/ui/chathead/b;

.field final synthetic d:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;Lcom/viber/voip/messages/ui/chathead/a/a;Lcom/viber/voip/messages/ui/chathead/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/v;->d:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/v;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    iput-object p3, p0, Lcom/viber/voip/messages/ui/chathead/v;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    iput-object p4, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1835
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setBorderVisible(Z)V

    .line 1836
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/v;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-eq v0, v1, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setBorderVisible(Z)V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/ax;

    if-nez v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 1841
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->a()V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1844
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->c(JZ)V

    .line 1845
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/v;->c:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->a(JZ)V

    .line 1847
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/v;->d:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/v;->d:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->aa(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/util/fz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/util/fz;->g()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;I)V

    .line 1848
    return-void
.end method

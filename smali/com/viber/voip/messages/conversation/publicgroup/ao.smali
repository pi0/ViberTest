.class Lcom/viber/voip/messages/conversation/publicgroup/ao;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/s;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

.field private b:Lcom/viber/jni/controller/PhoneController;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->c:I

    .line 624
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->b:Lcom/viber/jni/controller/PhoneController;

    .line 625
    return-void
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 659
    div-int/lit8 v0, p1, 0x32

    .line 660
    mul-int/lit8 v0, v0, 0x32

    .line 661
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 630
    return-void
.end method

.method public a(III)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 635
    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->l(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->e()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    .line 638
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->o(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->p(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->i()V

    .line 642
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Z)Z

    goto :goto_0

    .line 643
    :cond_2
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->c:I

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->e()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/o;->a(I)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->af()I

    move-result v0

    .line 645
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/ao;->b(I)I

    move-result v0

    .line 646
    if-lez v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->b:Lcom/viber/jni/controller/PhoneController;

    invoke-interface {v1}, Lcom/viber/jni/controller/PhoneController;->generateSequence()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->c:I

    .line 649
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Z)Z

    .line 650
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->c:I

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v3

    iget-wide v3, v3, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/viber/voip/messages/controller/GroupController;->a(IJI)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    return-void
.end method

.method public onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->c:I

    if-ne p1, v0, :cond_0

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ao;->c:I

    .line 677
    :cond_0
    return-void
.end method

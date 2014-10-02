.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;
.super Lcom/viber/voip/messages/conversation/publicgroup/bf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;->a()V

    .line 41
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;Lcom/viber/voip/messages/conversation/h;Z)V

    .line 43
    :cond_1
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupsLeftMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    return-void
.end method

.class public Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;
.super Lcom/viber/voip/messages/ui/MessagesFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-super {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p0}, Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;->a(Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;)V

    .line 36
    invoke-static {p0, p1, p2}, Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;->a(Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;Lcom/viber/voip/messages/conversation/h;Z)V

    .line 38
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesLeftMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return-void
.end method

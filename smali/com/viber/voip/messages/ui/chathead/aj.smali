.class Lcom/viber/voip/messages/ui/chathead/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/ah;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 2727
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2731
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2732
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2733
    const-string/jumbo v0, "onPhoneStateChanged: default,!mIsCollapsedMode"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 2734
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2735
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    .line 2742
    :goto_0
    return-void

    .line 2737
    :cond_0
    const-string/jumbo v0, "onPhoneStateChanged: default,mIsCollapsedMode"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 2738
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2739
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->o(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2740
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aj;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    goto :goto_0
.end method

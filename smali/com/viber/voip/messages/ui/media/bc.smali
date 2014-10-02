.class Lcom/viber/voip/messages/ui/media/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 998
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/bb;->a(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1001
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/bb;->b(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1010
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/bb;->c(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(ILandroid/view/animation/Animation;)V

    .line 1012
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bc;->a:Lcom/viber/voip/messages/ui/media/bb;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bb;->b(I)V

    .line 1017
    :cond_2
    return-void
.end method

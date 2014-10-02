.class Lcom/viber/voip/messages/ui/media/bd;
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
    .line 1020
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1024
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/bb;->d(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1026
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/bb;->e(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bd;->a:Lcom/viber/voip/messages/ui/media/bb;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/bb;->f(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(ILandroid/view/animation/Animation;)V

    .line 1039
    :cond_2
    return-void
.end method

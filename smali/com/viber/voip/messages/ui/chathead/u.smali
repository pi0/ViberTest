.class Lcom/viber/voip/messages/ui/chathead/u;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/u;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 1785
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/u;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1786
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    .line 1787
    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 1788
    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 1790
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    .line 1791
    return-void
.end method

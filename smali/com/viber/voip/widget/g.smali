.class Lcom/viber/voip/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/MessageBar;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/MessageBar;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/viber/voip/widget/g;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/widget/g;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/MessageBar$Message;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/viber/voip/widget/g;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v1, v0}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar;Lcom/viber/voip/widget/MessageBar$Message;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/g;->a:Lcom/viber/voip/widget/MessageBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/MessageBar;->b(Lcom/viber/voip/widget/MessageBar;Lcom/viber/voip/widget/MessageBar$Message;)Lcom/viber/voip/widget/MessageBar$Message;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/widget/g;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->b(Lcom/viber/voip/widget/MessageBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/widget/g;->a:Lcom/viber/voip/widget/MessageBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/MessageBar;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method
